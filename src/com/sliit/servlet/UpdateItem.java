package com.sliit.servlet;

import java.io.IOException;
import java.sql.*;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sliit.model.*;
import com.sliit.services.*;

@WebServlet("/UpdateItem")
public class UpdateItem extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		try {

			Customerservice cService = new CustomerServiceImp();
			Artistservice arService = new ArtistServiceImp();
			Albumservice aService = new AlbumServiceImp();
			Genreservice gService = new GenreServiceImp();
			Trackservice tService = new TrackServiceImp();

			if (request.getParameter("uid") != null) {

				String uid = request.getParameter("uid");
				String uName = request.getParameter("userName");
				String fName = request.getParameter("firstName");
				String lName = request.getParameter("lastName");
				String uEmail = request.getParameter("email");
				String telePhone = request.getParameter("telePhone");
				int uPostalCode = Integer.parseInt(request.getParameter("postalCode"));
				String uAddress = request.getParameter("address");
				int userType;
				
				if(request.getParameter("userType").equalsIgnoreCase("Granted"))
					userType = 1;
				else
					userType = 0;

				Customer c = new Customer();
				System.out.println(uid);

				c.setuId(Integer.parseInt(uid));
				c.setUserName(uName);
				c.setFirstName(fName);
				c.setLastName(lName);
				c.setEmail(uEmail);
				c.setTelephone(telePhone);
				c.setPostalCode(uPostalCode);
				c.setAddress(uAddress);
				c.setUserType(userType);

				if (cService.updateCustomer(c) == true)
					response.sendRedirect("/OnlineMusicStore/admin/components/userConfig.jsp");
				else
					response.sendRedirect("/OnlineMusicStore/admin/components/userProfile.jsp");

			} else if (request.getParameter("genreId") != null) {

				int genreId = Integer.parseInt(request.getParameter("genreId"));
				String genreName = request.getParameter("name");
				String genreDescription = request.getParameter("description");

				Genres g = new Genres(genreId, genreName, genreDescription);
				if (gService.updateGenre(g) == true)
					response.sendRedirect("/OnlineMusicStore/admin/components/genreConfig.jsp");

			} else if (request.getParameter("albumId") != null) {

				int albumId = Integer.parseInt(request.getParameter("albumId"));
				String albumName = request.getParameter("name");
				String albumDescription = request.getParameter("description");

				Albums a = new Albums(albumId, albumName, albumDescription);
				if (aService.updateAlbum(a))
					response.sendRedirect("/OnlineMusicStore/admin/components/albumConfig.jsp");

			} else if (request.getParameter("artistId") != null) {
				
				int artistId = Integer.parseInt(request.getParameter("artistId"));
				String artistName = request.getParameter("userName");
				String fName = request.getParameter("firstName");
				String lName = request.getParameter("lastName");
				String email = request.getParameter("email");
				String telePhone = request.getParameter("telephone");
				String password = request.getParameter("password");
				String address = request.getParameter("address");
				String artistDescription = request.getParameter("description");

				Artists a = new Artists(artistId, artistName, fName, lName, email, password, telePhone, address,
						artistDescription);
				if (arService.updateArtist(a))
					response.sendRedirect("/OnlineMusicStore/admin/components/artistConfig.jsp?status=all&id=" + Integer.parseInt(request.getParameter("artistId")));

			} else if (request.getParameter("trackId") != null) {

				int trackId = Integer.parseInt(request.getParameter("trackId"));
				String trackName = request.getParameter("trackName");
				int artistId = Integer.parseInt(request.getParameter("artistName"));
				int albumId = Integer.parseInt(request.getParameter("albumName"));
				int genreId = Integer.parseInt(request.getParameter("genreName"));
				String published = request.getParameter("published");
				String composer = request.getParameter("composer");
				int duration = Integer.parseInt(request.getParameter("duration"));
				double unitPrice = Double.parseDouble(request.getParameter("unitPrice"));

				Tracks t = new Tracks(trackId, trackName, albumId, artistId, genreId, published, composer, duration,
						unitPrice);
				
				if(tService.updateTrack(t))
					response.sendRedirect("/OnlineMusicStore/admin/components/songConfig.jsp");

			}

		} catch (ClassNotFoundException | SQLException e) {
			e.printStackTrace();
		}

	}

}
