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
import org.json.*;

/**
 *
 * @author sameer
 */
public class GetAssignment {

    Connection conn;

    public void assignmentList(String usrname, String grpname, String tableName[]) throws ClassNotFoundException, SQLException, JSONException {

        String query = "select AssignmentName from AssignmentExist where GroupName=? and UserID=? order by AssignmentName;";

        conn = ConnectDatabase.getConnection();
        JSONObject assigns = new JSONObject();

        PreparedStatement stmt = conn.prepareStatement(query);
        stmt.setString(1, grpname);
        stmt.setString(2, usrname);
        ResultSet rs = stmt.executeQuery();
        int i = 0;
        while (rs.next()) {
            tableName[i] = rs.getString("AssignmentName");
            i++;
        }

    }

    public int assignmentCount(String usrname, String grpname) throws ClassNotFoundException, SQLException {

        conn = ConnectDatabase.getConnection();
        String query = "select count(AssignmentName) from AssignmentExist where GroupName=? and UserID=?;";

        PreparedStatement stmt = conn.prepareStatement(query);
        stmt.setString(1, grpname);
        stmt.setString(2, usrname);

        ResultSet rs = stmt.executeQuery();
        if (rs.next()) {
            return Integer.parseInt(rs.getString("count(AssignmentName)"));
        }
        return 0;
    }

    public JSONObject assignment(String usrname, String grpname) throws ClassNotFoundException, SQLException, JSONException {

        String query = "select AssignmentName from AssignmentExist where GroupName=? and UserID=?;";

        conn = ConnectDatabase.getConnection();
        JSONObject assigns = new JSONObject();

        PreparedStatement stmt = conn.prepareStatement(query);
        stmt.setString(1, grpname);
        stmt.setString(2, usrname);
        ResultSet rs = stmt.executeQuery();
        int i = 0;
        assigns.put("name", "Sameer");

        return assigns;
    }

}
