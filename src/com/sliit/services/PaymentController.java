package com.sliit.services;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mysql.cj.Session;
import com.sliit.util.DBConnection;
import com.sun.corba.se.impl.logging.POASystemException;

@SuppressWarnings("serial")
@WebServlet("/PaymentController")
public class PaymentController extends HttpServlet{

	protected void doPost(HttpServletRequest request, HttpServletResponse response) {
		String cardNo = request.getParameter("cardNo");
		String firstName = request.getParameter("firstName");
		String lastName = request.getParameter("lastName");
		String address = request.getParameter("address");
		String postalCode = request.getParameter("postalCode");
		String phone = request.getParameter("phone");
		String uId = request.getParameter("uId");

		
		try {
			Connection conn = DBConnection.getMainConnection();
			PreparedStatement ps = conn.prepareStatement("insert into Payments values(" + uId + ", " + cardNo + ", '" + firstName + "', '" + lastName + "', '" + address + "', " + postalCode + ", '" + phone + "')");
			

			int res = ps.executeUpdate();
			if(res > 0)
				response.sendRedirect("payConfirm.jsp");

			ps.close();
			conn.close();
			return;
		} catch (Exception e) {
			 e.printStackTrace();
		}
	}
}
