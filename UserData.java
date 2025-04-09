package beans;

import java.io.Serializable;

public class UserData extends Object implements Serializable{
	
	private String fullname;
	private String email;
	private String age;
	private String favlanguage;
	private String level;
	private String tools [];
	private String status;

	public void setfullname(String fullname) {
		this.fullname = fullname;
	}

	public String getfullname() {
		return this.fullname; 
	}
	
	
	public void setemail(String email) {
		this.email = email;
	}

	public String getemail() {
		return this.email; 
	}
	
	public void setage(String age) {
		this.age = age;
	}

	public String getage() {
		return this.age; 
	}
	
	public void setfavlanguage(String favlanguage) {
		this.favlanguage = favlanguage ;
	}
	public String  getfavlanguage() {
		return this.favlanguage;
	}
	

	public void setlevel(String level) {
		this.level = level ;
	}
	public String getlevel() {
		return this.level;
	}
	
	public void settools(String tools []) {
		this.tools = tools;
	}
	public String [] gettools() {
		return this.tools;
	}
	
	public void setstatus(String status) {
		this.status = status ;
	}
	public String  getstatus() {
		return this.status;
	}

}
