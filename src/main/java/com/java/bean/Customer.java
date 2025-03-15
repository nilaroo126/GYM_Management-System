package com.java.bean;



import org.springframework.web.multipart.MultipartFile;

public class Customer {
	private int cid;
	private String cname;
	private String cemail;
	
	private String cpassword;
	private String cphone;
	private String cgender;
	private int rcustomer;
	
	private int gid;
	private String image;
	private MultipartFile mimage;
	
	private int classid;
	private String classname;
	private double classprice;
	private String classdesc;
	private int capacity;
	private String equipments;
	private int equantity;
	
	private String cimage;
	private MultipartFile climage;
	
	public int getCid() {
		return cid;
	}

	public void setCid(int cid) {
		this.cid = cid;
	}

	public String getCname() {
		return cname;
	}

	public void setCname(String cname) {
		this.cname = cname;
	}

	public String getCemail() {
		return cemail;
	}

	public void setCemail(String cemail) {
		this.cemail = cemail;
	}

	public String getCpassword() {
		return cpassword;
	}

	public void setCpassword(String cpassword) {
		this.cpassword = cpassword;
	}

	public String getCphone() {
		return cphone;
	}

	public void setCphone(String cphone) {
		this.cphone = cphone;
	}
	public String getCgender() {
		return cgender;
	}

	public void setCgender(String cgender) {
		this.cgender = cgender;
	}

	public int getGid() {
		return gid;
	}

	public void setGid(int gid) {
		this.gid = gid;
	}

	public String getImage() {
		return image;
	}

	public void setImage(String image) {
		this.image = image;
	}

	public int getClassid() {
		return classid;
	}

	public void setClassid(int classid) {
		this.classid = classid;
	}

	public String getClassname() {
		return classname;
	}

	public void setClassname(String classname) {
		this.classname = classname;
	}

	public double getClassprice() {
		return classprice;
	}

	public void setClassprice(double classprice) {
		this.classprice = classprice;
	}

	public String getCimage() {
		return cimage;
	}

	public void setCimage(String cimage) {
		this.cimage = cimage;
	}

	public String getClassdesc() {
		return classdesc;
	}

	public void setClassdesc(String classdesc) {
		this.classdesc = classdesc;
	}

	public MultipartFile getMimage() {
		return mimage;
	}

	public void setMimage(MultipartFile mimage) {
		this.mimage = mimage;
	}

	public int getCapacity() {
		return capacity;
	}

	public void setCapacity(int capacity) {
		this.capacity = capacity;
	}

	public String getEquipments() {
		return equipments;
	}

	public void setEquipments(String equipments) {
		this.equipments = equipments;
	}

	public int getEquantity() {
		return equantity;
	}

	public void setEquantity(int equantity) {
		this.equantity = equantity;
	}

	public MultipartFile getClimage() {
		return climage;
	}

	public void setClimage(MultipartFile climage) {
		this.climage = climage;
	}

	public int getRcustomer() {
		return rcustomer;
	}

	public void setRcustomer(int rcustomer) {
		this.rcustomer = rcustomer;
	}
}
