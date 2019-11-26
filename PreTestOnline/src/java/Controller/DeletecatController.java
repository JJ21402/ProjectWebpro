/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import db.BuildConnection;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author JJ
 */
public class DeletecatController {
    public void deletecat(int catid){
        Connection c = BuildConnection.getConnection();
        try {
            PreparedStatement p = c.prepareStatement("Delete from category where catId = ?");
            p.setInt(1, catid);
            p.execute();
                    } catch (SQLException ex) {
            Logger.getLogger(DeletecatController.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    public static void main(String[] args) {
        DeletecatController dc = new DeletecatController();
        dc.deletecat(31);
    }
    
}
