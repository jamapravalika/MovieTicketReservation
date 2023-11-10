package com.Model;

public class users {
	private int User_Id;
	private String User_Name;
	private String User_Email;
	private String User_Pwd;
	private int User_Mobile;
	private String Role;
	
	
	public users() {
		super();
	}
	
	public users(int user_Id, String user_Name, String user_Email, String user_Pwd, int user_Mobile, String role) {
		super();
		User_Id = user_Id;
		User_Name = user_Name;
		User_Email = user_Email;
		User_Pwd = user_Pwd;
		User_Mobile = user_Mobile;
		Role = role;
	}

	public int getUser_Id() {
		return User_Id;
	}
	public void setUser_Id(int user_Id) {
		User_Id = user_Id;
	}
	public String getUser_Name() {
		return User_Name;
	}
	public void setUser_Name(String user_Name) {
		User_Name = user_Name;
	}
	public String getUser_Email() {
		return User_Email;
	}
	public void setUser_Email(String user_Email) {
		User_Email = user_Email;
	}
	public String getUser_Pwd() {
		return User_Pwd;
	}
	public void setUser_Pwd(String user_Pwd) {
		User_Pwd = user_Pwd;
	}
	public int getUser_Mobile() {
		return User_Mobile;
	}
	public void setUser_Mobile(int user_Mobile) {
		User_Mobile = user_Mobile;
	}

	@Override
	public String toString() {
		return "users [User_Id=" + User_Id + ", User_Name=" + User_Name + ", User_Email=" + User_Email + ", User_Pwd="
				+ User_Pwd + ", User_Mobile=" + User_Mobile + ", Role=" + Role + "]";
	}
	
	
}
