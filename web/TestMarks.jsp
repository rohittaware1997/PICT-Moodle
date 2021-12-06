
<%@page import="com.pict.dao.GetUnitTestInfo"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="com.pict.dao.GetStudent"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

    
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
       
        <script>
      $.fn.MessageBox = function() {

            window.alert("call"); 
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
       //  var ii= JSON.stringify(data);
       // window.alert(ii);
       
   });

        
        var Rollno = JSON.stringify(data, ["Roll No"]);
        input = document.getElementById("rn");
        input.value = Rollno;
        window.alert("Roll no = " + Rollno);
   
        var Marks = JSON.stringify(data, ["Marks"]);
        input = document.getElementById("mks");
        input.value = Marks;
       window.alert("marks = " + Marks);  
       
};

    
            </script>
      
    
     
    <body>
          <%
          String subname = request.getParameter("subjectName");
          out.println(subname); 
          String uname = (String)session.getAttribute("username");
          out.println(uname);
          
          GetUnitTestInfo dao = new GetUnitTestInfo();
          int subcode = dao.getSubCode(subname);
          int classcode = dao.getClassCode(uname,subcode);
          ResultSet rs   = dao.getTable(subcode,classcode);;
          
         out.println(subcode);
         out.println(classcode);
         session.setAttribute("subcode", subcode);
         session.setAttribute("classcode", classcode);
         
        %>
          
         <form action="SetMarksOfStudent" method="POST">
          <div id="table">
        <table class="table" id="data-table">
            <tr>
                <th>Roll No</th>
                <th>Marks</th>
            </tr>
            
            <% while(rs.next()) {%>
            <tr>
               <td id="rollno"><%= rs.getInt("RollNo")%></td>
               <td contenteditable="true" id="marks"><%= rs.getInt("Marks")%></td>
            </tr>
            <% }
          %>
        </table>
        </div>
        
        
        <input type="hidden" name="rollno" id="rn" />
        <input type="hidden" name="marks" id="mks" />
        
        <input type="submit" onClick=" $(this).MessageBox();" value="submit">
            
        </form>
        
    </body>
</html>