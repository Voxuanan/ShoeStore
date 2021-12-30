package dao;

import java.sql.Connection;
import java.sql.DriverManager;

public class DungChung {
	public Connection cn;
	public void KetNoi() throws Exception {
		Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
		String connectionUrl = "jdbc:sqlserver://localhost:1433;databaseName=ShoeStore;user=sa;password=123";
		cn = DriverManager.getConnection(connectionUrl);
		System.out.println("Da ket noi CSDL");
		System.out.println("================");
	}
}
