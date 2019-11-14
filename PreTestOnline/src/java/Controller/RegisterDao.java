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
import model.RegisterBean;


/**
 *
 * @author bud
 */
public class RegisterDao {

    private final String FIND_BY_ID = "SELECT * FROM userdata WHERE userId = ?";
    private final String FIND_BY_USERNAME = "SELECT * FROM userdata WHERE USERNAME = ?";
    private final String ADD_NEWUSER = "INSERT INTO userdata (USER_ID,fname,lname,email,username,password)"
            + "VALUES (?,?,?,?)";
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

    public RegisterBean FindUserById(int userId) {
        RegisterBean b = null;
        Connection con = BuildConnection.getConnection();
        try {
            PreparedStatement pstm = con.prepareStatement(FIND_BY_ID);
            pstm.setInt(1, userId);
            ResultSet rs = pstm.executeQuery();

            if (rs.next()) {
               b = new RegisterBean(rs.getInt("userId"),rs.getString("fname"), rs.getString("lname"), rs.getString("email"),rs.getString("username"),rs.getString("password"));
            }
            //  while         
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return b;
    }

    public RegisterBean findByUsername(String username) {
        RegisterBean b = null;
        Connection conn = BuildConnection.getConnection();
        try {
            PreparedStatement pstm = conn.prepareStatement(FIND_BY_USERNAME);
            pstm.setString(1, username);
            ResultSet rs = pstm.executeQuery();
            if (rs.next()) {
               b = new RegisterBean(rs.getInt("userId"),rs.getString("fname"), rs.getString("lname"), rs.getString("email"),rs.getString("username"),rs.getString("password"));
            }
            conn.close();
        } catch (SQLException e) {
            System.out.println("Error");
        }
        return b;
    }
    public boolean addNewUser(RegisterBean rb){
        Connection conn = BuildConnection.getConnection();
        try{
            PreparedStatement pstm = conn.prepareStatement(ADD_NEWUSER);
            int last = findLastIndexUser();
            System.out.println(last);
            pstm.setInt(1, last+1);
            pstm.setString(2, rb.getFname());
            pstm.setString(3, rb.getLname());
            pstm.setString(4, rb.getEmail());
            pstm.setString(5, rb.getUsername());
            pstm.setString(6, rb.getPassword());
            int rs = pstm.executeUpdate();
            conn.close();
            return true;
        }
        catch(SQLException e){
            e.printStackTrace();
        }
        return false;
    }
}
