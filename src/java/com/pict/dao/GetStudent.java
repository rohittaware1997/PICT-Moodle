/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.pict.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.Date;

public class GetStudent {

    Connection conn;

    public int studentNumber(String gname, String uname, String assignName) throws ClassNotFoundException, SQLException {

        String query1 = "select count(RollNo) as cnt from Assignment_01 where GroupCode=(select GroupCode from GroupTable where GroupName=?) and SubjectCode=(select SubjectCode from UserInfo where UserID=? and GroupCode=(select GroupCode from GroupTable where GroupName=?));";
        System.out.println("aefqoifq[");
        System.out.println(uname);
        System.out.println(gname);
        System.out.println("ewf wefhafv");
        conn = ConnectDatabase.getConnection();
        Statement stmt1 = conn.createStatement();
        String qu = "select count(Rollno) from " + assignName.trim() + " where GroupCode=(select GroupCode from GroupTable where GroupName='" + gname.trim() + "') and SubjectCode=(select SubjectCode from UserInfo where UserID='" + uname.trim() + "' and GroupCode=(select GroupCode from GroupTable where GroupName='" + gname.trim() + "'));";
        ResultSet rs = stmt1.executeQuery(qu);
        if (rs.next()) {
            int j;
            j = rs.getInt(1);
            return j;
        }

        return 0;
    }

    public ResultSet studentName(String gname, String uname, String assignName) throws ClassNotFoundException, SQLException {

        // gname="L10";
        // String query1 = "select count(Rollno) as cnt from Assignment_01 where GroupCode=(select GroupCode from GroupTable where GroupName=?) and SubjectCode=(select SubjectCode from UserInfo where UserID=? and GroupCode=(select GroupCode from GroupTable where GroupName=?));";
        System.out.println("aefqoifq[");
        System.out.println(uname);
        System.out.println(gname);
        System.out.println("ewf wefhafv");

        conn = ConnectDatabase.getConnection();
        /*  PreparedStatement stmt1=conn.prepareStatement(query);
         stmt1.setString(1,gname);
         stmt1.setString(2,uname);
         stmt1.setString(3,gname);
         */
        System.out.println("the value odf assign  is " + assignName);
        Statement stmt1 = conn.createStatement();

        String qu = "select *from " + assignName.trim() + " where GroupCode=(select GroupCode from GroupTable where GroupName='" + gname.trim() + "') and SubjectCode=(select SubjectCode from UserInfo where UserID='" + uname.trim() + "' and GroupCode=(select GroupCode from GroupTable where GroupName='" + gname.trim() + "'))";
        ResultSet rs = stmt1.executeQuery(qu);
        int i = 0;
        return rs;
    }

    public int StudentRecord(String username, int rollNo, String studRecord[][]) throws ClassNotFoundException, SQLException {

        conn = ConnectDatabase.getConnection();
        String query1 = "select GroupID from GroupStart where StartRollNo<=" + rollNo + " and EndRollNo>=" + rollNo + ";";

        Statement stmt1 = conn.createStatement();
        ResultSet rs = stmt1.executeQuery(query1);
        int subjectCode = 0, groupID = 0;
        if (rs.next()) {
            groupID = Integer.parseInt(rs.getString("GroupID"));
        } else {
            System.out.println("Student Not Found");
        }
        String query2 = "select SubjectCode from UserInfo where UserID='" + username.trim() + "' and GroupCode=" + groupID + ";";

        rs = stmt1.executeQuery(query2);

        if (rs.next()) {
            subjectCode = Integer.parseInt(rs.getString("SubjectCode"));
        }

        String query3 = "select AssignmentName from AssignmentExist where UserID='" + username.trim() + "' and GroupName=(select GroupName from GroupTable where GroupCode=" + groupID + ");";

        rs = stmt1.executeQuery(query3);

        int i = 0;
        while (rs.next()) {

            String temp = rs.getString("AssignmentName");
            System.out.println(temp);
            String query5 = "select SubmissionDate,ScheduledDate,Marks,Approved from " + temp.trim() + " where Rollno=" + rollNo + " and SubjectCode=" + subjectCode + " and GroupCode=" + groupID + ";";
            Statement stmt2 = conn.createStatement();
            ResultSet rs1 = stmt2.executeQuery(query5);
            String[] parts = temp.split("(?<=A)");
            studRecord[i][0] = "Assignment " + parts[1].trim();
            while (rs1.next()) {

                studRecord[i][1] = rs1.getString("ScheduledDate");
                System.out.println(studRecord[i][1]);
                studRecord[i][2] = rs1.getString("SubmissionDate");
                studRecord[i][3] = rs1.getString("Marks");
                studRecord[i][4] = rs1.getString("Approved");

            }

            i++;
        }
        String query4 = "select count(AssignmentName) from AssignmentExist where UserID='" + username.trim() + "' and GroupName=(select GroupName from GroupTable where GroupCode=" + groupID + ");";
        System.out.println(query4);
        Statement stmt3 = conn.createStatement();

        ResultSet rs2 = stmt3.executeQuery(query4);
        int number = 0;
        if (rs2.next()) {
            number = Integer.parseInt(rs2.getString("count(AssignmentName)"));
            return number;
        }
        return 0;
    }

    public ResultSet UTMarks(String username, String subjectName) throws ClassNotFoundException, SQLException {

        conn = ConnectDatabase.getConnection();
        int subjectCode = 0;

        String query1 = "Select SubjectCode from SubjectTable where SubjectName='" + subjectName.trim() + "';";

        Statement stmt1 = conn.createStatement();

        ResultSet rs = stmt1.executeQuery(query1);

        if (rs.next()) {
            subjectCode = Integer.parseInt(rs.getString("SubjectCode"));
        }

        int classCode = 0;

        String query2 = "select ClassCode from TeacherSubject where SubjectCode=" + subjectCode + " and UserID='" + username.trim() + "';";

        //Statement stmt1=conn.createStatement();
        rs = stmt1.executeQuery(query2);

        if (rs.next()) {
            classCode = Integer.parseInt(rs.getString("ClassCode"));
        }

        String query3 = "select RollNo,Marks,OutOfMarks from UnitTest where ClassCode=" + classCode + " and SubjectCode=" + subjectCode + " order by RollNo;";

        // Statement stmt3=conn.createStatement();
        ResultSet rs1 = stmt1.executeQuery(query3);

        return rs1;

    }

    public String getgrpname(int rollno) throws SQLException, ClassNotFoundException {

        conn = ConnectDatabase.getConnection();

        String qu = "select GroupName from GroupTable, GroupStart where GroupStart.EndRollNo >= ? and GroupStart.StartRollNo <= ? and GroupStart.GroupID = GroupTable.GroupCode";

        PreparedStatement stmt1 = conn.prepareStatement(qu);
        stmt1.setInt(1, rollno);
        stmt1.setInt(2, rollno);

        ResultSet rs = stmt1.executeQuery();
        String ans = null;
        while (rs.next()) {
            ans = rs.getString("GroupName");
        }
        return ans;
    }

    public int getgrpcode(String gname) throws SQLException, ClassNotFoundException {
        conn = ConnectDatabase.getConnection();
        String qu = "select GroupCode from GroupTable where GroupName = ?";

        PreparedStatement stmt1 = conn.prepareStatement(qu);
        stmt1.setString(1, gname);
        ResultSet rs = stmt1.executeQuery();
        int ans = 0;
        while (rs.next()) {
            ans = rs.getInt("GroupCode");
        }
        return ans;
    }

    public int getsubcode(String uname, int GroupCode) throws SQLException, ClassNotFoundException {
        conn = ConnectDatabase.getConnection();
        String qu = "select SubjectCode from UserInfo where GroupCode = ?  and UserID = ?";

        PreparedStatement stmt1 = conn.prepareStatement(qu);
        stmt1.setInt(1, GroupCode);
        stmt1.setString(2, uname);
        ResultSet rs = stmt1.executeQuery();
        int ans = 0;
        while (rs.next()) {
            ans = rs.getInt("SubjectCode");
        }
        return ans;
    }

}
