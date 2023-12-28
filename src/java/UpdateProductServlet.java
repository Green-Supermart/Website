/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */

import java.io.IOException;
import java.io.PrintWriter;
import static java.lang.Integer.parseInt;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

// @WebServlet("/UpdateProductServlet")
public class UpdateProductServlet extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");

        String productName = request.getParameter("productName");
        String productDesc = request.getParameter("productDesc");
        String category = request.getParameter("category");
        double originalPrice = Double.parseDouble(request.getParameter("originalPrice"));
        int discountPercentage = parseInt(request.getParameter("discountPercentage"));
        String stockStatus = request.getParameter("stockStatus");
        double quantity = Double.parseDouble(request.getParameter("quantity"));
        double sku = Double.parseDouble(request.getParameter("sku"));
        String imgLink = request.getParameter("imgLink");
        int id = parseInt(request.getParameter("id"));

        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/greendb", "admin", "Admin123$");
            // String query = "UPDATE products SET productName = '" + productName + "', productDesc = '" + productDesc + "', category = '" + category + "', originalPrice = '" + originalPrice + "', discountPercentage = '" + discountPercentage + "', stockStatus = '" + stockStatus + "', quantity = '" + quantity + "', sku = '" + sku + "', imgLink = '" + imgLink + "' WHERE id = " + request.getParameter("id");
            String query = "UPDATE products SET productName = ?, productDesc = ?, category = ?, originalPrice = ?, discountPercentage = ?, stockStatus = ?, quantity = ?, sku = ?, imgLink = ? WHERE id = ?";

            PreparedStatement pstmt = conn.prepareStatement(query);
            pstmt.setString(1, productName);
            pstmt.setString(2, productDesc);
            pstmt.setString(3, category);
            pstmt.setDouble(4, originalPrice);
            pstmt.setInt(5, discountPercentage);
            pstmt.setString(6, stockStatus);
            pstmt.setDouble(7, quantity);
            pstmt.setDouble(8, sku);
            pstmt.setString(9, imgLink);
            pstmt.setInt(10, id);

            int result = pstmt.executeUpdate();
            if (result == 0) {
                System.out.println("No rows were updated. Check the id: " + id);
            }

            response.sendRedirect("admin/products.jsp");

        } catch (Exception e) {
            e.printStackTrace();
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
        return "Short description";
    }
}
