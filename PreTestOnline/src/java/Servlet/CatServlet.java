/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Servlet;

import Controller.CategoryController;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import model.Category;

/**
 *
 * @author JJ
 */
public class CatServlet extends HttpServlet {

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
        String grade = request.getParameter("grade");
        
        System.out.println("xxxxx");
        System.out.println(grade);
       CategoryController cc = new CategoryController();
        System.out.println("1111");
        System.out.println(grade);
       if(grade.equals("a")){    
           System.out.println("55555");
          
          ArrayList<Category> cate = cc.selectallcat(1);
           HttpSession session = request.getSession();
           System.out.println(cate);
           
          session.setAttribute("cate",cate);
//           
//           System.out.println(cate);
           getServletContext().getRequestDispatcher("/Categorylist.jsp").forward(request, response);
           
        }
       if(grade.equals("b")){          
           ArrayList<Category> cate = cc.selectallcat(2);
           request.setAttribute("cate", cate);
           
            getServletContext().getRequestDispatcher("/Categorylist.jsp").forward(request, response);
       }
       if(grade.equals("c")){          
           ArrayList<Category> cate = cc.selectallcat(3);
           request.setAttribute("cate", cate);
            getServletContext().getRequestDispatcher("/Categorylist.jsp").forward(request, response);
       }
       if(grade.equals("d")){          
           ArrayList<Category> cate = cc.selectallcat(4);
           request.setAttribute("cate", cate);
            getServletContext().getRequestDispatcher("/Categorylist.jsp").forward(request, response);
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
