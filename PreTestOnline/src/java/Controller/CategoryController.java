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
import model.Category;


/**
 *
 * @author Nitro5
 */
public class CategoryController {
   
    public ArrayList<Category> selectallcat(int gradeid){
        ArrayList<Category> cats = new ArrayList<>();
        Connection conn = BuildConnection.getConnection();
        try {
            PreparedStatement pstm = conn.prepareStatement("select * from category where gradeid=? order by grade");
            pstm.setInt(1,gradeid);
            ResultSet rs = pstm.executeQuery();
            while(rs.next()){
                Category cat = new Category(rs.getInt("catId"),rs.getString("catName"),rs.getInt("grade"));
                
                cats.add(cat);
            }
        } catch (SQLException ex) {
            Logger.getLogger(CategoryController.class.getName()).log(Level.SEVERE, null, ex);
        }
               
            return cats;
    }
    public static void main(String[] args) {
        CategoryController cc = new CategoryController();
        cc.selectallcat(1);
    }
}




