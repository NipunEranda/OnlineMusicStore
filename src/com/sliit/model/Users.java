package com.sliit.model;

public class Users {

	private int uId;
	private String userName;
	private String firstName;
	private String lastName;
	private String email;
	private String telephone;
	private String Address;
	private int userType;
	private String password;
	
	public Users() {
		super();
	}

	//User Access
	public Users(int uId, String userName, String firstName, String lastName, String email, String telephone,
			String address, String password, int userType) {
		super();
		this.uId = uId;
		this.userName = userName;
		this.firstName = firstName;
		this.lastName = lastName;
		this.email = email;
		this.telephone = telephone;
		this.Address = address;
		this.password = password;
		this.userType = userType;
	}
	
	//Artist Access
	public Users(int uId, String userName, String firstName, String lastName, String email, String telephone,
			String address) {
		super();
		this.uId = uId;
		this.userName = userName;
		this.firstName = firstName;
		this.lastName = lastName;
		this.email = email;
		this.telephone = telephone;
		this.Address = address;
	}
	
	
	
		public Users(String userName, String firstName, String lastName, String email, String telephone, String address) {
		super();
		this.userName = userName;
		this.firstName = firstName;
		this.lastName = lastName;
		this.email = email;
		this.telephone = telephone;
		Address = address;
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

		public String getTelephone() {
			return telephone;
		}

		public String getAddress() {
			return Address;
		}

		public int getUserType() {
			return userType;
		}

		public String getPassword() {
			return password;
		}

		public void setuId(int uId) {
			this.uId = uId;
		}

		public void setUserName(String userName) {
			this.userName = userName;
		}

		public void setFirstName(String firstName) {
			this.firstName = firstName;
		}

		public void setLastName(String lastName) {
			this.lastName = lastName;
		}

		public void setEmail(String email) {
			this.email = email;
		}

		public void setTelephone(String telephone) {
			this.telephone = telephone;
		}

		public void setAddress(String address) {
			Address = address;
		}

		public void setUserType(int userType) {
			this.userType = userType;
		}

		public void setPassword(String password) {
			this.password = password;
		}



}