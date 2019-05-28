package com.sliit.services;

import java.sql.SQLException;
import java.util.ArrayList;

import com.sliit.model.Artists;

public interface Artistservice {

	public boolean addArtist(Artists art) throws ClassNotFoundException, SQLException;

	public boolean updateArtist(Artists art) throws ClassNotFoundException, SQLException;

	public boolean removeArtist(int artistId) throws ClassNotFoundException, SQLException;

	public ArrayList<Artists> searchArtist(String artistName) throws ClassNotFoundException, SQLException;
	
	public ArrayList<Artists> getAllArtists() throws SQLException, ClassNotFoundException;
	
	public int countArtists() throws ClassNotFoundException, SQLException;
	
	public String getArtistName(int artistId) throws ClassNotFoundException, SQLException;
	
}
