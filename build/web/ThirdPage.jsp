
<%@page import="com.pict.dao.GetStudent"%>
<%@page import="com.pict.dao.Records"%>
<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
    
    <head>
        
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Records..</title>
        <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.4.2/jquery.min.js"></script>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
        <link rel="stylesheet" href="//code.jquery.com/ui/1.11.4/themes/smoothness/jquery-ui.css">
        <script src="//code.jquery.com/jquery-1.10.2.js"></script>
        <script src="//code.jquery.com/ui/1.11.4/jquery-ui.js"></script>
        <script src="http://ajax.googleapis.com/ajax/libs/angularjs/1.3.14/angular.min.js"></script>
        <script src="//code.jquery.com/ui/1.11.2/jquery-ui.js"></script>
        <link rel="stylesheet" href="//code.jquery.com/ui/1.11.2/themes/start/jquery-ui.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.2.0/css/font-awesome.min.css">

        <style>

            input {
            background-color:transparent;
            border: 0px solid;
            }
            input:focus {
            outline:none;
            }
            
        </style>
        
        
    <script language="javascript">
        var str; 

        function f() {
        var dataTable = document.getElementById('data-table');
        var checkItAll = dataTable.querySelector('input[name="select_all"]');
        var inputs = dataTable.querySelectorAll('tr>td>input');
        inputs.forEach(function(input) {
        input.checked = true;
        });  
        }
  
        function uf() {
        var dataTable = document.getElementById('data-table');
        var checkItAll = dataTable.querySelector('input[name="select_all"]');
        var inputs = dataTable.querySelectorAll('tr>td>input');
        inputs.forEach(function(input) {
        input.checked = false;
        });  
        }
        
       
      
         
        $(function() {
        $( ".datepicker" ).datepicker({ dateFormat: 'dd-mm-yy' });
        });
  
           function set() {
        var text="";
        var dataTable = document.getElementById('data-table');
        var checkItAll = dataTable.querySelector('input[name="check"]');
        var inputs = dataTable.querySelectorAll('tr>td>input[name="check"]');
        inputs.forEach(function(input) {
        if(input.checked === true) text+="1";
        else text+="0";
        });

        var input = document.getElementById("set");
        input.value = text;
      //  window.alert(text);
        }
  
        

        $.fn.MessageBox = function() {
    //        alert("called");
             set();
            
        jQuery.fn.pop = [].pop;
        jQuery.fn.shift = [].shift;
        var $TABLE = $('#table');
        var $rows = $TABLE.find('tr:not(:hidden)');
        var headers = [];
        var data = [];
        $($rows.shift()).find('th:not(:empty)').each(function () {
        headers.push($(this).text());
        });
       
        $rows.each(function () {
        var $td = $(this).find('td');
        var h = {};
        headers.forEach(function (header, i) {
        h[header] = $td.eq(i).text();   
        });
    
        data.push(h);
         var ii= JSON.stringify(data);
     //   window.alert(ii);
       
   });
   
   
        
        var input;
        
        set();
        
        var Rollno = JSON.stringify(data, ["Roll No"]);
        input = document.getElementById("rollno");
        input.value = Rollno;
      //  window.alert("Roll no = " + Rollno);
        
   
        
        
        var GroupCode = JSON.stringify(data, ["GroupCode"]);
        input = document.getElementById("grpcode");
        input.value = GroupCode;     
       // window.alert("grpcode = " + GroupCode);
        
        
        var SubjectCode = JSON.stringify(data, ["SubjectCode"]);
        input = document.getElementById("subcode");
        input.value = SubjectCode;
     //   window.alert("subcode = " + SubjectCode);
        
        
        var Marks = JSON.stringify(data, ["Marks"]);
        input = document.getElementById("marks");
        input.value = Marks;
    //    window.alert("marks = " + Marks);  
        
        
       var ScheduledDate = $("#data-table").find('input[name="sch2"]').serializeArray();
       var c = JSON.stringify(ScheduledDate);
        input = document.getElementById("schstr");
        input.value = c;
     //  window.alert("sch = " + JSON.stringify(ScheduledDate));
       
       
       var SubmissionDate = $("#data-table").find('input[name="sub2"]').serializeArray();
       var c = JSON.stringify(SubmissionDate);
        input = document.getElementById("substr");
        input.value = c;
    //  alert("sub = " + JSON.stringify(SubmissionDate));
        
        
};

        </script>
    </head>
    
    <body>
        NewThirdPage<br>
        <%   
            String uname = request.getParameter("username");
            String gname = request.getParameter("grpname");
            String assign_no = "A"+request.getParameter("val");
            session.setAttribute("assign_no", assign_no);
            session.setAttribute("gname", gname);
            session.setAttribute("uname", uname);
            
            out.println(assign_no);
            out.println(uname);
            out.println(gname);
            ResultSet rs = null;
            Records rc = new Records();
            GetStudent gs=new GetStudent();
         rs = gs.studentName(gname,uname,assign_no);
        // rs = rc.record(assign_no,uname,gname);
        %>
        
        <form action="UpdateInfo" method="POST">
        <div id="table">
        <table class="table" id="data-table">
       
        <th>Roll No</th>
        <th  style="display : none">SubjectCode</th>
        <th  style="display : none">GroupCode</th>
        <th>ScheduledDate</th>
        <th>SubmissionDate</th>
        <th>Marks</th>
        <th style="display : none" >Approved</th>
        <th  style="display : none" >xx</th>
        <th> <p id="demo" onclick="f()">Check all!!</p></th>
        <th> <p  onclick="uf()">Un Check all!!</p></th>

        <% while(rs.next()) {%>
        <tr>   
            <td contenteditable="true"><%=rs.getInt("Rollno") %></td>
        <td contenteditable="true"  style="display : none"><%=rs.getInt("SubjectCode") %></td>
        <td contenteditable="true"  style="display : none"><%=rs.getInt("GroupCode") %></td>
        <td contenteditable="true"><input class="datepicker" name = "sch2" value="<%=rs.getString("ScheduledDate") %>"></td>
        <td contenteditable="true"><input class="datepicker" name= "sub2" value="<%=rs.getString("SubmissionDate") %>"></td>
        <td contenteditable="true"><%=rs.getInt("Marks") %></td>
        <td contenteditable="true"  style="display : none"><%=rs.getInt("Approved") %></td>
            <%
                if (rs.getInt("Approved") == 1) {
                    %>  <td><input type="checkbox" name="check" checked class="checkbox checkbox-warning checkbox-circle" ></td>
                    <% } else { %>
                <td><input type="checkbox" name="check" class="checkbox checkbox-warning checkbox-circle" ></td>
                <% } %>
                <%
                %></tr>
          <%}
          %>
       
        </table>
        </div>
        
        <input type="hidden" name="rollno" id="rollno" /> 
        <input type="hidden" name="set" id="set" />
        <input type="hidden" name="sub1" id="substr"/> 
        <input type="hidden" name="sch1" id="schstr"/>
        <input type="hidden" name="marks" id="marks"/>
        <input type="hidden" name="grpcode" id="grpcode"/>
        <input type="hidden" name="subcode" id="subcode"/>
        <input type="submit" onClick=" $(this).MessageBox();" value="submit">

        </form>
   </body>   
</html>