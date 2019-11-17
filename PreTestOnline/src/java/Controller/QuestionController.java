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
import model.Answer;
import model.Question;

/**
 *
 * @author JJ
 */
public class QuestionController {
    
    public ArrayList<Question> findbyques(int id){
        ArrayList<Question> ques = new ArrayList<>();
        Connection c = BuildConnection.getConnection();
        try {
            PreparedStatement p = c.prepareStatement("select * from question where catid=?");
             p.setInt(1, id);
             
            ResultSet rs = p.executeQuery();
            while (rs.next()) {
            Question q = new Question(rs.getInt("quesId"),rs.getString("quesName"),showchoi(rs.getInt("quesId")));
            ques.add(q);
                    }
                    } catch (SQLException ex) {
            Logger.getLogger(QuestionController.class.getName()).log(Level.SEVERE, null, ex);
        }
        return ques;
    }
    
    public ArrayList<Answer> showchoi(int quesId){
        ArrayList<Answer> aw = new ArrayList<>();
        Connection conn = BuildConnection.getConnection();
        try {
            PreparedStatement pstm = conn.prepareStatement("select * from answer where quesId=?");
            pstm.setInt(1, quesId);
            ResultSet rs = pstm.executeQuery();
            while(rs.next()){
                Answer a = new Answer(rs.getInt("ansId"),rs.getString("ansName"),rs.getString("isRight"));
                aw.add(a);
            }
        } catch (SQLException ex) {
            Logger.getLogger(QuestionController.class.getName()).log(Level.SEVERE, null, ex);
        }
        return aw;
    }
    
    public static void main(String[] args) {
        QuestionController qc = new QuestionController();
       
        System.out.println(qc.findbyques(1));
    }
}
