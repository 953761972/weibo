package com.yc.bean;

public class Guanli {
    private String gname;
    private String gpass;  
    private String gemail;
    
	
	@Override
	public String toString() {
		return "Guanli [gname=" + gname + ", gpass=" + gpass + ", gemail=" + gemail + "]";
	}
	public Guanli() {
	}
	public Guanli(String gname, String gpass,String gemail) {
		super();
		this.gname = gname;
		this.gpass = gpass;
		this.gemail=gemail;
	}
	public String getGname() {
		return gname;
	}
	public void setGname(String gname) {
		this.gname = gname;
	}
	public String getGpass() {
		return gpass;
	}
	public void setGpass(String gpass) {
		this.gpass = gpass;
	}
    
	public String getGemail() {
		return gemail;
	}
	public void setGemail(String gemail) {
		this.gemail = gemail;
	}
    
}
