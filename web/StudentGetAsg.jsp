<%-- 
    Document   : StudentGetAsg
    Created on : 26 Sep, 2017, 8:39:17 PM
    Author     : hp
--%>

<%@page import="com.pict.dao.StudentInfo"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>StudGetAsg</title>
    </head>
    <%
        StudentInfo sInfo=new StudentInfo();
        int flag=0,sub_code=0;
        String subject = request.getParameter("subj");
        String userid = request.getParameter("userid");
            ResultSet sub_rs = sInfo.studAssign(userid,subject);
        if(sub_rs.next()){
            sub_code = Integer.parseInt(sub_rs.getString("SubjectCode").trim());
            System.out.println("Sub code:"+sub_code);
        }
    %>
    <body>
    <center>
        <h2><%out.println(subject);%></h2><br>
        <%
        if(sub_code <= 3){
            ResultSet rs = sInfo.getAssign(userid, subject);
            String asg_name = null;
            out.println("Submitted Assignments:");
            while(rs.next()){
                flag = 1;
                asg_name = rs.getString("AssignmentName");
                ResultSet rs2=sInfo.datequery(userid, subject, asg_name);
                
                if(rs2.next())
                {
                    out.println(asg_name);
                    out.println("ScheduledDate");
                    out.print(rs2.getString("ScheduledDate"));
                    out.println("SubmissionDate");
                    out.print(rs2.getString("SubmissionDate"));
                    out.print("\t");
                    out.println("Marks");
                    out.print(rs2.getString("Marks"));
                    out.print("\t");
                    out.println("\n");
                }
            }
            if(flag == 0){
                out.println("None");
            }
        }  
        else{
            ResultSet ut_rs = sInfo.utquery(userid, subject);
            out.println("Marks");
            out.println("OutOfMarks");
            if(ut_rs.next()){
                int marks = Integer.parseInt(ut_rs.getString("Marks").trim());
                int outofmarks = Integer.parseInt(ut_rs.getString("OutOfMarks").trim());
                out.println(marks);
                out.println(outofmarks);
            }
            else{
                out.println("No Records Found!");
            }
        }
            
        %>        
    </center>
    </body>
</html>