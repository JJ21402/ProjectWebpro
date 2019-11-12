/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

/**
 *
 * @author JJ
 */
public class Student {
    private String password;
    private String userName;
    private int studentId;

    public Student(String userName, String password, int studentId) {
        this.userName = userName;
        this.password = password;
        this.studentId = studentId;
    }

    public String getUserName() {
        return userName;
    }

    public String getPassword() {
        return password;
    }

    public int getStudentId() {
        return studentId;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public void setStudentID(int studentId) {
        this.studentId = studentId;
    }

    @Override
    public String toString() {
        return "Student{" + "userName=" + userName + ", password=" + password + ", studentId=" + studentId + '}';
    }

}
