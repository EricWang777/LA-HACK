package server;

import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.net.Socket;


public class ServerThread extends Thread{

	private ObjectInputStream ois;
	private ObjectOutputStream oos;
	public static WebServer cs;
	
	
	public ServerThread(Socket s,WebServer ws)
	{
		try{
			this.cs = ws;
			oos = new ObjectOutputStream(s.getOutputStream());
			ois = new ObjectInputStream(s.getInputStream());
			
			this.start();
		}catch(IOException ioe)
		{
			System.out.println("ioe: " + ioe.getMessage());
		}
	}
	
	public void run()
	{
		try
		{
			while(true)
			{
				Message receiveMessage = (Message)ois.readObject();
				if(receiveMessage.name.equalsIgnoreCase("ask_question"))
				{
					System.out.println(receiveMessage.message);
					System.out.println("abcdefg");
				}
			}
		}catch(ClassNotFoundException e)
		{
			e.printStackTrace();
		}catch(IOException ioe)
		{
			System.out.println("ioe "+ ioe.getMessage());
		}
	}
}
