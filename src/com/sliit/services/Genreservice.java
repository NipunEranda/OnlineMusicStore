package com.sliit.services;

import java.sql.SQLException;
import java.util.ArrayList;

import com.sliit.model.Genres;

public interface Genreservice {

	public boolean addGenre(Genres gen) throws ClassNotFoundException, SQLException;

	public boolean updateGenre(Genres gen) throws ClassNotFoundException, SQLException;

	public boolean removeGenre(int genreId) throws ClassNotFoundException, SQLException;

	public ArrayList<Genres> getAllGenres() throws SQLException, ClassNotFoundException;
	
	public int countGenres() throws SQLException, ClassNotFoundException;
	
}
