package com.sliit.servlet;

import java.io.IOException;
import java.sql.*;
import com.sliit.model.*;
import com.sliit.services.*;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class AddItem
 */
@WebServlet("/AddItem")
public class AddItem extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		try {
			
			Genreservice gService = new GenreServiceImp();
			Albumservice aService = new AlbumServiceImp();
			Artistservice arService = new ArtistServiceImp();

			String genrename = request.getParameter("genreName");
			String genredescription = request.getParameter("genreDescription");

			String albumname = request.getParameter("albumName");
			String albumdescription = request.getParameter("albumDescription");

			String artistname = request.getParameter("artistName");

			if (genrename != null) { // Add Genre
					
				Genres g = new Genres(genrename, genredescription);
				if(gService.addGenre(g))
					response.sendRedirect("/OnlineMusicStore/admin/components/genreConfig.jsp");
				

			} else if (albumname != null) { // Add Album

				Albums a = new Albums(albumname, albumdescription);
				if(aService.addAlbum(a))
					response.sendRedirect("/OnlineMusicStore/admin/components/albumConfig.jsp");
				
			} else if (artistname != null) { // Add Artist

				String artistdescription = request.getParameter("description");
				String firstName = request.getParameter("firstName");
				String lastName = request.getParameter("lastName");
				String email = request.getParameter("email");
				String telephone = request.getParameter("telephone");
				String address = request.getParameter("address");

				Artists a = new Artists(artistname, firstName, lastName, email, telephone, address, artistdescription);
				if(arService.addArtist(a))
					response.sendRedirect("/OnlineMusicStore/admin/components/artistConfig.jsp?status=all");
			}

		} catch (ClassNotFoundException |

				SQLException e) {
			e.printStackTrace();
		}

	}

}
