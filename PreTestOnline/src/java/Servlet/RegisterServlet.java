/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Servlet;

import Controller.UserController;
import java.io.IOException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
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
public class RegisterServlet extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");

        String fname = request.getParameter("fname");
        String lname = request.getParameter("lname");
        String email = request.getParameter("email");
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        String conpassword = request.getParameter("conpassword");
        UserController rd = new UserController();

        if (fname.isEmpty() || lname.isEmpty() || email.isEmpty() || username.isEmpty() || password.isEmpty()||conpassword.isEmpty()) {
            request.setAttribute("message", "Please fill out all information.");
            getServletContext().getRequestDispatcher("/Register.jsp").forward(request, response);
        } else {
            if(!password.equals(conpassword)){
                request.setAttribute("message", "password not match");
                getServletContext().getRequestDispatcher("/Register.jsp").forward(request, response);
            }
            if (rd.findByUsername(username) != null) {
                request.setAttribute("message", "Username has been used");
                getServletContext().getRequestDispatcher("/Register.jsp").forward(request, response);
            }
            
            User rb = new User( fname, lname, email, username, password);
            rd.addNewUser(rb);
            request.setAttribute("message", "Registered Successfully");
            getServletContext().getRequestDispatcher("/Login.jsp").forward(request, response);

        }

    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        getServletContext().getRequestDispatcher("/Register.jsp").forward(request, response);
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
}