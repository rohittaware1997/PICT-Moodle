<%-- 
    Document   : TermWork
    Created on : 26 Sep, 2017, 12:38:53 PM
    Author     : sameer
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page  import="com.pict.dao.*"%>
<%@page import="java.sql.ResultSet"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Term Work</title>
    </head>
    <body>
    <center>
        <h1>Student Term Work</h1>
    </center>

    <%
        CalculateTermWork ctw = new CalculateTermWork();
        String username = request.getParameter("username");
        String groupname = request.getParameter("grpname");

        ResultSet rs = ctw.termWork(username, groupname);


    %>

    <table  id="data-table">
        <tr>
            <th>Roll No</th>
            <th></th>
            <th>Term Work Out of 25</th>
            <th>Term Work Out of 50</th>


        </tr>

        <% while (rs.next()) {%>
        <tr>   
            <td ><%=rs.getInt("Rollno")%></td><td></td>
            <td ><%=rs.getInt("OutOf25")%></td>
            <td ><%=rs.getInt("OutOf50")%></td>


            <% }
            %></tr>
            
    </table>




</body>
</html>
