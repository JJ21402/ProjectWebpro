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
import java.util.logging.Level;
import java.util.logging.Logger;
import model.Student;

/**
 *
 * @author JJ
 */
public class StudentController {
    private final static String FIND_BY_ID = "select * from student where studentid = ?";
    private final static String FIND_BY_USERNAME = "select * from student where username = ?";

    public Student findById(int id) {
        Student student = null;
        Connection conn = BuildConnection.getConnection();
        try {
            PreparedStatement pstm = conn.prepareStatement(FIND_BY_ID);
            pstm.setInt(1, id);
            ResultSet rs = pstm.executeQuery();
            if (rs.next()) {
                student = ResultSetToStudent(rs);
            }
            rs.close();
            conn.close();
        } catch (SQLException ex) {
            Logger.getLogger(StudentController.class.getName()).log(Level.SEVERE, null, ex);
        }
        return student;
    }

    public Student findByUsername(String username) {
        Student student = null;
        Connection conn = BuildConnection.getConnection();
        try {
            PreparedStatement pstm = conn.prepareStatement(FIND_BY_USERNAME);
            pstm.setString(1, username);
            ResultSet rs = pstm.executeQuery();
            if (rs.next()) {
                student = ResultSetToStudent(rs);
            }
            rs.close();
            conn.close();
        } catch (SQLException ex) {
            Logger.getLogger(StudentController.class.getName()).log(Level.SEVERE, null, ex);
        }
        return student;
    }

    static Student ResultSetToStudent(ResultSet rs) {
        try {
            Student student = new Student(rs.getString("username"), rs.getString("password"), rs.getInt("studentId"));
            if (student.getStudentId() != 0) {
                return student;
            }
        } catch (SQLException ex) {
            Logger.getLogger(StudentController.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }
    
}
