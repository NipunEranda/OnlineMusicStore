package com.sliit.services;

import java.sql.SQLException;
import java.util.ArrayList;

import com.sliit.model.Tracks;

public interface Trackservice {
	public boolean addTrack(Tracks tra) throws ClassNotFoundException, SQLException;

	public boolean updateTrack(Tracks tra) throws ClassNotFoundException, SQLException;

	public boolean removeTrack(int trackId) throws ClassNotFoundException, SQLException;

	public ArrayList<Tracks> searchTrack(String trackName, String artistName, String albumName, String genreName)
			throws ClassNotFoundException, SQLException;

	public ArrayList<Tracks> getAllTracks() throws SQLException, ClassNotFoundException;
	
	public int countTracks() throws ClassNotFoundException, SQLException;
}
