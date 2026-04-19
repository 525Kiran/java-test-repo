package com.example.demo;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

@WebServlet(name = "DashboardServlet", urlPatterns = {"/submitDashboard"})
public class DashboardServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Collect form data
        String username = request.getParameter("username");
        String actionType = request.getParameter("actionType");
        
        // Basic validation and default assignment
        if (username == null || username.trim().isEmpty()) {
            username = "Anonymous User";
        }
        
        if (actionType == null || actionType.trim().isEmpty()) {
            actionType = "No Action Specified";
        }
        
        // Pass processed data to the JSP view via request attributes
        request.setAttribute("username", username);
        request.setAttribute("actionType", actionType);
        
        // Forward to the restricted result page located securely under WEB-INF
        request.getRequestDispatcher("/WEB-INF/views/result.jsp").forward(request, response);
    }
}
