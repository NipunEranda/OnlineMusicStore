package com.sliit.services;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.sliit.model.*;
import com.sliit.util.DBConnection;

public class TrackServiceImp implements Trackservice{
	
	private int size;
	private int count;
	private ResultSet result;
	private ArrayList<Tracks> track = null;
	private int trackId;
	private String trackName;
	private int albumId;
	private int artistId;
	private int genreId;
	private String published;
	private String composer;
	private int milliseconds;
	private double unitPrice;

	@Override
	public boolean addTrack(Tracks tra) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public boolean updateTrack(Tracks tra) throws ClassNotFoundException, SQLException {

		boolean status = true;

		PreparedStatement ps = DBConnection.getMainConnection()
				.prepareStatement("update Tracks set TrackName = '" + tra.getTrackName() + "', AlbumId = "
						+ tra.getAlbumId() + ", ArtistId = " + tra.getArtistId() + ", GenreId = " + tra.getGenreId()
						+ ", Published = '" + tra.getPublished() + "', Composer = '" + tra.getComposer()
						+ "', Milliseconds = " + tra.getMilliSeconds() + ", UnitPrice = " + tra.getUnitPrice() + " where TrackId = "
						+ tra.getTrackId());

		int res = ps.executeUpdate();

		if (res > 0)
			status = true;
		else
			status = false;
		return status;
	}

	@Override
	public boolean removeTrack(int trackId) throws ClassNotFoundException, SQLException {
		
		boolean status = true;

		PreparedStatement ps = DBConnection.getMainConnection()
				.prepareStatement("Delete from Tracks where TrackId = " + trackId);
		int result = ps.executeUpdate();
		if (result > 0) {

			PreparedStatement ps1 = DBConnection.getTmpConnection()
					.prepareStatement("Insert into track_tmp(trackId) values(" + trackId + ")");
			int tmpResult = ps1.executeUpdate();

			if (tmpResult > 0) {
				status = true;
			} else
				status = false;
		} else
			status = false;
		return status;
	}

	@Override
	public ArrayList<Tracks> searchTrack(String trackName, String artistName, String albumName, String genreName)
			throws ClassNotFoundException, SQLException {

		if (trackName != null || genreName != null || artistName != null || albumName != null) {

			if (trackName.isEmpty() && genreName.isEmpty() && artistName.isEmpty() && albumName.isEmpty()) {
				this.track = null;

			} else if (trackName.isEmpty() && genreName.isEmpty() && artistName.isEmpty()) {

				PreparedStatement ps = DBConnection.getMainConnection().prepareStatement(
						"select * from Tracks where AlbumId in (select AlbumId from Albums where AlbumName LIKE '%"
								+ albumName + "%')");
				ResultSet rs = ps.executeQuery();
				result = rs;

			} else if (trackName.isEmpty() && genreName.isEmpty() && albumName.isEmpty()) {

				PreparedStatement ps = DBConnection.getMainConnection().prepareStatement(
						"select * from Tracks where ArtistId in (select ArtistId from Artists where userName LIKE '%"
								+ artistName + "%')");
				ResultSet rs = ps.executeQuery();
				result = rs;

			} else if (trackName.isEmpty() && albumName.isEmpty() && artistName.isEmpty()) {

				PreparedStatement ps = DBConnection.getMainConnection().prepareStatement(
						"select * from Tracks where GenreId in (select GenreId from Genres where GenreName LIKE '%"
								+ genreName + "%')");
				ResultSet rs = ps.executeQuery();
				result = rs;

			} else if (albumName.isEmpty() && artistName.isEmpty() && genreName.isEmpty()) {

				PreparedStatement ps = DBConnection.getMainConnection()
						.prepareStatement("select * from Tracks where TrackName LIKE '%" + trackName + "%'");
				ResultSet rs = ps.executeQuery();
				result = rs;

			} else if (trackName.isEmpty() && genreName.isEmpty()) {

				PreparedStatement ps = DBConnection.getMainConnection().prepareStatement(
						"select * from Tracks where AlbumId in (select AlbumId from Albums where AlbumName LIKE '%"
								+ albumName + "%') and ArtistId in (select ArtistId from Artists where userName LIKE '%"
								+ artistName + "%')");
				ResultSet rs = ps.executeQuery();
				result = rs;

			} else if (trackName.isEmpty() && artistName.isEmpty()) {

				PreparedStatement ps = DBConnection.getMainConnection().prepareStatement(
						"select * from Tracks where AlbumId in (select AlbumId from Albums where AlbumName LIKE '%"
								+ albumName + "%') and GenreId in (select GenreId from Genres where GenreName LIKE '%"
								+ genreName + "%')");
				ResultSet rs = ps.executeQuery();
				result = rs;

			} else if (trackName.isEmpty() && albumName.isEmpty()) {

				PreparedStatement ps = DBConnection.getMainConnection().prepareStatement(
						"select * from Tracks where ArtistId in (select ArtistId from Artists where userName LIKE '%"
								+ artistName + "%') and GenreId in (select GenreId from Genres where GenreName LIKE '%"
								+ genreName + "%')");
				ResultSet rs = ps.executeQuery();
				result = rs;

			} else if (genreName.isEmpty() && artistName.isEmpty()) {

				PreparedStatement ps = DBConnection.getMainConnection()
						.prepareStatement("select * from Tracks where TrackName LIKE '%" + trackName
								+ "%' and AlbumId in (select AlbumId from Albums where AlbumName LIKE '%" + albumName
								+ "%')");
				ResultSet rs = ps.executeQuery();
				result = rs;

			} else if (genreName.isEmpty() && albumName.isEmpty()) {

				PreparedStatement ps = DBConnection.getMainConnection()
						.prepareStatement("select * from Tracks where TrackName LIKE '%" + trackName
								+ "%' and ArtistId in (select ArtistId from Artists where userName LIKE '%" + artistName
								+ "%')");
				ResultSet rs = ps.executeQuery();
				result = rs;

			} else if (artistName.isEmpty() && albumName.isEmpty()) {

				PreparedStatement ps = DBConnection.getMainConnection()
						.prepareStatement("select * from Tracks where TrackName LIKE '%" + trackName
								+ "%' and GenreId in (select GenreId from Genres where GenreName LIKE '%" + genreName
								+ "%')");
				ResultSet rs = ps.executeQuery();
				result = rs;

			} else if (trackName.isEmpty()) {

				PreparedStatement ps = DBConnection.getMainConnection().prepareStatement(
						"select * from Tracks where ArtistId in (select ArtistId from Artists where userName LIKE '%"
								+ artistName + "%') and AlbumId in (select AlbumId from Albums where AlbumName LIKE '%"
								+ albumName + "%') and GenreId in (select GenreId from Genres where GenreName LIKE '%"
								+ genreName + "%');");
				ResultSet rs = ps.executeQuery();
				result = rs;

			} else if (genreName.isEmpty()) {

				PreparedStatement ps = DBConnection.getMainConnection()
						.prepareStatement("select * from Tracks where TrackName LIKE '%" + trackName
								+ "%'  and AlbumId in (select AlbumId from Albums where AlbumName LIKE '%" + albumName
								+ "%') and ArtistId in (select ArtistId from Artists where userName LIKE '%"
								+ artistName + "%');");
				ResultSet rs = ps.executeQuery();
				result = rs;

			} else if (artistName.isEmpty()) {

				PreparedStatement ps = DBConnection.getMainConnection()
						.prepareStatement("select * from Tracks where TrackName LIKE '%" + trackName
								+ "%'  and AlbumId in (select AlbumId from Albums where AlbumName LIKE '%" + albumName
								+ "%') and GenreId in (select GenreId from Genres where GenreName LIKE '%" + genreName
								+ "%');");
				ResultSet rs = ps.executeQuery();
				result = rs;

			} else if (albumName.isEmpty()) {

				PreparedStatement ps = DBConnection.getMainConnection()
						.prepareStatement("select * from Tracks where TrackName LIKE '%" + trackName
								+ "%'  and ArtistId in (select ArtistId from Artists where userName LIKE '%"
								+ artistName + "%') and GenreId in (select GenreId from Genres where GenreName LIKE '%"
								+ genreName + "%');");
				ResultSet rs = ps.executeQuery();
				result = rs;

			} else if (!(trackName.isEmpty() && genreName.isEmpty() && artistName.isEmpty() && albumName.isEmpty())) {

				PreparedStatement ps = DBConnection.getMainConnection()
						.prepareStatement("select * from Tracks where TrackName LIKE '%" + trackName
								+ "%'  and ArtistId in (select ArtistId from Artists where userName LIKE '%"
								+ artistName + "%') and GenreId in (select GenreId from Genres where GenreName LIKE '%"
								+ genreName + "%') and AlbumId in (select AlbumId from Albums where AlbumName LIKE '%"
								+ albumName + "%');");
				ResultSet rs = ps.executeQuery();
				result = rs;

			}
			ArrayList<Tracks> track = new ArrayList<Tracks>();

			while (result.next()) {
				this.trackId = result.getInt(1);
				this.trackName = result.getString(2);
				this.albumId = result.getInt(3);
				this.artistId = result.getInt(4);
				this.genreId = result.getInt(5);
				this.published = result.getString(6);
				this.composer = result.getString(7);
				this.milliseconds = result.getInt(8);
				this.unitPrice = result.getDouble(9);

				track.add(new Tracks(trackId, this.trackName, albumId, artistId, genreId, published, composer,
						milliseconds, unitPrice));
				++this.size;
			}

			if (this.size > 0) {
				this.track = track;
			}
		} else {
			this.track = null;
		}
		return this.track;
	}
	
	@Override
	public ArrayList<Tracks> getAllTracks() throws SQLException, ClassNotFoundException {

		PreparedStatement ps = DBConnection.getMainConnection().prepareStatement("select * from Tracks");
		ResultSet result = ps.executeQuery();

		ArrayList<Tracks> track = new ArrayList<Tracks>();

		while (result.next()) {
			trackId = result.getInt(1);
			trackName = result.getString(2);
			albumId = result.getInt(3);
			artistId = result.getInt(4);
			genreId = result.getInt(5);
			published = result.getString(6);
			composer = result.getString(7);
			milliseconds = result.getInt(8);
			unitPrice = result.getDouble(9);

			track.add(new Tracks(trackId, trackName, albumId, artistId, genreId, published, composer, milliseconds,
					unitPrice));
			++size;
		}

		if (size > 0)
			this.track = track;
		else
			this.track = null;

		return this.track;
	}

	@Override
	public int countTracks() throws ClassNotFoundException, SQLException {
		
		PreparedStatement ps = DBConnection.getMainConnection().prepareStatement("select count(*) from Tracks");
		ResultSet rs = ps.executeQuery();
		
		while(rs.next())
			count = rs.getInt(1);
		
		if(count == 0)
			count = -1;
		
		return count;

	}
	
}
