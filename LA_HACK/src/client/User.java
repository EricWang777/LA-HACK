package client;

import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

public class User {
	private String username;
	private String password;
	
	private Set<String> following = new HashSet<String>();
	private List<Question> askQuestion = new ArrayList<Question>();
	private List<Question> answerQuestion = new ArrayList<Question>();
	private List<Question> sneakQuestoin = new ArrayList<Question>();
	
	/**
	 * @name addFollowing
	 * @param username
	 * @return false if already following this user
	 */
	public boolean addFollowing(String username){
		if(following.contains(username)) return false;
		else following.add(username);
		return true;
	}
	
	/**
	 * @name deleteFollowing
	 * @param username
	 * @return false if never following this user
	 */
	public boolean deleteFollowing(String username){
		if(!following.contains(username)) return false;
		else following.remove(username);
		return true;
	}
	
	/**
	 * 
	 * @param answerer
	 * @param content
	 * @param price
	 * @return true if successfully ask
	 */
	
	public boolean ask(String answerer, String content, double price){
		Question q = new Question(this.username, answerer, content, price);
		this.askQuestion.add(q);
		return true;
	}
	
	public boolean answer(Question q, String content){
		this.answerQuestion.add(q);
		q.setAnswer(content);
		return true;
	}
	
	public boolean sneak(Question q){
		this.sneakQuestoin.add(q);
		q.addSneakers();
		return true;
	}
	
	
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	
	
	
	
	
}
