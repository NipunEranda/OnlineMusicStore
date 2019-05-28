package com.sliit.services;

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

import com.sliit.util.DBConnection;

@SuppressWarnings("serial")
@WebServlet("/RegisterController")
public class RegisterController extends HttpServlet {
	protected void doPost(HttpServletRequest request, HttpServletResponse response){
		String username = request.getParameter("username");
		String firstName = request.getParameter("firstName");
		String lastName = request.getParameter("lastName");
		String email = request.getParameter("email");
		String password = request.getParameter("password");
		String phone = request.getParameter("phone");
		String address = request.getParameter("address");
		String postalCode = request.getParameter("postalCode");

		try {
			Connection conn = DBConnection.getMainConnection();
			PreparedStatement ps = conn.prepareStatement(
					"insert into Users (userName,firstName,lastName,email,password,telephone,address,postalCode,image,userType) values ('"
							+ username + "','" + firstName + "','" + lastName + "','" + email + "','" + password + "','"
							+ phone + "','" + address + "','" + postalCode + "','',0)");

			int res = ps.executeUpdate();
			if (res > 0)
				response.sendRedirect("login.jsp");

			ps.close();
			conn.close();
			return;
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}