/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */

import java.io.*;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


public class isLogged extends HttpServlet {

    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        HttpSession session = req.getSession();
        String userEmail = (String) session.getAttribute("userEmail");

        if (userEmail == null) {
            RequestDispatcher dispatcher = req.getRequestDispatcher("Checkout/errornew.jsp");
            dispatcher.forward(req, resp);

        } else {
            RequestDispatcher dispatcher = req.getRequestDispatcher("Checkout/Checkoutnew.jsp");
            dispatcher.forward(req, resp);
        }
    }

    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

    }
}