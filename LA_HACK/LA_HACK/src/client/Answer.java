package client;

import java.util.HashSet;
import java.util.Set;

public class Answer {
	private String content;
	private Set<String> sneakers = new HashSet<String>();
	
	private final double pricePerListen = 1;
	private final double payForAsker = pricePerListen/2;
	private final double payForAnswerer = pricePerListen/2;
	
	
	public Answer(){
		
	}
	
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	
	
	public boolean addListener(String username){
		return sneakers.add(username);
		// need to pay for asker and answer
	}

	
	
}
