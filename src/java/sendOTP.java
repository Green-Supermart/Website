/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */

import java.io.*;
import java.util.Random;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


public class sendOTP extends HttpServlet {

    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

    }

    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String otp = generateRandomOTP();

        HttpSession session = req.getSession();
        session.setAttribute("sentOTP", otp);

        String recipientEmail = req.getParameter("emailForOTP");

        session.setAttribute("userEmail", recipientEmail);

        try {
            sendEmail.emailConfiguration(recipientEmail, "Green Supermart Account Verification OTP", "Your OTP code for verification is:" + otp);
        } catch (Exception e) {
            e.printStackTrace();
        }

        RequestDispatcher dispatcher = req.getRequestDispatcher("/login/verify.jsp");
        dispatcher.forward(req, resp);
    }

    private String generateRandomOTP() {
        Random random = new Random();
        int otp = 100000 + random.nextInt(900000);

        return String.valueOf(otp);
    }
}