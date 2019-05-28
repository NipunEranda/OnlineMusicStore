package com.sliit.services;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.sliit.model.*;
import com.sliit.util.DBConnection;

public class GenreServiceImp implements Genreservice{
	
	private int size;
	private int count;
	private ArrayList<Genres> genre = null;
	private boolean status;
	private int genreId;
	private int tmp_genreId;
	private String genreName;
	private String genreDescription;


	@Override
	public boolean addGenre(Genres gen) throws SQLException, ClassNotFoundException {

		int Size = 0;
		ArrayList<Integer> idArray = new ArrayList<Integer>();

		PreparedStatement ps = DBConnection.getMainConnection().prepareStatement("select * from Genres");
		ResultSet rs = ps.executeQuery();

		while (rs.next()) {
			idArray.add(rs.getInt(1));
			++Size;
		}

		this.size = Size;
		this.size += 1;

		PreparedStatement ps1 = DBConnection.getTmpConnection().prepareStatement("select genreId from genre_tmp");
		ResultSet rs1 = ps1.executeQuery();

		while (rs1.next()) {
			if (rs1.getInt(1) > 0) {
				System.out.println(rs1.getInt(1));
				this.tmp_genreId = rs1.getInt(1);

			} else
				this.tmp_genreId = -1;
		}

		if (tmp_genreId > 0) {
			this.genreId = this.tmp_genreId;
		} else {
			this.genreId = this.size;
		}

		PreparedStatement ps2 = DBConnection.getMainConnection().prepareStatement("insert into Genres values("
				+ this.genreId + ", '" + gen.getGenreName() + "', '" + gen.getDescription() + "')");
		int res = ps2.executeUpdate();

		if (res > 0) {
			if (this.tmp_genreId > 0) {
				PreparedStatement ps3 = DBConnection.getTmpConnection()
						.prepareStatement("delete from genre_tmp where genreId = " + this.genreId);
				ps3.executeUpdate();
			}
			this.status = true;
		} else {
			this.status = false;
		}

		return status;
	}

	@Override
	public boolean updateGenre(Genres gen) throws SQLException, ClassNotFoundException {

		boolean status = true;

		PreparedStatement ps = DBConnection.getMainConnection()
				.prepareStatement("update Genres set GenreName = '" + gen.getGenreName() + "', GenreDescription = '"
						+ gen.getDescription() + "' where GenreId = '" + gen.getGenreId() + "'");
		int res = ps.executeUpdate();

		if (res > 0)
			status = true;
		else
			status = false;
		return status;
	}

	@Override
	public boolean removeGenre(int genreId) throws ClassNotFoundException, SQLException {
		boolean status = true;
		PreparedStatement ps = DBConnection.getMainConnection()
				.prepareStatement("Delete from Genres where genreId = " + genreId);
		int result = ps.executeUpdate();

		if (result > 0) {

			PreparedStatement ps1 = DBConnection.getTmpConnection()
					.prepareStatement("Insert into genre_tmp(genreId) values(" + genreId + ")");
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
	public ArrayList<Genres> getAllGenres() throws SQLException, ClassNotFoundException {

		PreparedStatement ps = DBConnection.getMainConnection().prepareStatement("select * from Genres");
		ResultSet result = ps.executeQuery();

		ArrayList<Genres> genre = new ArrayList<Genres>();

		while (result.next()) {
			genreId = result.getInt(1);
			genreName = result.getString(2);
			genreDescription = result.getString(3);

			genre.add(new Genres(genreId, genreName, genreDescription));
			++size;
		}

		if (size > 0) {
			this.genre = genre;
		} else
			this.genre = null;

		return this.genre;
	}

	@Override
	public int countGenres() throws SQLException, ClassNotFoundException {
			
			PreparedStatement ps = DBConnection.getMainConnection().prepareStatement("select count(*) from Genres");
			ResultSet rs = ps.executeQuery();
			
			while(rs.next())
				count = rs.getInt(1);
			
			if(count == 0)
				count = -1;
			
			return count;
			
		}
	
}
