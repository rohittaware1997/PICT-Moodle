<%@page import="java.sql.ResultSet"%>
<%@page import="com.pict.dao.SubjectAllotment"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
<head>
 <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.4.2/jquery.min.js"></script>
 <script language="javascript">
    // define the function within the global scope
    $.fn.MessageBox = function(msg) {
        alert(msg);
       
        var table = $( '#data-table' )[0];

$( table ).delegate( '.tr_clone_add', 'click', function () {
    var thisRow = $( this ).closest( 'tr' )[0];
    $( thisRow ).clone().insertAfter( thisRow ).find( 'input:text' ).val( '' );
});
    };

    // or, if you want to encapsulate variables within the plugin
  //<-- make sure you pass jQuery into the $ parameter
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
            
        <%  while(rx.next()){ 
           // out.println("2");
         out.println(rx.getString("SubjectName"));
        } %>

        <div id="table">
        <table class="table" id="data-table">
       
        <th>SubjectName</th>
        <th>TeacherName</th>
        <th>GroupName</th>
      <tr class="tr_clone">
          <td>Drop down box or select element
        <select name="subject">
        <%  while(true){ if( !rs2.next()) break; %>
            <option value="<%= rs2.getString("SubjectName")%>" > <%= rs2.getString("SubjectName")%> </option>
        <% } %>
        </select>
          </td>
     
          <td>Drop down box or select element
        <select name="teacher">
        <%  while(true){ if( !rs1.next()) break; %>
            <option value="<%= rs1.getString("UserName")%>" > <%= rs1.getString("UserName")%> </option>
        <% } %>
        </select>
          </td>
  
          <td>Drop down box or select element
        <select name="group">
        <%  while(true){ if( !rs3.next()) break; %>
            <option value="<%= rs3.getString("GroupName")%>" > <%= rs3.getString("GroupName")%> </option>
        <% } %>
        </select>
          </td>
         
           </tr>
       
        </table>
        </div>
               <input type="submit" onclick=" $(this).MessageBox('msg');" value="submit" class="tr_clone_add">
</body></html>