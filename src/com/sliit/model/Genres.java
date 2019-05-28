package com.sliit.model;

public class Genres{
	
	private int genreId;
	private String genreName;
	private String description;
	
	public Genres(int genreId, String genreName, String description) {
		super();
		this.setGenreId(genreId);
		this.setGenreName(genreName);
		this.setDescription(description);
	}
	
	
	
	public Genres(String genreName, String description) {
		super();
		this.genreName = genreName;
		this.description = description;
	}

	

	public Genres() {
		super();
	}



	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description =description;
	}

	public int getGenreId() {
		return genreId;
	}

	public void setGenreId(int genreId) {
		this.genreId = genreId;
	}

	public String getGenreName() {
		return genreName;
	}

	public void setGenreName(String genreName) {
		this.genreName = genreName;
	}
	
	
	
}