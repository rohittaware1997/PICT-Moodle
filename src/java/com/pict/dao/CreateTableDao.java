
package com.pict.dao;

import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;

/**
 *
 * @author sameer
 */
public class CreateTableDao {

    Connection conn;

    public void create(String uname, String gname, String AssignName, String date) throws ClassNotFoundException, SQLException {

        String finalAname = "A" + AssignName.trim();

        conn = ConnectDatabase.getConnection();
        String st = "call aa('" + finalAname + "','" + gname.trim() + "','" + uname.trim() + "');";
        CallableStatement cstmt = conn.prepareCall(st);

        cstmt.execute();

        String query1 = "update " + finalAname + " set ScheduledDate='" + date + "' where GroupCode=(select GroupCode from GroupTable where GroupName='" + gname.trim() + "') and SubjectCode=(select SubjectCode from UserInfo where UserID='" + uname.trim() + "' and GroupCode=(select GroupCode from GroupTable where GroupName='" + gname.trim() + "'));";

        Statement stmt = conn.createStatement();

        stmt.execute(query1);

        /*
         cstmt.setString(1,finalAname);
         cstmt.setString(2,gname);
         cstmt.setString(3,uname);
         */ System.out.println(st);

    }

}
