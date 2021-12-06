
	<%@page import="java.text.SimpleDateFormat"%>
        <%@page import="java.text.DateFormat"%>
        <%@page import="com.pict.dao.GetStudent"%>
        <%@page import="java.util.Date" %>
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
		var checkItAll = dataTable.querySelector('input[name="check_arr"]');
		var inputs = dataTable.querySelectorAll('tr>td>input[name="check_arr"]');
		inputs.forEach(function(input) {
		if(input.checked === true) text+="1";
		else text+="0";
		});

		var input = document.getElementById("set");
		input.value = text;
	      //  window.alert(text);
		}
	  
		

		$.fn.MessageBox = function() {
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
		
		  set();
	   });
	   
	    var ii= JSON.stringify(data);
	       
		var input;
		
		set();
		
		var AssignmentName = JSON.stringify(data, ["Assignment Name"]);
		input = document.getElementById("assname1");
		input.value = AssignmentName;
	 
		
		
		var Marks = JSON.stringify(data, ["Marks"]);
		input = document.getElementById("marks");
		input.value = Marks;
		
		
	       var ScheduledDate = $("#data-table").find('input[name="sch2"]').serializeArray();
	       var c = JSON.stringify(ScheduledDate);
		input = document.getElementById("schstr");
		input.value = c;
	       
	       
	       var SubmissionDate = $("#data-table").find('input[name="sub2"]').serializeArray();
	       var c = JSON.stringify(SubmissionDate);
		input = document.getElementById("substr");
		input.value = c;
		
		
	};

		</script>
	    </head>
	    
	    <body>
		NewThirdPage<br>
		<%   
		    String username=(String)session.getAttribute("username");
		int rollNo=Integer.parseInt(request.getParameter("studRollNo"));
		out.println(rollNo);
		session.setAttribute("rn",rollNo);
		String rn = request.getParameter("studRollNo");
		String studRecord[][]=new String[20][6];
		GetStudent gs=new GetStudent();
		String gname = gs.getgrpname(rollNo);
		out.println(gname);
		int GroupCode = gs.getgrpcode(gname);
		int SubjectCode = gs.getsubcode(username,GroupCode);
		session.setAttribute("gc",GroupCode);
		session.setAttribute("sc",SubjectCode);
		out.println(GroupCode);
		out.println(SubjectCode);
		DateFormat dateFormat = new SimpleDateFormat("dd/mm/yyyy");
		Date date = new Date();
		
		int number=gs.StudentRecord(username, rollNo, studRecord);
		int i=0;
		%>
		
		<form action="NewStudentRecordDisplay" method="POST">
		      <div id="table">
		<table class="table" id="data-table">
		    <tr>
		        <th>Assignment Name</th>
		        <th>ScheduledDate</th>
		        <th>SubmissionDate</th>
		        <th>Marks</th>
		        <th>Approved</th>
		    </tr>   
		    <% for (i = 0; i < number; i++) {%> 
		    <tr>
		       <td id="assname"><%out.println(studRecord[i][0]);%></td>
		       <td contenteditable="true"><input class="datepicker" name = "sch2"  value="<%out.println(studRecord[i][1]);%>"></td>
		       <%
		            if (!studRecord[i][4].equals("1")) {
		        %>
                       <td contenteditable="true"><input class="datepicker" name = "sub2"  value="<%out.println(dateFormat.format(date));%>"></td>
		       <%}else {%>
                       <td contenteditable="true"><input class="datepicker" name = "sub2"  value="<%out.println(studRecord[i][2]);%>"></td>
		           
                       <%}%>><td contenteditable="true"><%=studRecord[i][3] %></td>
		        <%
		            if (studRecord[i][4].equals("1")) {
		        %><td><input type="checkbox" name="check_arr" value="<%out.println(studRecord[i][0]);%> " checked ><br><br> </td>
		            <% } else { %>  
		        <td><input type="checkbox" name="check_arr" value="<%out.println(studRecord[i][0]);%>" ><br><br> </td>               
		        <%  } %>
		    </tr><% }
		        %>
		</table>
		</div>
		
		<input type="hidden" name="rollno" id="rollno" value="<%=rn%>;" /> 
		<input type="hidden" name="set" id="set" />
		<input type="hidden" name="sub1" id="substr"/> 
		<input type="hidden" name="sch1" id="schstr"/>
		<input type="hidden" name="marks" id="marks"/>
		<input type="hidden" name="assname" id="assname1"/>
		<input type="hidden" name="grpcode" id="grpcode" value="<%=GroupCode%>;"/>
		<input type="hidden" name="subcode" id="subcode" value="<%=SubjectCode%>;" />
		<input type="hidden" name="gname" id="gname"  value="<%=gname%>;"/>
		
		<input type="submit" onClick=" $(this).MessageBox();" value="submit">

		</form>
	   </body>   
	</html>