package com.sliit;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import javax.servlet.annotation.WebServlet;

@SuppressWarnings("serial")
@WebServlet("/LoginController")
public class LoginController extends HttpServlet {

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String un = request.getParameter("email");
		String pw = request.getParameter("password");

		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection c = DriverManager.getConnection("jdbc:mysql://localhost:3306/MusicStore", "root", "4212");

			PreparedStatement ps = c.prepareStatement("select userName,isAdmin from Users where (email=? or userName=?) and password =?");
			
			ps.setString(1, un);
			ps.setString(2, un);
			ps.setString(3, pw);

			ResultSet rs = ps.executeQuery();

			while (rs.next()) {
				String userName = rs.getString("userName");
				int isAdmin = rs.getInt("isAdmin");
				HttpSession session = request.getSession();

				if (userName == "") {
					userName = un;
					session.setAttribute("name", un);
				} else {
					session.setAttribute("name", userName);
				}

				if (isAdmin == 0) {
					session.setAttribute("isAdmin", 0);
					response.sendRedirect("homePage.jsp");
				} else {
					session.setAttribute("isAdmin", 1);
					response.sendRedirect("admin/adminHome.jsp");
				}

				return;
			}

			rs.close();
			ps.close();
			c.close();

			response.sendRedirect("login.jsp");
			return;
		} catch (ClassNotFoundException | SQLException e) {
			e.printStackTrace();
		}
	}

}
