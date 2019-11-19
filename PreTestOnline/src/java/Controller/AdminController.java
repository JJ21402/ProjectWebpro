/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import db.BuildConnection;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.Admin;
import model.User;

/**
 *
 * @author bud
 */
public class AdminController {

    private final String FIND_BY_ID = "SELECT * FROM admindata WHERE adminId = ?";
    private final String FIND_BY_USERNAME = "SELECT * FROM admindata WHERE USERNAME = ?";

    public Admin findUserById(int userId) {
        Admin a = null;
        Connection con = BuildConnection.getConnection();
        try {
            PreparedStatement pstm = con.prepareStatement(FIND_BY_ID);
            pstm.setInt(1, userId);
            ResultSet rs = pstm.executeQuery();

            if (rs.next()) {
                a = new Admin(rs.getInt("adminId"), rs.getString("name"), rs.getString("email"), rs.getString("username"), rs.getString("password"));
            }
            //  while         
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return a;
    }

    public Admin findByUsername(String username) {
        Admin a = null;
        Connection conn = BuildConnection.getConnection();
        try {
            PreparedStatement pstm = conn.prepareStatement(FIND_BY_USERNAME);
            pstm.setString(1, username);
            ResultSet rs = pstm.executeQuery();
            if (rs.next()) {
                a = new Admin(rs.getInt("adminId"), rs.getString("name"), rs.getString("email"), rs.getString("username"), rs.getString("password"));
            }
            conn.close();
        } catch (SQLException e) {
            System.out.println("Error");
        }
        return a;
    }

}
