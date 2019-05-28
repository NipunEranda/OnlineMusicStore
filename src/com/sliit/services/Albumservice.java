package com.sliit.services;

import java.sql.SQLException;
import java.util.ArrayList;

import com.sliit.model.Albums;

public interface Albumservice {

	public boolean addAlbum(Albums alb) throws ClassNotFoundException, SQLException;

	public boolean updateAlbum(Albums alb) throws ClassNotFoundException, SQLException;

	public boolean removeAlbum(int albumId) throws ClassNotFoundException, SQLException;

	public ArrayList<Albums> searchAlbum(Albums alb) throws ClassNotFoundException, SQLException;
	
	public ArrayList<Albums> getAllAlbums() throws SQLException, ClassNotFoundException;
	
	public int countAlbums() throws ClassNotFoundException, SQLException;
	
}
