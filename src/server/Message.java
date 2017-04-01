package server;

import java.io.Serializable;

public class Message implements Serializable {

	private static final long serialVersionUID = 1L;
		
	public String name;
	public String message;
	public Message(String name, String message)
	{
		this.name = name;
		this.message = message;
	}
}
