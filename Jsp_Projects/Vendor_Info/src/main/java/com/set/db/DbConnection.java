package com.set.db;

import java.sql.Connection;
import java.sql.DriverManager;

public class DbConnection {

    static String DB_DRIVER = "com.mysql.cj.jdbc.Driver";
    static String URL = "jdbc:mysql://localhost:3306/VendorsList";
    static String USERNAME = "root";
    static String PASSWORD = "Akshaya216e@";

    public static Connection getConnection() throws Exception {
        Class.forName(DB_DRIVER);
        return DriverManager.getConnection(URL, USERNAME, PASSWORD);
    }
}
