package com.set.controller;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;


import com.set.db.DbConnection;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
@WebServlet("/RegisterServlet")
public class RegisterServlet extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String username = request.getParameter("username");
        String password = request.getParameter("password");
        String email = request.getParameter("email");

        try {
            Connection con = DbConnection.getConnection();

            String sql = "INSERT INTO users(username, password, email) VALUES (?, ?, ?)";
            PreparedStatement ps = con.prepareStatement(sql);

            ps.setString(1, username);
            ps.setString(2, password);
            ps.setString(3, email);

            ps.executeUpdate();
            con.close();

            response.sendRedirect("Vendor.jsp");

        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
