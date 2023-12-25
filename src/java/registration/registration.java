package registration;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(name = "registration", urlPatterns = {"/registration"})
public class registration extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            String uemail = request.getParameter("email");
            String upass = request.getParameter("password");
            String conpass = request.getParameter("conpass");

            // Check if passwords match
            if (!upass.equals(conpass)) {
                out.println("Passwords do not match!");
                return;
            }

            // Register the user in the database
            if (registerUser(uemail, upass)) {
                // Registration successful
                response.sendRedirect("/Website/success.jsp");
            } else {
                // Registration failed
                out.println("Email is already registered or registration failed!");
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    private boolean registerUser(String email, String password) {
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/greenmart", "root1", "root1");

            // Check if the email is already registered before proceeding with the registration
            if (isEmailRegistered(email, con)) {
                return false;  // Email is already registered
            }

            PreparedStatement pst = con.prepareStatement("INSERT INTO accounts(uemail, upass) VALUES (?, ?)");
            pst.setString(1, email);
            pst.setString(2, password);

            // Execute the query
            int rowsAffected = pst.executeUpdate();

            // Close resources
            pst.close();
            con.close();

            // Return true if at least one row was affected (registration successful)
            return rowsAffected > 0;
        } catch (Exception e) {
            e.printStackTrace();
            // Handle the exception as needed
            return false;
        }
    }

    private boolean isEmailRegistered(String email, Connection con) {
        try {
            PreparedStatement pst = con.prepareStatement("SELECT COUNT(*) FROM accounts WHERE uemail = ?");
            pst.setString(1, email);
            ResultSet rs = pst.executeQuery();

            rs.next();
            int count = rs.getInt(1);

            // Return true if count is greater than 0 (email is registered), false otherwise
            return count > 0;
        } catch (Exception e) {
            e.printStackTrace();
            // Handle the exception as needed
            return false;
        }
    }
}
