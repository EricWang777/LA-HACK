package data;

public class server {
	public static User currentUser;
	
	public static void main(String[] args) {
		UserDatabase udb = new UserDatabase();
		QuestionDatabase qdb = new QuestionDatabase(10);
		server.currentUser.setUsername("sample");
		server.currentUser.setPassword("123456");
		server.currentUser.firstname = "Sample FirstName";
		server.currentUser.lastname = "Sample LastName";
		System.out.println("server start");
		
	}
}
