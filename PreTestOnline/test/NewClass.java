
import Controller.AddController;
import Servlet.AddServlet;
import model.Answer;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author JJ
 */
public class NewClass {
    public static void main(String[] args) {
        Answer a = new Answer();
        AddController ac = new AddController();
        
        a.setAnsName("kk");
        a.setIsRight("T");
        a.setQuesId(127);
        ac.Addchoice(a);
    }
}
