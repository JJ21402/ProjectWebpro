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
import model.User;

/**
 *
 * @author bud
 */
public class RegisterDao {

    public void AccountUser(RegisterBean account) {
        String username = account.getUsername();
        String password = account.getPassword();
        String email = account.getEmail();
        String fname = account.getFname();
        String lname = account.getLname();

        try {
            Connection con = BuildConnection.getConnection();
            String query = "insert into userdata(username,password,fname,lname,email) values (?,?,?,?,?)";
            PreparedStatement preparedStatement = con.prepareStatement(query);
            preparedStatement.setString(1, username);
            preparedStatement.setString(2, password);
            preparedStatement.setString(3, fname);
            preparedStatement.setString(4, lname);
            preparedStatement.setString(5, email);
           
            preparedStatement.execute();
            
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
    public User FindUserById (int userId) {
         
       
        try {
            Connection con = BuildConnection.getConnection();
            String query = "select * from userdata where userid = ?";
            PreparedStatement preparedStatement = con.prepareStatement(query);
            preparedStatement.setInt(1, userId);
            ResultSet rs = preparedStatement.executeQuery();
            
            if(rs.next()){
                return new User(rs.getString("username"), rs.getString("password"), rs.getInt("userId"));
            }
            //  while         
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }
    
   
}
