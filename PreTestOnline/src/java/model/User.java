/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import Controller.UserController;

/**
 *
 * @author bud
 */
public class User {

    private int userId;
    private String fname;
    private String lname;
    private String email;
    private String username;
    private String password;

    public User(int userId, String fname, String lname, String email, String username, String password) {
        this.userId = userId;
        this.fname = fname;
        this.lname = lname;
        this.email = email;
        this.username = username;
        this.password = password;
    }

    public User(String fname, String lname, String email, String username, String password) {
        UserController r1 = new UserController();
        userId = r1.findLastIndexUser()+1;
        this.fname = fname;
        this.lname = lname;
        this.email = email;
        this.username = username;
        this.password = password;
    }

    public int getUserId() {
        return userId;
    }

    public String getFname() {
        return fname;
    }

    public String getLname() {
        return lname;
    }

    public String getEmail() {
        return email;
    }

    public String getUsername() {
        return username;
    }

    public String getPassword() {
        return password;
    }

    public void setUserId(int userId) {
        this.userId = userId;
    }

    public void setFname(String fname) {
        this.fname = fname;
    }

    public void setLname(String lname) {
        this.lname = lname;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    @Override
    public String toString() {
        return "RegisterBean{" + "userId=" + userId + ", fname=" + fname + ", lname=" + lname + ", email=" + email + ", username=" + username + ", password=" + password + '}';
    }

}
