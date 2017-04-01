package client;

import java.util.HashSet;
import java.util.Set;

public class Question {
	private String asker; // the user who ask this question
	private String answerer; // the user who will answer this question
	private double price; // price of this question
	private String content;
	private int numberOfListener; 
	
	/**
	 * 	Method
	 */
	
	/**
	 * 
	 * @param username
	 * @return true: successfully add lisenter to the set
	 * false: unsucessfully
	 */
	

	public Question(){
		
	}
	
	public String getAsker() {
		return asker;
	}
	public void setAsker(String asker) {
		this.asker = asker;
	}
	public String getAnswerer() {
		return answerer;
	}
	public void setAnswerer(String answerer) {
		this.answerer = answerer;
	}
	public double getPrice() {
		return price;
	}
	public void setPrice(double price) {
		this.price = price;
	}
	public int getNumberOfListener() {
		return numberOfListener;
	}
	public void setNumberOfListener(int numberOfListener) {
		this.numberOfListener = numberOfListener;
	}




	public String getContent() {
		return content;
	}




	public void setContent(String content) {
		this.content = content;
	}
	
	
	
}
