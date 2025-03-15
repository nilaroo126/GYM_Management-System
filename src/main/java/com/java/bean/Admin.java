package com.java.bean;

import org.springframework.web.multipart.MultipartFile;

public class Admin {
	private int aid;
	private String aname;
	private String aemail;
	private String apassword;
	private String ajob;
	private String acity;
	private String address;
	private String image;
	private MultipartFile aimage;
	
	
	
	
	public int getAid() {
		return aid;
	}
	public void setAid(int aid) {
		this.aid = aid;
	}
	
	public String getAemail() {
		return aemail;
	}
	public void setAemail(String aemail) {
		this.aemail = aemail;
	}
	public String getApassword() {
		return apassword;
	}
	public void setApassword(String apassword) {
		this.apassword = apassword;
	}
	public String getAname() {
		return aname;
	}
	public void setAname(String aname) {
		this.aname = aname;
	}
	public MultipartFile getAimage() {
		return aimage;
	}
	public void setAimage(MultipartFile aimage) {
		this.aimage = aimage;
	}
	public String getImage() {
		return image;
	}
	public void setImage(String image) {
		this.image = image;
	}
	public String getAjob() {
		return ajob;
	}
	public void setAjob(String ajob) {
		this.ajob = ajob;
	}
	public String getAcity() {
		return acity;
	}
	public void setAcity(String acity) {
		this.acity = acity;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	
	
	

}
