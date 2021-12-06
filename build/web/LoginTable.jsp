
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
        function displayResult()
        {
            document.getElementById("data-table").insertRow(-1).innerHTML = '<td contenteditable="true">1</td><td contenteditable="true">1</td><td contenteditable="true">1</td>';
        }
        $.fn.MessageBox = function() {
            alert("called");
            
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
         
       
   });
   var f = JSON.stringify(data, ["FirstName"]);
        input = document.getElementById("fn");
        input.value = f;
        
        
        
         var  m = JSON.stringify(data, ["MiddleName"]);
        input = document.getElementById("mn");
        input.value = m;
        
         var l = JSON.stringify(data, ["LastName"]);
        input = document.getElementById("ln");
        input.value =l;
        
        alert(f);
        alert(m);
        alert(l);
        
        
        
        

};

        </script>
    </head>
    
    <body>
        NewThirdPage<br>
        
      <form action="LoginTable" method="POST">
        <div id="table">
        <table class="table" id="data-table">
       
        <th>FirstName</th>
        <th>MiddleName</th>
        <th>LastName</th>
      <tr>
          <td contenteditable="true">naam</td>
          <td contenteditable="true">baapkanaam</td>
          <td contenteditable="true">khandankanaam</td>
           </tr>        
       
        </table>
        </div>
        
        <input type="hidden" name="fn" id="fn" /> 
         <input type="hidden" name="mn" id="mn" />
          <input type="hidden" name="ln" id="ln" />
        <button type="button" onclick="displayResult()">Insert new row</button>            
        <input type="submit" onClick=" $(this).MessageBox();" value="submit">

      </form>
   </body>   
</html>