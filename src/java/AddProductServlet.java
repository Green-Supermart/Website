/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import javax.servlet.ServletException;
//import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

//@WebServlet(name="AddProductServlet",value="/AddProductServlet")
public class AddProductServlet extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String productName = request.getParameter("productName");
        String productDesc = request.getParameter("productDesc");
        String category = request.getParameter("category");
        double originalPrice = Double.parseDouble(request.getParameter("originalPrice"));
        double discountPrice = Double.parseDouble(request.getParameter("discountedPrice"));
        String stockStatus = request.getParameter("stockStatus");
        double quantity = Double.parseDouble(request.getParameter("quantity"));
        double sku = Double.parseDouble(request.getParameter("sku"));

        // Connect to the database and add the product
        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/greendb", "admin", "Admin123$");

            String query = "INSERT INTO products (productName, productDesc, category, originalPrice, discountPrice, stockStatus, quantity, sku) VALUES (?, ?, ?, ?, ?, ?, ?, ?)";
            PreparedStatement pstmt = con.prepareStatement(query);
            pstmt.setString(1, productName);
            pstmt.setString(2, productDesc);
            pstmt.setString(3, category);
            pstmt.setDouble(4, originalPrice);
            pstmt.setDouble(5, discountPrice);
            pstmt.setString(6, stockStatus);
            pstmt.setDouble(7, quantity);
            pstmt.setDouble(8, sku);

            int result = pstmt.executeUpdate();

            if (result > 0) {
                response.sendRedirect("admin/products.jsp");
            } else {
                response.sendRedirect("admin/products/new.jsp");
            }
        } catch (Exception e) {
            // Handle exceptions appropriately
            PrintWriter out = response.getWriter();
            out.println("<html><head><title>Error Page</title></head><body>");
            out.println("<h1>Oops! An error occurred.</h1>");
            out.println("<p>Error Details: " + e.toString() + "</p>");
            out.println("</body></html>");
        }
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    public String getServletInfo() {
        return "Servlet that adds a product to the database";
    }
}
