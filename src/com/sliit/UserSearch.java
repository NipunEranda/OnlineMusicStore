package com.sliit;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;



@SuppressWarnings("serial")
@WebServlet("/UserSearch")
public class UserSearch extends HttpServlet {

	private int uId;
	private String userName;
	private String firstName;
	private String lastName;
	@SuppressWarnings("unused")
	private String email;
	private String image;
	private String telephone;
	private int postalCode;
	private String address;
	private int isAdmin;

	@SuppressWarnings("unused")
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");
		PrintWriter out = response.getWriter();

		String name = request.getParameter("name");
		String uName = request.getParameter("userName");
<<<<<<< HEAD
		String uEmail = request.getParameter("email");
=======
		String email = request.getParameter("email");
>>>>>>> 03077ad586be26d6fa9d0ea6801ad6a7ed818270

		ResultSet result = null;

		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection c = DriverManager.getConnection("jdbc:mysql://localhost:3306/MusicStore", "root", "4212");

<<<<<<< HEAD
			if (name.isEmpty() && uName.isEmpty() && uEmail.isEmpty()) {
				out.println("Please enter a value");
			} else if (name.isEmpty() && uEmail.isEmpty()) {
				PreparedStatement ps = c.prepareStatement("select * from Users where userName LIKE '%" + uName + "%'");
				ResultSet rs = ps.executeQuery();
				result = rs;
			} else if (name.isEmpty() && uName.isEmpty()) {
				PreparedStatement ps = c.prepareStatement("select * from Users where email LIKE '" + uEmail + "%'");
				ResultSet rs = ps.executeQuery();
				result = rs;
			} else if (uEmail.isEmpty() && uName.isEmpty()) {
				PreparedStatement ps = c.prepareStatement("select * from Users where firstName LIKE '" + name + "%'");
				ResultSet rs = ps.executeQuery();
				result = rs;
			} else if (uEmail.isEmpty()) {
				PreparedStatement ps = c.prepareStatement(
						"select * from Users where userName LIKE '%" + uName + "%' and firstName LIKE '" + name + "%'");
=======
			if (name.isEmpty() && uName.isEmpty() && email.isEmpty()) {
				out.println("Please enter a value");
			} else if (name.isEmpty() && email.isEmpty()) {
				PreparedStatement ps = c.prepareStatement("select * from Users where userName = '" + uName + "'");
				ResultSet rs = ps.executeQuery();
				result = rs;
			} else if (name.isEmpty() && uName.isEmpty()) {
				PreparedStatement ps = c.prepareStatement("select * from Users where email = '" + email + "'");
				ResultSet rs = ps.executeQuery();
				result = rs;
			} else if (email.isEmpty() && uName.isEmpty()) {
				PreparedStatement ps = c.prepareStatement("select * from Users where firstName LIKE '" + name + "%'");
				ResultSet rs = ps.executeQuery();
				result = rs;
			} else if (email.isEmpty()) {
				PreparedStatement ps = c.prepareStatement(
						"select * from Users where userName = '" + uName + "' and firstName LIKE '" + name + "%'");
>>>>>>> 03077ad586be26d6fa9d0ea6801ad6a7ed818270
				ResultSet rs = ps.executeQuery();
				result = rs;
			} else if (name.isEmpty()) {
				PreparedStatement ps = c.prepareStatement(
<<<<<<< HEAD
						"select * from Users where userName LIKE '%" + uName + "%' and email LIKE '" + uEmail + "%'");
=======
						"select * from Users where userName = '" + uName + "' and email = '" + email + "'");
>>>>>>> 03077ad586be26d6fa9d0ea6801ad6a7ed818270
				ResultSet rs = ps.executeQuery();
				result = rs;
			} else if (uName.isEmpty()) {
				PreparedStatement ps = c.prepareStatement(
<<<<<<< HEAD
						"select * from Users where firstName LIKE '" + name + "%' and email LIKE '" + uEmail + "%'");
				ResultSet rs = ps.executeQuery();
				result = rs;
			} else if (!(name.isEmpty() && uName.isEmpty() && uEmail.isEmpty())) {
				PreparedStatement ps = c.prepareStatement("select * from Users where firstName LIKE '" + name
						+ "%' and userName = '" + uName + "' and email = '" + uEmail + "'");
=======
						"select * from Users where firstName LIKE '" + name + "%' and email = '" + email + "'");
				ResultSet rs = ps.executeQuery();
				result = rs;
			} else if (!(name.isEmpty() && uName.isEmpty() && email.isEmpty())) {
				PreparedStatement ps = c.prepareStatement("select * from Users where firstName LIKE '" + name
						+ "%' and userName = '" + uName + "' and email = '" + email + "'");
>>>>>>> 03077ad586be26d6fa9d0ea6801ad6a7ed818270
				ResultSet rs = ps.executeQuery();
				result = rs;
			}

			ArrayList<Users> user = new ArrayList<Users>();
			

			while (result.next()) {

				this.uId = result.getInt(1);
				this.userName = result.getString(2);
				this.firstName = result.getString(3);
				this.lastName = result.getString(4);
				this.email = result.getString(5);
				this.image = result.getString(7);
				this.telephone = result.getString(8);
				this.postalCode = result.getInt(9);
				this.address = result.getString(10);
				this.isAdmin = result.getInt(11);

				user.add(new Users(uId, userName, firstName, lastName, email, image, telephone, postalCode, address,
						isAdmin));
			}
			
			HttpSession hs = request.getSession();
			hs.setAttribute("userSearchData", user);
			response.sendRedirect("/OnlineMusicStore/admin/components/userConfig.jsp?id=users");


		} catch (ClassNotFoundException | SQLException e) {
			e.printStackTrace();
		}

	}

}
