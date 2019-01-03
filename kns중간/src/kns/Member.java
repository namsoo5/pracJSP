package kns;

import java.util.Calendar;

public class Member {

	private String id;
	private String password;
	private String name;
	private String tel;
	private String registerDate;
	
	public Member() {
		Calendar cal = Calendar.getInstance();
		int y = cal.get(Calendar.YEAR);
		int m = cal.get(Calendar.MONTH)+1;
		int d = cal.get(Calendar.DATE);
		
		registerDate= y+"-"+m+"-"+d;
	}
	
	public void setId(String id) {
		this.id = id;
	}
	public String getId() {
		return this.id;
	}
	
	public void setPassword(String password) {
		this.password = password;
	}
	public String getPassword() {
		return this.password;
	}
	
	public void setName(String name) {
		this.name = name;
	}
	public String getName() {
		return this.name;
	}
	
	public void setTel(String tel) {
		this.tel = tel;
	}
	public String getTel() {
		return this.tel;
	}
	
	public String getDate() {
		
		return this.registerDate;
	}
}
