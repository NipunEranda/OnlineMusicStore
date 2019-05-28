package com.sliit.util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DBConnection {

	private static Connection main;
	private static Connection tmp;

	public static Connection getMainConnection() throws ClassNotFoundException, SQLException {

		if (main == null || main.isClosed()) {
			Class.forName("com.mysql.jdbc.Driver");
			main = DriverManager.getConnection("jdbc:mysql://localhost:3306/MusicStore", "root", "4212");
		}

		return main;

	}

	public static Connection getTmpConnection() throws ClassNotFoundException, SQLException {

		if (tmp == null || tmp.isClosed()) {
			Class.forName("com.mysql.jdbc.Driver");
			tmp = DriverManager.getConnection("jdbc:mysql://localhost:3306/tmp", "root", "4212");
		}

		return tmp;

	}

	public static void tmpclose() throws SQLException {
		tmp.close();
	}
	
	public static void mainclose() throws SQLException {
		tmp.close();
	}

}
