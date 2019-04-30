package com.sliit;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;




@SuppressWarnings("serial")
@WebServlet("/GuestLoginController")
public class GuestLoginController extends HttpServlet {


	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {


		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection c = DriverManager.getConnection("jdbc:mysql://localhost:3306/MusicStore", "root", "4212");

			PreparedStatement ps = c.prepareStatement("select count(*) from Users where userName LIKE ?");
			ps.setString(1, "guest%");

			ResultSet rs = ps.executeQuery();
			
			while(rs.next()) {
				HttpSession session = request.getSession();
				session.setAttribute("name", "guest");
				session.setAttribute("isAdmin", 0);
				response.sendRedirect("homePage.jsp");
			}
			
			rs.close();
			ps.close();

		} catch (ClassNotFoundException | SQLException e) {
			e.printStackTrace();
		}

	}

}
