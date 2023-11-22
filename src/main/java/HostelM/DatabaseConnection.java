package HostelM;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DatabaseConnection {

	
	 public static Connection getConnection() throws SQLException {
	        String jdbcUrl = "jdbc:mysql://localhost:3306/cutm";
	        String username = "root";
	        String password = "cf7oXIVIFhxQmb9";

	        return DriverManager.getConnection(jdbcUrl, username, password);
	    }
    }


