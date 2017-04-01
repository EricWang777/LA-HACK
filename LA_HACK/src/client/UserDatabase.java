package client;

import java.util.HashMap;
import java.util.Map;
import java.util.Set;

public class UserDatabase {
	public static Map<String, User> allUsers;
	public static User user;
	
	/**
	 * Constructor
	 */
	public UserDatabase(){
		allUsers = new HashMap<String, User>();
		user = new User();
		user.setUsername("Tester");
		user.addFollowing("Answerer 1");
		user.addFollowing("Answerer 2");
		user.addFollowing("Answerer 3");
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
