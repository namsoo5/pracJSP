package prac_exam;

import java.text.SimpleDateFormat;
import java.util.Date;

public class Information {
	private String id;
	private String pw;
	private String name;
	private String sdate;
	
	public Information() {
		Date date = new Date();
		SimpleDateFormat a = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		sdate = a.format(date);
	}
	public String getid() {
		return id;
	}
	public void setid(String id) {
		this.id = id;
	}
	
	public String getpw() {
		return pw;
	}
	public void setpw(String pw) {
		this.pw = pw;
	}
	
	public String getname() {
		return name;
	}
	public void setname(String name) {
		this.name = name;
	}
	
	public String getdate() {
		return sdate;
	}
	
}
