package dao;

import java.util.HashMap;

import model.User;

public interface UserDao {
	
	public void saveUser(User user);
	public HashMap<Integer, User> getUsersValues();
	public User updateUser(int id);
	public void deleteUser(int id);
	public String showDataInJSON();
	
}
