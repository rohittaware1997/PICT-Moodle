
<%@page import="java.lang.reflect.Method"%>
<%@page import="java.io.PrintWriter"%>
<%@page  import="com.pict.dao.MakeString"%>
<%@page  import="com.pict.dao.GetAssignment"%>
<%@page  import="com.pict.dao.LoginDao"%>

<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>

<head>
    <style>
    </style>
    
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Welcome</title>

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <link rel="stylesheet" href="https://ajax.googleapis.com/ajax/libs/jqueryui/1.12.1/themes/smoothness/jquery-ui.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jqueryui/1.12.1/jquery-ui.min.js"></script>
    <script>
        
$(document).ready(function() {
    $("#add").click(function() {
      $('#data-table tbody>tr:last').clone(true).insertAfter('#data-table tbody>tr:last');
      return false;
    });
});

    </script>

</head>

<body>
    <%
            SubjectAllotment sa=new SubjectAllotment();
            ResultSet rs1=sa.getTeachers();
            ResultSet rs2=sa.getSubject();
           // if( !rs2.next()) out.println("x");
            ResultSet rs3=sa.getGroups();
            ResultSet rx = sa.getSubject();
   
        %>
            
        
   <table id="data-table" align="center" class="bordered">
<thead>
    <tr><th>Item Name</th>
    <th>Action</th></tr>
    
</thead>
<tbody>
    <tr>
        <td> 1</td>
        <td>2 </td>

    </tr>
</tbody>
   </table>
    <button id="add">+</button>
</body>
</html>
