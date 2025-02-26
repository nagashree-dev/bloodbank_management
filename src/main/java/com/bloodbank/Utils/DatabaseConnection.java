package com.bloodbank.utils;




import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DatabaseConnection {
//    private static final String URL = "jdbc:mysql://localhost:3306/bloodbank";
//    private static final String USER = "root";  // Change if you have a different username
//    private static final String PASSWORD = "root";  // Change if you have a password
//
//    public static Connection getConnection() throws SQLException {
//        try {
//            Class.forName("com.mysql.cj.jdbc.Driver");
//            return DriverManager.getConnection(URL, USER, PASSWORD);
//        } catch (ClassNotFoundException e) {
//            throw new SQLException("Database Driver not found!", e);
//        }
//    }
//}


 
        private static final String DB_URL = System.getenv("mysql://root:cbwxNkVYBqFKmBHSvNZAJIcaHfqenYnl@hopper.proxy.rlwy.net:39668/railway");

        public static Connection getConnection() throws SQLException {
            try {
                Class.forName("com.mysql.cj.jdbc.Driver");

                if (DB_URL != null) {
                    String[] parts = DB_URL.split("\\?");
                    String connectionUrl = parts[0]; // Remove extra parameters

                    String username = "root"; // Extract from Railway URL
                    String password = "root"; // Extract from Railway URL

                    return DriverManager.getConnection(connectionUrl, username, password);
                } else {
                    throw new RuntimeException("Database URL not found in environment variables!");
                }
            } catch (ClassNotFoundException e) {
                throw new SQLException("MySQL Driver not found!", e);
            }
        }
    }
