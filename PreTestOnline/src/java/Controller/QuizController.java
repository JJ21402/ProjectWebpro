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

/**
 *
 * @author bud
 */
public class QuizController {

    public boolean findbyques(int id) {
        ArrayList<Answer> ans = new ArrayList<>();
        Connection c = BuildConnection.getConnection();
        try {
            PreparedStatement p = c.prepareStatement("select isRight from answer where ansId=?");
            p.setInt(1, id);

            ResultSet rs = p.executeQuery();
            if(rs.next()){
                if(rs.getString("isRight").equals("T")){
                    return true;
                }else{
                    return false;
                }
            }
            
        } catch (SQLException ex) {
            Logger.getLogger(QuestionController.class.getName()).log(Level.SEVERE, null, ex);
        }
        return false;
    }
}
