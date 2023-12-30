/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */

import java.io.*;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


public class verifyOTP extends HttpServlet {

    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

    }

    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String userEnteredOTP = req.getParameter("userEnteredOTP");

        HttpSession session = req.getSession();
        String sentOTP = (String) session.getAttribute("sentOTP");

        if (isCorrectEmail(userEnteredOTP, sentOTP)) {
            resp.sendRedirect("/login/resetPassword.jsp");
        } else {
            System.out.println("Email is not valid");
            resp.sendRedirect("/login/error.jsp");
        }
    }

    private boolean isCorrectEmail(String userEnteredOTP, String sentOTP) {
        if (userEnteredOTP.equals(sentOTP)) {
            return true;
        } else {
            return false;
        }
    }
}