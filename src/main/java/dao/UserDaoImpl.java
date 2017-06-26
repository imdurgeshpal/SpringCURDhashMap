package dao;



import java.util.HashMap;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;

import model.User;


public class UserDaoImpl implements UserDao {

	HashMap<Integer, User> hashMap = new HashMap<Integer, User>();
	public void saveUser(User user) {
		System.out.println("In the UserDaoImple...."+user.getId()+"--"+user.getName()+"--"+user.getSalary()+"--"
				+user.getDesignation());
	
		hashMap.put(user.getId(), user);
		
		
		System.out.println("Value in hash Map --->>  "+hashMap.size());
		
		
	}	
public HashMap<Integer, User> getUsersValues(){
		
		return hashMap;
	}
public User updateUser(int id) {
	
	return hashMap.get(id);
}
public void deleteUser(int id) {
	hashMap.remove(id);
	
}

public String showDataInJSON() {
	ObjectMapper objectMapper = new ObjectMapper();
	String json="";
	
		try {
			json =objectMapper.writerWithDefaultPrettyPrinter().writeValueAsString(hashMap);
		} catch (JsonProcessingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return json;
		
}

}
