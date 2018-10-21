package prac_exam3;

import java.text.SimpleDateFormat;
import java.util.Date;

public class Information {

	private String id;
	private String pw;
	private String name;
	private String date;
	
	public Information() {
		Date d = new Date();
		SimpleDateFormat form = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		this.date = form.format(d);
		}
	
	public void setId(String id) {
		this.id = id;
	}
	public String getId() {
		return this.id;
	}
	
	public void setPw(String pw) {
		this.pw = pw;
	}
	public String getPw() {
		return this.pw;
	}
	
	public void setName(String name) {
		this.name = name;
	}
	public String getName() {
		return this.name;
	}
	public String getDate() {
		return this.date;
	}
	
	
}
