package client;

import server.Message;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.PrintWriter;
import java.io.Reader;
import java.net.Socket;
import java.util.*;
import java.util.concurrent.TimeUnit;

public class clientThread extends Thread {

	private Socket s;
	private ObjectInputStream ois;
	private ObjectOutputStream oos;
	public String currentUser;
	public clientThread(String username)
	{
		this.currentUser = username;
		try{
			s = new Socket("localhost",1234);
			ois = new ObjectInputStream(s.getInputStream());
			oos = new ObjectOutputStream(s.getOutputStream());
		}catch(IOException ioe)
		{
			System.out.println("IOE: "+ ioe.getMessage());
		}
		this.start();
		
		try{
		Message sendMessage = new Message("ask_question","haha");
		oos.writeObject(sendMessage);
		oos.flush();
		}catch(IOException ioe)
		{
			System.out.println("IOE: "+ioe.getMessage());
		}
	}
	
	
	public void run()
	{
		try{
			while(true)
			{
				Message receiveMessage = (Message)ois.readObject();
				if(receiveMessage.name.equalsIgnoreCase("Answer"))
				{
					System.out.println(receiveMessage.message);
				}
			}
		}catch(ClassNotFoundException e)
		{
			e.printStackTrace();
		}catch(IOException ioe)
		{
			System.out.println("ioe: " + ioe.getMessage());
		}
	}
	
	public static void main(String [] args)
	{
		new clientThread("abc");
	}
}
