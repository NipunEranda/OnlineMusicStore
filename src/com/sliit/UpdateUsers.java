package com.sliit;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/UpdateUsers")
public class UpdateUsers extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String uid = request.getParameter("id");
		String uName = request.getParameter("userName");
		String fName = request.getParameter("firstName");
		String lName = request.getParameter("lastName");
		String uEmail = request.getParameter("email");
		String telePhone = request.getParameter("telePhone");
		int uPostalCode = Integer.parseInt(request.getParameter("postalCode"));
		String uAddress = request.getParameter("address");

		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection c = DriverManager.getConnection("jdbc:mysql://localhost:3306/MusicStore", "root", "4212");

			PreparedStatement ps1 = c.prepareStatement(
					"update Users set userName = '" + uName + "', firstName = '" + fName + "', lastName = '" + lName
							+ "', email = '" + uEmail + "', telephone = '" + telePhone + "', postalCode = "
							+ uPostalCode + ", address = '" + uAddress + "' where uId = " + Integer.parseInt(uid));
			int result = ps1.executeUpdate();
			if (result > 0) {
				response.sendRedirect("/OnlineMusicStore/admin/components/userConfig.jsp?status=successfull");
			}else {
				response.sendRedirect("/OnlineMusicStore/admin/components/userConfig.jsp?status=unsuccessfull");
			}

			ps1.close();
			c.close();
		} catch (ClassNotFoundException | SQLException e) {
			e.printStackTrace();
		}

	}

}
