package com.sliit.services;

import com.sliit.util.*;
import java.io.IOException;
import java.sql.*;

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
			
			Connection conn = DBConnection.getMainConnection();

			/*User Login*/
			PreparedStatement ps = conn.prepareStatement(
					"select uId,userName,userType from Users where (email=? or userName=?) and password =?");

			ps.setString(1, un);
			ps.setString(2, un);
			ps.setString(3, pw);

			ResultSet rs = ps.executeQuery();

			while (rs.next()) {

				String userName = rs.getString("userName");
				int userType = rs.getInt("userType");
				HttpSession session = request.getSession();

				if (userName == "") {
					userName = un;
					session.setAttribute("name", un);
				} else {
					session.setAttribute("name", userName);
				}
				int id = rs.getInt("uId");
				session.setAttribute("id", id);

				if (userType == 0) {
					session.setAttribute("userType", 0);
					response.sendRedirect("homePage.jsp");
				} else {
					session.setAttribute("userType", 1);
					response.sendRedirect("admin/adminHome.jsp");
				}

				return;
			}

			/*Artist Login*/
			
			PreparedStatement ps1 = conn
					.prepareStatement("select artistId ,userName from Artists where (email=? or userName=?) and password =?");

			ps1.setString(1, un);
			ps1.setString(2, un);
			ps1.setString(3, pw);

			ResultSet rs1 = ps1.executeQuery();

			while (rs1.next()) {

				String artistName = rs1.getString("userName");
				HttpSession session = request.getSession();
				int id = rs1.getInt("artistId");

				if (artistName == "") {
					artistName = un;
					session.setAttribute("name", un);
				} else {
					session.setAttribute("name", artistName);
				}
				
				session.setAttribute("id", id);

				session.setAttribute("userType", 0);
				response.sendRedirect("Artist/artistIndex.jsp");

				return;
			}

			conn.close();

			response.sendRedirect("login.jsp?login=fail");
			return;
		} catch (ClassNotFoundException | SQLException e) {
			e.printStackTrace();
		}
	}

}
