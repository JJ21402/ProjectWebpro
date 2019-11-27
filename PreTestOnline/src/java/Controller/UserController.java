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
import model.User;

/**
 *
 * @author bud
 */
public class UserController {

    private final String FIND_BY_ID = "SELECT * FROM userdata WHERE userId = ?";
    private final String FIND_BY_USERNAME = "SELECT * FROM userdata WHERE USERNAME = ?";
    private final String ADD_NEWUSER = "INSERT INTO userdata (userid,fname,lname,email,username,password)"
            + "VALUES (?,?,?,?,?,?)";
    private final String Edit_USER = "UPDATE userdata set fname = ?,lname =?,email= ?,username =?,password=? where userId =?";
    private final String FIND_LASTUSERID = "SELECT MAX(userId) FROM userdata";

    public int findLastIndexUser() {
        int i = -1;
        Connection conn = BuildConnection.getConnection();
        try {
            PreparedStatement pstm = conn.prepareStatement(FIND_LASTUSERID);
            ResultSet rs = pstm.executeQuery();
            if (rs.next()) {
                i = rs.getInt("1");
            }
            conn.close();
        } catch (SQLException e) {
            System.out.println("Error Occured");
        }
        return i;
    }

    public User findUserById(int userId) {
        User b = null;
        Connection con = BuildConnection.getConnection();
        try {
            PreparedStatement pstm = con.prepareStatement(FIND_BY_ID);
            pstm.setInt(1, userId);
            ResultSet rs = pstm.executeQuery();

            if (rs.next()) {
                b = new User(rs.getInt("userId"), rs.getString("fname"), rs.getString("lname"), rs.getString("email"), rs.getString("username"), rs.getString("password"));
            }
            //  while         
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return b;
    }

    public User findByUsername(String username) {
        User b = null;
        Connection conn = BuildConnection.getConnection();
        try {
            PreparedStatement pstm = conn.prepareStatement(FIND_BY_USERNAME);
            pstm.setString(1, username);
            ResultSet rs = pstm.executeQuery();
            if (rs.next()) {
                b = new User(rs.getInt("userId"), rs.getString("fname"), rs.getString("lname"), rs.getString("email"), rs.getString("username"), rs.getString("password"));
            }
            conn.close();
        } catch (SQLException e) {
            System.out.println("Error");
        }
        return b;
    }

    public boolean addNewUser(User rb) {
        Connection conn = BuildConnection.getConnection();
        try {
            PreparedStatement pstm = conn.prepareStatement(ADD_NEWUSER);
            int last = findLastIndexUser();
            System.out.println(last);
            pstm.setInt(1, rb.getUserId());
            pstm.setString(2, rb.getFname());
            pstm.setString(3, rb.getLname());
            pstm.setString(4, rb.getEmail());
            pstm.setString(5, rb.getUsername());
            pstm.setString(6, rb.getPassword());
            int rs = pstm.executeUpdate();
            conn.close();
            return true;
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return false;
    }

    public void executeModifyQuery(String sql) {
        try {
            Connection conn = BuildConnection.getConnection();
            conn.createStatement().executeQuery(sql);
            conn.close();
        } catch (SQLException e) {
            e.printStackTrace();

        }

    }

    public ResultSet executeFetchQuery(String sql) {
        ResultSet rs = null;
        try {
            Connection conn = BuildConnection.getConnection();
            rs = conn.createStatement().executeQuery(sql);
            conn.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return rs;
    }
    public ArrayList<User> getAllUser() {
        ArrayList<User> list = new ArrayList<User>();
        String sql = "SELECT * FROM userdata";
        ResultSet rs = executeFetchQuery(sql);
        try {
            while (rs.next()) {

                User user = new User(rs.getString("fname"), rs.getString("lname"), rs.getString("email"), rs.getString("username"), rs.getString("password"));
                user.setFname(rs.getString("fname"));
                user.setLname(rs.getString("lname"));
                user.setEmail(rs.getString("email"));
                user.setEmail(rs.getString("ีusername"));
                user.setEmail(rs.getString("password"));
                list.add(user);
            }
        } catch (SQLException ex) {
            Logger.getLogger(UserController.class.getName()).log(Level.SEVERE, null, ex);
        }

        return list;

    }

    public boolean editUser(User rb) {       
                Connection conn = BuildConnection.getConnection();
                try {
                    PreparedStatement pstm = conn.prepareStatement(Edit_USER);
                    pstm.setString(1, rb.getFname());
                    pstm.setString(2, rb.getLname());
                    pstm.setString(3, rb.getEmail());
                    pstm.setString(4, rb.getUsername());
                    pstm.setString(5, rb.getPassword());
                    pstm.setInt(6, rb.getUserId());
                    int rs = pstm.executeUpdate();

                    if (rs > 0) {
                        System.out.println("Record Updated Successfully");
                    } else {
                        System.out.println("There is a problem in updating Record.");
                    }
                } catch (SQLException ex) {
                    Logger.getLogger(UserController.class.getName()).log(Level.SEVERE, null, ex);
                }
                return false;
            }  
        }
        



