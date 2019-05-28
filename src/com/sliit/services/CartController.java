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
@WebServlet("/CartController")
public class CartController extends HttpServlet{

		protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {

			response.sendRedirect("payments.jsp");
			/*
			rs.close();
			ps.close();*/
	   }
	}
