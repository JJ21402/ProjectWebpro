/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Servlet;

import Controller.AddController;
import Controller.QuestionController;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.Answer;
import model.Question;

/**
 *
 * @author JJ
 */
public class Addqueschoiceservlet extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String ques = request.getParameter("ques");
        String[] choices = request.getParameterValues("choice");
        String catid = request.getParameter("catid");
        String answer = request.getParameter("answer");

        if (ques.trim().isEmpty() || choices == null || catid == null || answer == null) {
            getServletContext().getRequestDispatcher("/Search.jsp").forward(request, response);
        } else {
            int catidd = Integer.valueOf(request.getParameter("catid"));
            Question q = new Question();
            Answer a = new Answer();

            AddController ac = new AddController();
            q.setQuestName(ques);
            q.setCatId(catidd);
            ac.Addquestion(q);
            System.out.println(q);
            System.out.println("5555");
            QuestionController qc = new QuestionController();
            int answercor = Integer.valueOf(request.getParameter("answer"));
            ArrayList<Question> aq = qc.findquesbycatid(catidd);
            for (int i = 0; i < choices.length; i++) {
                a.setIsRight("F");
                if (i == answercor-1) {
                    a.setIsRight("T");
                }
                a.setAnsName(choices[i]);

                for (Question num : aq) {
                    a.setQuesId(Integer.valueOf(num.getQuestId()));
                    //System.out.println(num);
                }

                ac.Addchoice(a);
                System.out.println(a);
                System.out.println("6666");
            }

            response.sendRedirect("Question?catid=" + catidd);
        }

    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
