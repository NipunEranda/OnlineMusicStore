package com.sliit.services;

import java.sql.SQLException;
import java.util.ArrayList;

import com.sliit.model.Customer;
import com.sliit.model.Users;

public interface Customerservice {

	public boolean addCustomer(Customer c) throws ClassNotFoundException, SQLException;

	public boolean updateCustomer(Customer c) throws ClassNotFoundException, SQLException;

	public boolean removeCustomer(int customerId) throws ClassNotFoundException, SQLException;

	public ArrayList<Users> searchUser(Users u) throws ClassNotFoundException, SQLException;

	public ArrayList<Customer> getAllUsers() throws SQLException, ClassNotFoundException;

	public int countUsers() throws ClassNotFoundException, SQLException;

}
