package com.sliit.model;

public class Artists extends Users {

	private String artistDescription;

	public Artists(int artistId, String userName, String firstName, String lastName, String email, String password,
			String telephone, String address, String description) {
		super(artistId, userName, firstName, lastName, email, telephone, address);
		this.artistDescription = description;
	}

	
	public Artists() {
		super();
	}

	public Artists(String userName, String firstName, String lastName, String email,
			String telephone, String address, String description) {
		super(userName, firstName, lastName, email, telephone, address);
		this.artistDescription = description;
	}
	
	public String getArtistDescription() {
		return artistDescription;
	}

	public void setArtistDescription(String artistDescription) {
		this.artistDescription = artistDescription;
	}

}