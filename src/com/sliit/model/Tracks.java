package com.sliit.model;

public class Tracks{
	
	private int trackId;
	private String trackName;
	private int albumId;
	private int artistId;
	private int genreId;
	private String published;
	private String composer;
	private int milliSeconds;
	private double unitPrice;
	
	public Tracks(int trackId, String trackName, int albumId, int artistId, int genreId, String published,
			String composer, int milliSeconds, double unitPrice) {
		super();
		this.trackId = trackId;
		this.trackName = trackName;
		this.albumId = albumId;
		this.artistId = artistId;
		this.genreId = genreId;
		this.published = published;
		this.composer = composer;
		this.milliSeconds = milliSeconds;
		this.unitPrice = unitPrice;
	}
	
	

	public Tracks() {
		super();
	}



	public int getTrackId() {
		return trackId;
	}

	public String getTrackName() {
		return trackName;
	}

	public int getAlbumId() {
		return albumId;
	}

	public int getArtistId() {
		return artistId;
	}

	public int getGenreId() {
		return genreId;
	}

	public String getPublished() {
		return published;
	}

	public String getComposer() {
		return composer;
	}

	public int getMilliSeconds() {
		return milliSeconds;
	}

	public double getUnitPrice() {
		return unitPrice;
	}

	public void setTrackId(int trackId) {
		this.trackId = trackId;
	}

	public void setTrackName(String trackName) {
		this.trackName = trackName;
	}

	public void setAlbumId(int albumId) {
		this.albumId = albumId;
	}

	public void setArtistId(int artistId) {
		this.artistId = artistId;
	}

	public void setGenreId(int genreId) {
		this.genreId = genreId;
	}

	public void setPublished(String published) {
		this.published = published;
	}

	public void setComposer(String composer) {
		this.composer = composer;
	}

	public void setMilliSeconds(int milliSeconds) {
		this.milliSeconds = milliSeconds;
	}

	public void setUnitPrice(double unitPrice) {
		this.unitPrice = unitPrice;
	}
	
	
	
}