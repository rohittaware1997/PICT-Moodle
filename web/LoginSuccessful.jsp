
<%@page import="java.lang.reflect.Method"%>
<%@page import="java.io.PrintWriter"%>
<%@page  import="com.pict.dao.MakeString"%>
<%@page  import="com.pict.dao.GetAssignment"%>
<%@page  import="com.pict.dao.LoginDao"%>

<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Welcome</title>

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <link rel="stylesheet" href="https://ajax.googleapis.com/ajax/libs/jqueryui/1.12.1/themes/smoothness/jquery-ui.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jqueryui/1.12.1/jquery-ui.min.js"></script>
    <script>

        function show1() {

            document.getElementById('box').style.display = 'block';
        }
        function show2() {
            document.getElementById('dropdown').style.display = 'block';
        }
        function getrollno() {
            document.getElementById('student').style.display = 'none';
            document.getElementById('getnum').style.display = 'block';
        }

    </script>

</head>

<body>
<center><br> Welcome ${username}<br>

    <%
        MakeString ms = new MakeString();
        String teacher;
        teacher = (String) session.getAttribute("username");

    %>

    <script>


        $(document).ready(function () {
            $("#ajaxcall").click(function (event) {
                var grpname = $("input[name=grpname]:checked").val();
                $.ajax({
                    type: "POST",
                    url: "AjaxAssignServlet",
                    data: "username=" + "JKK" + "&grpname=" + grpname,
                    async: false,
                    datatype: 'json',
                    success: function (msg) {
                        var data = JSON.parse(msg);
                        alert(data[name]);
                    }


                });
            });
            return false;
        });
    </script>


</center>
<%    response.setHeader("Cache-Control", "no-cache,no-store,must-revalidate");

    if (session.getAttribute("username") == null) {
        response.sendRedirect("Login.jsp");
    } else {
        int i = 0;
        int count = 0;
        String arr[];

        count = ms.getCount(teacher);
        arr = new String[count];
        arr = ms.makestring(teacher);
        i = 0;
%>

<table>
    <th> 
    <form id="myform" method ="get" action="Assign.jsp">
        <% while (i < count) {
                String temp = arr[i];
                out.println(temp);
        %>
        <input type="radio" name ="grpname"  value="<%=arr[i]%>">
        <br><br>
        <%
                    i++;
                }
            }
        %>
        <input type="submit" value="Get Assignments"  id='ajaxcall'>  
    </form>
</th>


<th id="student" style="position: absolute; top: 60px;right: 65px;" >
    <button onclick="getrollno()">Search Student By Roll Number</button>
    <br>
</th>

<th style="position: absolute; top: 60px;right: 65px;" >
<form id="getnum" action="StudentRecord.jsp" style="display: none">
    <input type="text" name="studRollNo" > <br>   
    <input type="submit" value="Get Record">
    <br>
</form>
</th>



</table>    



<br><br><br>

<h3>Unit Test</h3>
<%
    LoginDao dao = new LoginDao();
    int num=dao.showClass((String) session.getAttribute("username"));
    String classes[] = new String[num];
    dao.showClass((String) session.getAttribute("username"), classes);
    System.out.println("The Number of Subject is "+num);
%>
<form action="TestMarks.jsp" method="get">
    <%        for (int i = 0; i < num; i++) {
            String temp = classes[i];
            out.println(temp);
    %>
    <input type="radio" name ="subjectName"  value="<%=classes[i]%>">
    <br><br>
    <%
                i++;
            }
        
    %>

    <input type="submit" value="Enter Unit Test Marks"  >  
</form>













<form action="Logout" method="get">
    <input type="submit" value="Logout">
</form>
</body>
</html>