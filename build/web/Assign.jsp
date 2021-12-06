<%-- 
    Document   : Assign
    Created on : 23 Sep, 2017, 11:03:02 AM
    Author     : sameer
--%>

<%@page import="com.pict.dao.LoginDao"%>
<%@page import="com.pict.dao.GetAssignment"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Assignments</title>
         <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.4.2/jquery.min.js"></script>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>

        <link rel="stylesheet" href="//code.jquery.com/ui/1.11.4/themes/smoothness/jquery-ui.css">
        <script src="//code.jquery.com/jquery-1.10.2.js"></script>
        <script src="//code.jquery.com/ui/1.11.4/jquery-ui.js"></script>
        <script src="http://ajax.googleapis.com/ajax/libs/angularjs/1.3.14/angular.min.js"></script>
        <script src="//code.jquery.com/ui/1.11.2/jquery-ui.js"></script>
        <link rel="stylesheet" href="//code.jquery.com/ui/1.11.2/themes/start/jquery-ui.css">

    </head>
    <body>
        <script>
            function create() {
                document.getElementById("AssignNumber").style.display = "block";
            }
            function assigncreate() {
                document.getElementById("creat").style.display = "none";

            }
                $(function () {
                $(".datepicker").datepicker({dateFormat: 'dd-mm-yy'});
            });



        </script>
        <%
             String username = (String) session.getAttribute("username");
            // String grpname = (String) session.getAttribute("grpname");
            String grpname = request.getParameter("grpname");
        
            int assignCount=0;
            LoginDao dao=new LoginDao();
            assignCount=dao.AssignCount(username, grpname);
            
           
            
        %>    

        </br>
        </br>
        
    <center>
        <br>
        <br>
        </br>

        <%
           
            
            System.out.println(username);
            System.out.println(grpname);

            GetAssignment ga = new GetAssignment();
            int num = ga.assignmentCount(username, grpname);
            System.out.println(num);
            String tableName[] = new String[num];
            ga.assignmentList(username, grpname, tableName);

            int i = 0;
        %><form action="ThirdPage.jsp" method="get"><%
                while (i < num) {
                    String[] parts = tableName[i].split("(?<=A)");
            %> 
             <button name="val" value="<%out.println(parts[1]);%> ">Assignment <%out.println(parts[1]);%></button>
            </br></br>
            <%
                    i++;
                }
            %>
            <input type="hidden" name="username" value="<%out.println(username);%>">

            <input type="hidden" name="grpname" value="<%out.println(grpname);%>">

        </form>
        </br>
        </br>
        </br>
        <div id="creat">
            <button onclick="create()"> Create Assignment</button>
        </div>
        <form action="AssignCreate" method="get">
            <div id="AssignNumber" style="display: none">
                Create Assignment Number ?
                <select onclick="assigncreate()" id="selectNumber" name="AssignNumber">
                    <%
                        for (i = 1; i < 11; i++) {
                    %>
                    <option value="<%out.println(i);%>" onclick="validate()">Assignment <%out.println(i);%></option>
                    <%

                        }

                    %>

                </select>
                <br>
                  Enter the Scheduled Date for Assignment <input class="datepicker" name="sdate">
                    
                    
                    
                <input type="hidden" name="username" value="<%out.println(username);%>">

                <input type="hidden" name="grpname" value="<%out.println(grpname);%>">
                <input type="submit" value="Create.">
            </div>
        </form>

    </center>
    <table>
    <th>
    <form action="TermWork.jsp" method="get" >
        <input type="hidden" name="grpname" value="<%=grpname%>">
        
        <input type="hidden" name="username" value="<%=username%>">
    <button >Calculate TermWork</button>
   
    </form>
    </th>
    <th >
    <form action="SubmissionTicket.jsp" method="get">
            <button style="position: absolute; top: 320px;right: 5px;">
                Generate Submission Ticket
            </button>
     <p style="position: absolute; top: 60px;right: 60px;">
            Total number of Assignments: <input type="text" name="acount" value=<%=assignCount%> </p>
     <input type="hidden" name="grpname" value="<%=grpname%>">
    
    </form>
    </th>


</table>
</body>
</html>
