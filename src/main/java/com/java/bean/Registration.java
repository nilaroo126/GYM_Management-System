package com.java.bean;

import java.time.LocalDate;

public class Registration {
	private int rid;
	
	private int cid;
	private String cname;
	private String cemail;
	private String cimage;
	private String cphone;
	private String cgender;
	private int rcustomer;
	
	private int pid;
	private String pmethod;
	
	private int planid;
	private int planmonth;
	private String starttime;
	private String endtime;
	private int planstatus;
	
	
	private int classid;
	private String classname;
	private double classprice;
	private String classdesc;
	private int capacity;
	private String equipments;
	private int equantity;
	
	private int tid;
	private String tname;
	
	private String registerdate;
	private String expireddate;
	private double paymentamount;
	
	
	private LocalDate today;
	private LocalDate futureDate;
	
	
	
	
	
	
	public double getPaymentamount() {
		return paymentamount;
	}
	public void setPaymentamount(double paymentamount) {
		this.paymentamount = paymentamount;
	}
	public int getPlanid() {
		return planid;
	}
	public void setPlanid(int planid) {
		this.planid = planid;
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
	
	public int getRid() {
		return rid;
	}
	public void setRid(int rid) {
		this.rid = rid;
	}
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
	public int getPid() {
		return pid;
	}
	public void setPid(int pid) {
		this.pid = pid;
	}
	public String getPmethod() {
		return pmethod;
	}
	public void setPmethod(String pmethod) {
		this.pmethod = pmethod;
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
	public int getTid() {
		return tid;
	}
	public void setTid(int tid) {
		this.tid = tid;
	}
	public String getTname() {
		return tname;
	}
	public void setTname(String tname) {
		this.tname = tname;
	}
	public String getRegisterdate() {
		return registerdate;
	}
	public void setRegisterdate(String registerdate) {
		this.registerdate = registerdate;
	}
	public String getExpireddate() {
		return expireddate;
	}
	public void setExpireddate(String expireddate) {
		this.expireddate = expireddate;
	}
	public String getCemail() {
		return cemail;
	}
	public void setCemail(String cemail) {
		this.cemail = cemail;
	}
	public int getPlanmonth() {
		return planmonth;
	}
	public void setPlanmonth(int planmonth) {
		this.planmonth = planmonth;
	}
	public LocalDate getFutureDate() {
		return futureDate;
	}
	public void setFutureDate(LocalDate futureDate) {
		this.futureDate = futureDate;
	}
	public LocalDate getToday() {
		return today;
	}
	public void setToday(LocalDate today) {
		this.today = today;
	}
	public String getCimage() {
		return cimage;
	}
	public void setCimage(String cimage) {
		this.cimage = cimage;
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
	public String getStarttime() {
		return starttime;
	}
	public void setStarttime(String starttime) {
		this.starttime = starttime;
	}
	public String getEndtime() {
		return endtime;
	}
	public void setEndtime(String endtime) {
		this.endtime = endtime;
	}
	public int getRcustomer() {
		return rcustomer;
	}
	public void setRcustomer(int rcustomer) {
		this.rcustomer = rcustomer;
	}
	public String getClassdesc() {
		return classdesc;
	}
	public void setClassdesc(String classdesc) {
		this.classdesc = classdesc;
	}
	public int getPlanstatus() {
		return planstatus;
	}
	public void setPlanstatus(int planstatus) {
		this.planstatus = planstatus;
	}
	

}
