/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

/**
 *
 * @author bud
 */
public class User {
    private String password;
    private String username;
    private int userId;

    public User(String userName,String password,  int userId) {
        this.username = userName;
        this.password = password;
        this.userId = userId;
    }

    public String getPassword() {
        return password;
    }

    public String getUsername() {
        return username;
    }

    public int getUserId() {
        return userId;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public void setUsername(String userName) {
        this.username = userName;
    }

    public void setUserId(int userId) {
        this.userId = userId;
    }

    @Override
    public String toString() {
        return "User{" + "password=" + password + ", username=" + username + ", userId=" + userId + '}';
    }

    
    
    
    
}
