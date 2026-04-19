package com.example.demo;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.io.PrintWriter;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;

@WebServlet(name = "HelloServlet", urlPatterns = {"/hello"})
public class HelloServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html");
        response.setCharacterEncoding("UTF-8");
        
        PrintWriter out = response.getWriter();
        String currentTime = LocalDateTime.now().format(DateTimeFormatter.ofPattern("yyyy-MM-dd HH:mm:ss"));
        
        // Generating a simple clean HTML response with Bootstrap
        out.println("<!DOCTYPE html>");
        out.println("<html lang='en'>");
        out.println("<head>");
        out.println("    <meta charset='UTF-8'>");
        out.println("    <title>Hello Servlet</title>");
        out.println("    <link href='https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css' rel='stylesheet'>");
        out.println("</head>");
        out.println("<body class='bg-light'>");
        out.println("    <div class='container text-center mt-5'>");
        out.println("        <div class='card shadow-sm border-0 p-5'>");
        out.println("            <h1 class='text-primary fw-bold'>Hello from Servlet!</h1>");
        out.println("            <p class='lead mt-3'>Current Server Time:</p>");
        out.println("            <h3 class='text-success'>" + currentTime + "</h3>");
        out.println("            <div class='mt-4'>");
        out.println("                <a href='index.jsp' class='btn btn-outline-secondary px-4'>Back to Home</a>");
        out.println("            </div>");
        out.println("        </div>");
        out.println("    </div>");
        out.println("</body>");
        out.println("</html>");
    }
}
