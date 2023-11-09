package HostelM;

import java.sql.Connection;
import java.sql.DriverManager;

public class DatabaseConnection {

	
	public static Connection getConnection() {
        Connection connection = null;
        try {
            Class.forName("com.mysql.jdbc.Driver");
            connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/roomallocation", "root", "cf7oXIVIFhxQmb9");
        } catch (Exception e) {
            e.printStackTrace();
        }
        return connection;
    }

}
