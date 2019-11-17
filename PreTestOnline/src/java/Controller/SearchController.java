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
import model.Search;

/**
 *
 * @author Nitro5
 */
public class SearchController {
//    
//    private final static String FIND_BY_GRADEID = "SELECT * FROM APP.STUDENT s RIGHT JOIN APP.EQUIPMENT e ON s.STUDENTID=e.STUDENTID WHERE e.EQUIPMENTID=?";
//    private final static String FIND_ALL = "SELECT * FROM APP.STUDENT s RIGHT JOIN APP.EQUIPMENT e ON s.STUDENTID=e.STUDENTID";
//    

//    public Search findByEquipmentId(int id) {
//        Search searches = null;
//        Connection conn = BuildConnection.getConnection();
//        try {
//            PreparedStatement pstm = conn.prepareStatement(FIND_BY_GRADEID);
//            pstm.setInt(1, id);
//            ResultSet rs = pstm.executeQuery();
//            if (rs.next()) {
//                search = ResultSetToEquipment(rs);
//            }
//            rs.close();
//            conn.close();
//        } catch (SQLException ex) {
//            Logger.getLogger(SearchController.class.getName()).log(Level.SEVERE, null, ex);
//        }
//        return searches;
//    }

//    public ArrayList<Search> findEquipmentEntities() {
//        ArrayList<Search> searches = new ArrayList<>();
//        Connection conn = BuildConnection.getConnection();
//        try {
//            PreparedStatement pstm = conn.prepareStatement(FIND_ALL);
//            ResultSet rs = pstm.executeQuery();
//            while (rs.next()) {
//                searches.add(ResultSetToEquipment(rs));
//            }
//            rs.close();
//            conn.close();
//        } catch (SQLException ex) {
//            Logger.getLogger(SearchController.class.getName()).log(Level.SEVERE, null, ex);
//        }
//        return searches;
//    }
//     static Search ResultSetToSearch(ResultSet rs) {
//        try {
//            return new Search(rs.getInt("EQUIPMENTID"), rs.getString("NAME"), SearchController.ResultSetToStudent(rs));
//        } catch (SQLException ex) {
//            Logger.getLogger(SearchController.class.getName()).log(Level.SEVERE, null, ex);
//        }
//        return null;
//    }
}




