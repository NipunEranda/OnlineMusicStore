package com.sliit;


public class Users{

	private int uId;
	private String userName;
	private String firstName;
	private String lastName;
	private String email;
	private String telephone;
	private int postalCode;
	private String Address;
	private int isAdmin;
	private String image;

	
	public Users(int uId, String userName, String firstName, String lastName, String email, String image, String telephone,
			int postalCode, String address, int isAdmin) {
		super();
		this.uId = uId;
		this.userName = userName;
		this.firstName = firstName;
		this.lastName = lastName;
		this.email = email;
		this.image = image;
		this.telephone = telephone;
		this.postalCode = postalCode;
		Address = address;
		this.isAdmin = isAdmin;
	}


	public int getuId() {
		return uId;
	}

	public String getUserName() {
		return userName;
	}

	public String getFirstName() {
		return firstName;
	}

	public String getLastName() {
		return lastName;
	}

	public String getEmail() {
		return email;
	}
	
	public String getImage() {
		return image;
	}

	public String getTelephone() {
		return telephone;
	}

	public int getPostalCode() {
		return postalCode;
	}

	public String getAddress() {
		return Address;
	}

	public int getIsAdmin() {
		return isAdmin;
	}

	
}