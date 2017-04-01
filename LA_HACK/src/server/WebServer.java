package server;

import java.io.IOException;
import java.net.ServerSocket;
import java.net.Socket;
import java.util.Vector;
import javax.websocket.*;
import javax.websocket.server.*;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.PrintWriter;
import java.net.ServerSocket;
import java.net.Socket;
import java.util.*;


public class WebServer extends Thread{
	
	private Vector<ServerThread> serverThreads= new Vector<ServerThread>();
	private ServerSocket ss;
	public WebServer()
	{
		this.start();
	}
	
	public void run()
	{
		try{
			ss = new ServerSocket(1234);
			System.out.println("Server start, using port 1234");
			while(true)
			{
				Socket s = ss.accept();
				ServerThread st = new ServerThread(s, this);
				this.serverThreads.add(st);
			}
		}catch(IOException ioe)
		{
			System.out.println("ioe: " + ioe.getMessage());
		}
	}
	
	public Vector<ServerThread> getServerThread()
	{
		return this.serverThreads;
	}
	
	
	public static void main(String [] args)
	{
		new WebServer();
	}
	
}
