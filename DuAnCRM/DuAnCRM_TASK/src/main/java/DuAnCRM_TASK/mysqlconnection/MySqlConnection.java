package DuAnCRM_TASK.mysqlconnection;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class MySqlConnection {
	private static final String URL = "jdbc:mysql://localhost:3306/crm";
	private static final String NAME = "root";
	private static final String PASSWORD = "1234";
	private static Connection connection = null;

	public static Connection getConnection() {
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			if (connection == null)
				return DriverManager.getConnection(URL, NAME, PASSWORD);

			return connection;

		} catch (ClassNotFoundException e) {
			System.out.println("Driver could not found");
		} catch (SQLException ex) {
			System.out.println("Database connection could not establish.");
		}
		return null;
	}

}