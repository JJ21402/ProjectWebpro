/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Servlet;

import Controller.UserController;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import model.User;

/**
 *
 * @author bud
 */
public class ProfileServlet extends HttpServlet {

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
        response.setContentType("text/html;charset=UTF-8");       
            String fname = request.getParameter("fname");
            String lname = request.getParameter("lname");
            String email = request.getParameter("email");
            String username = request.getParameter("username");
            String password = request.getParameter("password");
            String conpassword = request.getParameter("conpassword");
            User u=(User)request.getSession().getAttribute("user");           
            UserController uc = new UserController();           

            if(fname.trim().isEmpty()||lname.trim().isEmpty()||email.trim().isEmpty()||username.trim().isEmpty()
                    ||password.trim().isEmpty()||conpassword.trim().isEmpty()){
                getServletContext().getRequestDispatcher("/Profile.jsp").forward(request, response);
            }else{
                if(password.equals(conpassword)){
                    u.setUserId(u.getUserId());
                    u.setFname(fname);
                    u.setLname(lname);
                    u.setEmail(email);
                    u.setUsername(username);
                    u.setPassword(password);
                    uc.editUser(u);                    
                    getServletContext().getRequestDispatcher("/Profile.jsp").forward(request, response);

                }
                request.setAttribute("msg","password not match");
                getServletContext().getRequestDispatcher("/Profile.jsp").forward(request, response);
            }
            getServletContext().getRequestDispatcher("/Profile.jsp").forward(request, response);
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
