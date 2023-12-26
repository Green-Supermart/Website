/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package login;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class login extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String email = request.getParameter("uemail");
        String password = request.getParameter("upass");

        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/greenmart", "root1", "root1");
            PreparedStatement ps = conn.prepareStatement("SELECT * FROM accounts WHERE uemail = ?");
            ps.setString(1, email);
            ResultSet rs = ps.executeQuery();

            if (rs.next()) {
                String dbPassword = rs.getString("upass");
                if (dbPassword.equals(password)) {
                    response.sendRedirect("/Website");
                } else {
                    response.sendRedirect("/Website/login/error.jsp");
                }
            } else {
                response.sendRedirect("/Website/login/error.jsp");
            }

        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}