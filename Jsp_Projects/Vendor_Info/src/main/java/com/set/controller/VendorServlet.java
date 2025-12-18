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
@WebServlet("/VendorServlet")
public class VendorServlet extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String name = request.getParameter("vendorName");
        String email = request.getParameter("vendorEmail");
        String gst = request.getParameter("vendorGst");
        String address = request.getParameter("vendorAddress");

        try {
            Connection con = DbConnection.getConnection();

            String sql = "INSERT INTO vendors(vendor_name, vendor_email, vendor_gst, vendor_address) VALUES (?, ?, ?, ?)";
            PreparedStatement ps = con.prepareStatement(sql);

            ps.setString(1, name);
            ps.setString(2, email);
            ps.setString(3, gst);
            ps.setString(4, address);

            ps.executeUpdate();
            con.close();

            response.getWriter().println("<h2>Vendor Registered Successfully</h2>");

        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
