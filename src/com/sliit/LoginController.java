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
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String un=request.getParameter("email");
		String pw=request.getParameter("password");
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
		Connection c = DriverManager.getConnection("jdbc:mysql://localhost:3306/MusicStore", "root", "4212");
 
		PreparedStatement ps = c.prepareStatement("select userName,password from Users where email=? and password =?");
		ps.setString(1, un);
		ps.setString(2, pw);
 
		ResultSet rs = ps.executeQuery();
 
		while (rs.next()) {
			response.sendRedirect("homePage.jsp");
			HttpSession session = request.getSession();
			session.setAttribute("name", un);
			return;
		}
		response.sendRedirect("login.jsp");
		return;
		} catch (ClassNotFoundException | SQLException e) {
			e.printStackTrace();
		}
	}

}

