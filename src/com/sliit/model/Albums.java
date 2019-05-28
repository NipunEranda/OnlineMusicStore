package com.sliit.model;

public class Albums{
	
	private int albumId;
	private String albumName;
	private String albumDescription;
	
	public Albums(int albumId, String albumName, String albumDescription) {
		super();
		this.setAlbumId(albumId);
		this.setAlbumName(albumName);
		this.setAlbumDescription(albumDescription);
	}
	
	

	public Albums(String albumName, String albumDescription) {
		super();
		this.albumName = albumName;
		this.albumDescription = albumDescription;
	}

	


	public Albums() {
		super();
	}



	public int getAlbumId() {
		return albumId;
	}

	public void setAlbumId(int albumId) {
		this.albumId = albumId;
	}

	public String getAlbumName() {
		return albumName;
	}

	public void setAlbumName(String albumName) {
		this.albumName = albumName;
	}

	public String getAlbumDescription() {
		return albumDescription;
	}

	public void setAlbumDescription(String albumDescription) {
		this.albumDescription = albumDescription;
	}
	
	
	
	
	
}