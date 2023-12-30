/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */

import java.io.*;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


public class getUserData extends HttpServlet {

    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        HttpSession session = req.getSession();
        String uemail = (String) session.getAttribute("uemail");

        if (uemail == null) {
            RequestDispatcher dispatcher = req.getRequestDispatcher("login.jsp");
            dispatcher.forward(req, resp);
        } else {
            String uname = "";
            String address = "";
            String upass = "";

            Connection connection = null;

            try {
                connection = dbConnection.getConnection();

                String query = "SELECT uname, address, upass FROM accounts WHERE uemail = ?";
                PreparedStatement preparedStatement = connection.prepareStatement(query);
                preparedStatement.setString(1, uemail);

                ResultSet resultSet = preparedStatement.executeQuery();
                if (resultSet.next()) {
                    uname = resultSet.getString("uname");
                    address = resultSet.getString("address");
                    upass = resultSet.getString("upass");
                }
            } catch (SQLException e) {
                e.printStackTrace();
                System.out.println(e);
            } finally {
                try {
                    if (connection != null) {
                        dbConnection.closeConnection(connection);
                    }
                } catch (SQLException e) {
                    e.printStackTrace();
                }
            }

            req.setAttribute("uname", uname);
            req.setAttribute("address", address);
            req.setAttribute("uemail", uemail);

            session.setAttribute("address", address);

            RequestDispatcher dispatcher = req.getRequestDispatcher("account.jsp");
            dispatcher.forward(req, resp);
        }


    }

    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

    }
}