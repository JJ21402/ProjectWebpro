/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Servlet;

import Controller.UserController;
import com.sun.corba.se.impl.orbutil.ORBUtility;
import java.io.IOException;
import java.io.PrintWriter;
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
        if (request.getSession().getAttribute("user") == null) {
            response.sendRedirect("Login");
            return;
        };
        User u = new User();
        String fname = request.getParameter("fname");
//        String lname = request.getParameter("lname");
//        String email = request.getParameter("email");

        if (fname.equals(request.getParameter("fname"))) {
            UserController uc = new UserController();
            uc.editUserInfo(u);
            request.setAttribute("fname", u);

        }
        getServletContext().getRequestDispatcher("Profile.jsp").forward(request, response);

    }

//    getServletContext()
//
//.getRequestDispatcher("/Profile.jsp").forward(request, response);
//          HttpSession s1 = request.getSession();
//            String fname = request.getParameter("fname");
//        if (s1.getAttribute("user") != null) {
//            if (((User) s1.getAttribute("fname")).equals(fname)) {
//                User u = (User) s1.getAttribute("fname");
//                
//                s1.setAttribute("fname", fname);
//               UserController uc = new UserController();
//                uc.addNewUser(u);
//                
//               // s1.setAttribute("ListofQuiz", qc.getallquizzes((Members) s1.getAttribute("member")));
//                response.sendRedirect("MyQuiz.jsp");
//
//            }
//
//        } else {
//
//            response.sendRedirect("MyQuiz.jsp");
//        }
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
