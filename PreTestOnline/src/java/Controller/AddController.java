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
import model.Category;
import model.Question;

/**
 *
 * @author JJ
 */
public class AddController {
    public void Addcat(Category ca){
        Connection c = BuildConnection.getConnection();
        try {
            PreparedStatement p = c.prepareStatement("INSERT INTO CATEGORY(catname,grade,gradeid)values(?,?,?)");
            p.setString(1, ca.getCatName());
            p.setInt(2, ca.getGrade());
            p.setInt(3, ca.getGradeId());
            p.execute();
                    } catch (SQLException ex) {
            Logger.getLogger(AddController.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    public void Addquestion(Question q){
        Connection c = BuildConnection.getConnection();
        try {
            PreparedStatement p = c.prepareStatement("INSERT INTO QUESTION(quesname,catid)values(?,?)");
            p.setString(1, q.getQuestName());
            p.setInt(2, q.getCatId());
            p.execute();
        } catch (SQLException ex) {
            Logger.getLogger(AddController.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    public void Addchoice(Answer a){
        Connection c = BuildConnection.getConnection();
        try {
            PreparedStatement p = c.prepareStatement("INSERT INTO ANSWER (ansname,isright,quesid)values(?,?,?)");
            p.setString(1,a.getAnsName());
            p.setString(2,a.getIsRight() );
            p.setInt(3, a.getQuesId());
            p.execute();
        } catch (SQLException ex) {
            Logger.getLogger(AddController.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
 
    

}
