package com.sliit.model;

public class Customer extends Users {

	private int postalCode;
	private String image;
	
	public Customer(int uId, String userName, String firstName, String lastName, String email, String password,
			String telephone, int postalCode, String address, String image, int userType) {
		super(uId,userName,firstName,lastName,email,telephone,address,password,userType);
		this.postalCode = postalCode;
		this.image = image;
	}

	public Customer() {
		
	}

	public int getPostalCode() {
		return postalCode;
	}

	public void setPostalCode(int postalCode) {
		this.postalCode = postalCode;
	}
	
	public String getImage() {
		return image;
	}

	public void setImage(String image) {
		this.image = image;
	}

}
