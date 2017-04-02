package client;

import java.util.HashMap;
import java.util.Map;
import java.util.Set;

public class UserDatabase {
	public static Map<String, User> allUsers;
	
	/**
	 * Constructor
	 */
	public UserDatabase(){
		allUsers = new HashMap<String, User>();
	}
	
	/**
	 * 
	 * @param user
	 * @return true: successfully create a new user
	 * @return false: username duplicate
	 */
	public boolean addUser(User user){
		String username = user.getUsername();
		if(allUsers.containsKey(username)) return false;
		else this.allUsers.put(username, user);
		return true;
	}
	
}