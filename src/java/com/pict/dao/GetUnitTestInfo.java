package com.pict.dao;

import com.pict.dao.ConnectDatabase;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class GetUnitTestInfo {

    Connection conn;

    public int getSubCode(String subname) throws SQLException, ClassNotFoundException {
        int code = 0;
        conn = ConnectDatabase.getConnection();
        ResultSet rs;
        PreparedStatement stmt;
        String q = "";
        q += "select SubjectCode from SubjectTable where SubjectName = ?";

        stmt = conn.prepareStatement(q);
        stmt.setString(1, subname);
        rs = stmt.executeQuery();
        while (rs.next()) {
            code = rs.getInt("SubjectCode");
        }
        return code;
    }

    ;
     public int getClassCode(String uname, int subcode) throws SQLException, ClassNotFoundException {
        int code = 0;
        conn = ConnectDatabase.getConnection();
        ResultSet rs;
        PreparedStatement stmt;
        String q = "";
        q += "select ClassCode from TeacherSubject where UserID = ? and SubjectCode = ?";

        stmt = conn.prepareStatement(q);
        stmt.setString(1, uname);
        stmt.setInt(2, subcode);
        rs = stmt.executeQuery();
        while (rs.next()) {
            code = rs.getInt("ClassCode");
        }
        return code;
    }

    ;
     
     public ResultSet getTable(int subcode, int classcode) throws SQLException, ClassNotFoundException {

        conn = ConnectDatabase.getConnection();
        ResultSet rs;
        PreparedStatement stmt;
        String q = "";
        q += "select RollNo,Marks from UnitTest where ClassCode = ? and SubjectCode = ? order by RollNo;";

        stmt = conn.prepareStatement(q);
        stmt.setInt(1, classcode);
        stmt.setInt(2, subcode);
        rs = stmt.executeQuery();

        return rs;
    }
;     
}
