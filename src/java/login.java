/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */

import java.io.*;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


public class login extends HttpServlet {

    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        resp.sendRedirect("login.jsp");
    }

    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String uemail = req.getParameter("uemail");
        String upass = req.getParameter("upass");

        Connection connection = null;
        PreparedStatement statement = null;
        ResultSet resultSet = null;

        try {
            connection = dbConnection.getConnection();
            String sql = "SELECT * FROM accounts WHERE uemail = ? AND upass = ?";
            statement = connection.prepareStatement(sql);
            statement.setString(1, uemail);
            statement.setString(2, upass);

            resultSet = statement.executeQuery();

            if (resultSet.next()) {
                HttpSession session = req.getSession();
                session.setAttribute("uemail", uemail);
                resp.sendRedirect("/Website/getUserData");
            } else {
                resp.sendRedirect("/Website/login/error.jsp");
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            try {
                if (resultSet != null) resultSet.close();
                if (statement != null) statement.close();
                if (connection != null) dbConnection.closeConnection(connection);
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
    }
}