package data;

import java.util.HashSet;
import java.util.Set;

public class Question {
	public String asker; // the user who ask this question
	public String answerer; // the user who will answer this question
	public double price; // price of this question
	public String content;
	public String answer;
	public double numOfSneakers;
	
	
	/**
	 * 	Method
	 */
	
	/**
	 * 
	 * @param username
	 * @return true: successfully add lisenter to the set
	 * false: unsucessfully
	 */
	

	public Question(String asker, String answerer, String content, double price){
		this.asker = asker;
		this.answerer = answerer;
		this.content = content;
		this.price = price;
		this.answer = "";
		this.numOfSneakers = 0;
	}
	
	public Question(String asker, String answerer, String content, double price,String answer,double sneakers){
		this.asker = asker;
		this.answerer = answerer;
		this.content = content;
		this.price = price;
		this.answer = answer;
		this.numOfSneakers = sneakers;
	}
	
	public String firstline()
	{
		String result="";
		if(this.content.length()<69)
			return this.content;
		for(int i=0;i<70;i++)
		{
			result+=this.content.charAt(i);
		}
		return result;
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
	
	public String getContent() {
		return content;
	}
	
	public void setContent(String content) {
		this.content = content;
	}

	public String getAnswer() {
		return answer;
	}

	public void setAnswer(String answer) {
		this.answer = answer;
	}

	public double getNumOfSneakers() {
		return numOfSneakers;
	}

	public void addSneakers() {
		this.numOfSneakers++;
	}
	
	public boolean hasAnswer(){
		return !this.answer.isEmpty();
	}
	
	
	
}
