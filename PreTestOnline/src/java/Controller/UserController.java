/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import db.BuildConnection;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.User;

/**
 *
 * @author bud
 */
public class UserController {

    private final static String FIND_BY_ID = "select * from userdata where userid = ?";
    private final static String FIND_BY_USERNAME = "select * from userdata where username = ?";
   

    public User findById(int id) {
        User user = null;
        Connection conn = BuildConnection.getConnection()
                ;
        try {
            PreparedStatement pstm = conn.prepareStatement(FIND_BY_ID);
            pstm.setInt(1, id);
            ResultSet rs = pstm.executeQuery();
            if (rs.next()) {
                user = ResultSetToUser(rs);
            }
            rs.close();
            conn.close();
        } catch (SQLException ex) {
            Logger.getLogger(UserController.class.getName()).log(Level.SEVERE, null, ex);
        }
        return user;
    }

    public User findByUsername(String username)  {
        User user = null;    
        Connection conn = BuildConnection.getConnection();
        try {
            PreparedStatement pstm = conn.prepareStatement(FIND_BY_USERNAME);
            pstm.setString(1, username);
            ResultSet rs = pstm.executeQuery();
            if (rs.next()) {
                user = ResultSetToUser(rs);
            }
            rs.close();
            conn.close();
        } catch (SQLException ex) {
            Logger.getLogger(UserController.class.getName()).log(Level.SEVERE, null, ex);
        }
        return user;
    }

    static User ResultSetToUser(ResultSet rs) {
        try {

            User user = new User(rs.getString("username"), rs.getString("password"), rs.getInt("userId"));
            if (user.getUserId() != 0) {
                return user;
            }
        } catch (SQLException ex) {
            Logger.getLogger(UserController.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }

}
