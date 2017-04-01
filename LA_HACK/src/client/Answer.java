package client;

import java.util.HashSet;
import java.util.Set;

public class Answer {
	private String content;
	private String asker;
	private String answers;
	private Set<String> sneakers;
	
	private final double pricePerListen = 1;
	private final double payForAsker = pricePerListen/2;
	private final double payForAnswerer = pricePerListen/2;
	
	
	public Answer(){
		sneakers = new HashSet<String>();
	}
	
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getAsker() {
		return asker;
	}
	public void setAsker(String asker) {
		this.asker = asker;
	}
	public String getAnswers() {
		return answers;
	}
	public void setAnswers(String answers) {
		this.answers = answers;
	}
	
	public boolean addListener(String username){
		return sneakers.add(username);
		// need to pay for asker and answer
	}
	
	
}
