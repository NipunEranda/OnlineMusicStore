package com.sliit.servlet;

import com.sliit.model.*;
import com.sliit.services.*;

import java.io.*;
import java.sql.*;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@SuppressWarnings("serial")
@WebServlet("/ItemSearch")
public class ItemSearch extends HttpServlet {

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");
		
		Customerservice cService = new CustomerServiceImp();
		Trackservice tService = new TrackServiceImp();
		Artistservice arService = new ArtistServiceImp();

		String name = request.getParameter("name");
		String uName = request.getParameter("userName");
		String uEmail = request.getParameter("email");

		String trackName = request.getParameter("trackName");
		String genreName = request.getParameter("genreName");
		String albumName = request.getParameter("albumName");
		String artistName = request.getParameter("artistName");
		
		String op = request.getParameter("op");
		
		try {
			
			if (name != null && op.equalsIgnoreCase("userSearch")) {
				
				ArrayList<Users> user;
				
				Users u = new Users();
				u.setFirstName(name);
				u.setUserName(uName);
				u.setEmail(uEmail);
				
				user = cService.searchUser(u);

				HttpSession hs = request.getSession();
				hs.setAttribute("userSearchData", user);
				response.sendRedirect("/OnlineMusicStore/admin/components/userConfig.jsp?status=result");
				
			}
			
			if(op.equalsIgnoreCase("artistSearch") && artistName != null) {
				ArrayList<Artists> artist;
				
				artist = arService.searchArtist(artistName);
				
				HttpSession hs = request.getSession();
				hs.setAttribute("artistSearchData", artist);
				response.sendRedirect("/OnlineMusicStore/admin/components/artistConfig.jsp?status=result");
			}
			
			if ((trackName != null || genreName != null || artistName != null || albumName != null) && op.equalsIgnoreCase("trackSearch")) {

				ArrayList<Tracks> track;
				
				track = tService.searchTrack(trackName, artistName, albumName, genreName);
				
				HttpSession hs = request.getSession();
				hs.setAttribute("trackSearchData", track);
				response.sendRedirect("/OnlineMusicStore/admin/components/songConfig.jsp?status=result");

			}

		} catch (ClassNotFoundException | SQLException e) {
			e.printStackTrace();
		}

	}

}
