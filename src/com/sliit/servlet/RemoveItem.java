package com.sliit.servlet;

import java.io.IOException;
import java.sql.*;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sliit.services.*;

@WebServlet("/RemoveItem")
public class RemoveItem extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String uid = request.getParameter("id");
		String genreId = request.getParameter("genreId");
		String albumId = request.getParameter("albumId");
		String artistId = request.getParameter("artistId");
		String trackId = request.getParameter("trackId");

		try {
			
			Customerservice cService = new CustomerServiceImp();
			Genreservice gService = new GenreServiceImp();
			Albumservice aService = new AlbumServiceImp();
			Artistservice arService = new ArtistServiceImp();
			Trackservice tService = new TrackServiceImp();

			if (uid != null) {

				if(cService.removeCustomer(Integer.parseInt(uid)))
					response.sendRedirect("/OnlineMusicStore/admin/components/userConfig.jsp");
			}

			if (genreId != null) {
				if(gService.removeGenre(Integer.parseInt(genreId)))
					response.sendRedirect("/OnlineMusicStore/admin/components/genreConfig.jsp");
			}

			if (albumId != null) {
				
				if(aService.removeAlbum(Integer.parseInt(albumId)))
					response.sendRedirect("/OnlineMusicStore/admin/components/albumConfig.jsp");
				
			}
			
			if(artistId != null) {
				if(arService.removeArtist(Integer.parseInt(artistId)))
					response.sendRedirect("/OnlineMusicStore/admin/components/artistConfig.jsp?status=all");
			}
			
			if(trackId != null) {
				if(tService.removeTrack(Integer.parseInt(trackId)))
					response.sendRedirect("/OnlineMusicStore/admin/components/songConfig.jsp");
			}

		} catch (ClassNotFoundException | SQLException e) {
			e.printStackTrace();
		}

	}

}