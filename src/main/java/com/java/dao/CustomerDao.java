package com.java.dao;

import java.io.ByteArrayOutputStream;

import java.io.IOException;
import java.io.InputStream;
import java.sql.Blob;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.time.LocalDate;
import java.util.Base64;
import java.util.List;

import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.namedparam.MapSqlParameterSource;

import com.java.bean.Customer;
import com.java.bean.CustomerInfo;
import com.java.bean.Inquery;
import com.java.bean.Registration;
import com.java.bean.Trainer;

public class CustomerDao {
	JdbcTemplate template; 
	public void setTemplate(JdbcTemplate template) { 
		 this.template = template; 
	}
	public int saveCustomer(Customer c) {
		String sql="insert into customer (cname,cemail,cpassword,cphone,cgender) values ('"+c.getCname()+"','"+c.getCemail()+"','"+c.getCpassword()+"','"+c.getCphone()+"','"+c.getCgender()+"');";
		return template.update(sql);
	}
	public List<Customer> getGallery() {
		
		return template.query("select * from gallery;",new BeanPropertyRowMapper<Customer>() {
			@Override
			public Customer mapRow(ResultSet rs, int row)throws SQLException{
			Customer g = new Customer();
				 
				g.setGid(rs.getInt(1));
				
				Blob b = rs.getBlob(2);
				 
				 InputStream inputStream = b.getBinaryStream();
		            ByteArrayOutputStream outputStream = new ByteArrayOutputStream();
		            byte[] buffer = new byte[4096];
		            int bytesRead = -1;
		             
		             try 
		             {
						while ((bytesRead = inputStream.read(buffer)) != -1) 
						 {
						        outputStream.write(buffer, 0, bytesRead);                  
						 }
					} 
		             catch (IOException e) 
		             {
						// TODO Auto-generated catch block
						e.printStackTrace();
		             }
		             
		             byte[] imageBytes = outputStream.toByteArray();
		             String base64Image = Base64.getEncoder().encodeToString(imageBytes);
		             
		             g.setImage(base64Image);
		             
		             try 
		             {
						inputStream.close();
		             } 
		             catch (IOException e) 
		             {
						// TODO Auto-generated catch block
						e.printStackTrace();
		             }	
		             try 
		             {
						outputStream.close();
		             } 
		             catch (IOException e) 
		             {
						// TODO Auto-generated catch block
						e.printStackTrace();
		             }
				
				
				 return g;
			 } 
		 });
	}
	public List<Customer> getClasses() {
		return template.query("select * from class;",new BeanPropertyRowMapper<Customer>() {
			@Override
			public Customer mapRow(ResultSet rs, int row)throws SQLException{
			Customer g = new Customer();
				 
				g.setClassid(rs.getInt(1));
				g.setClassname(rs.getString(2));
				g.setClassprice(rs.getDouble(3));
				g.setClassdesc(rs.getString(4));
				g.setCapacity(rs.getInt(5));
				g.setEquipments(rs.getString(6));
				g.setEquantity(rs.getInt(7));
				Blob b = rs.getBlob(8);
				 
				 InputStream inputStream = b.getBinaryStream();
		            ByteArrayOutputStream outputStream = new ByteArrayOutputStream();
		            byte[] buffer = new byte[4096];
		            int bytesRead = -1;
		             
		             try 
		             {
						while ((bytesRead = inputStream.read(buffer)) != -1) 
						 {
						        outputStream.write(buffer, 0, bytesRead);                  
						 }
					} 
		             catch (IOException e) 
		             {
						// TODO Auto-generated catch block
						e.printStackTrace();
		             }
		             
		             byte[] imageBytes = outputStream.toByteArray();
		             String base64Image = Base64.getEncoder().encodeToString(imageBytes);
		             
		             g.setCimage(base64Image);
		             
		             try 
		             {
						inputStream.close();
		             } 
		             catch (IOException e) 
		             {
						// TODO Auto-generated catch block
						e.printStackTrace();
		             }	
		             try 
		             {
						outputStream.close();
		             } 
		             catch (IOException e) 
		             {
						// TODO Auto-generated catch block
						e.printStackTrace();
		             }
				
				
				 return g;
			 } 
		 });
	}
	public int checkUser(Customer c) {
		String sql="select count(*) from customer where cemail ='"+c.getCemail()+"' and cpassword='"+c.getCpassword()+"';";
		return template.queryForObject(sql,Integer.class);
		
	}
	
	@SuppressWarnings("deprecation")
	public CustomerInfo getCustomerInfo(String cemail) {
		String sql="select * from customer where cemail=?";
		CustomerInfo data=template.queryForObject(sql, new Object[] {cemail},new BeanPropertyRowMapper<>(CustomerInfo.class));
		return data;
	}
	public int checkemail(String cemail) {
		String sql = "select count(*) from customer where cemail='"+ cemail+"'";
		return template.queryForObject(sql,Integer.class); 
	} 
	
	
	public List<Customer> getClassInfo(int id) {
		return template.query("select *from class where classid="+id+";",new BeanPropertyRowMapper<Customer>() {
			@Override
			public Customer mapRow(ResultSet rs, int row)throws SQLException{
			Customer g = new Customer();
				 
				g.setClassid(rs.getInt(1));
				g.setClassname(rs.getString(2));
				g.setClassprice(rs.getDouble(3));
				g.setClassdesc(rs.getString(4));
				g.setCapacity(rs.getInt(5));
				g.setEquipments(rs.getString(6));
				g.setEquantity(rs.getInt(7));
				Blob b = rs.getBlob(8);
				 
				 InputStream inputStream = b.getBinaryStream();
		            ByteArrayOutputStream outputStream = new ByteArrayOutputStream();
		            byte[] buffer = new byte[4096];
		            int bytesRead = -1;
		             
		             try 
		             {
						while ((bytesRead = inputStream.read(buffer)) != -1) 
						 {
						        outputStream.write(buffer, 0, bytesRead);                  
						 }
					} 
		             catch (IOException e) 
		             {
						// TODO Auto-generated catch block
						e.printStackTrace();
		             }
		             
		             byte[] imageBytes = outputStream.toByteArray();
		             String base64Image = Base64.getEncoder().encodeToString(imageBytes);
		             
		             g.setCimage(base64Image);
		             
		             try 
		             {
						inputStream.close();
		             } 
		             catch (IOException e) 
		             {
						// TODO Auto-generated catch block
						e.printStackTrace();
		             }	
		             try 
		             {
						outputStream.close();
		             } 
		             catch (IOException e) 
		             {
						// TODO Auto-generated catch block
						e.printStackTrace();
		             }
				
				
				 return g;
			 } 
		 });
		
	}
	
	public List<Customer> getCustomerInfoById(int cid) {
		return template.query("select cid,cname,cemail,cphone,cgender,ifnull(cimage,0) from customer where cid="+cid,new BeanPropertyRowMapper<Customer>() {
			@Override
			public Customer mapRow(ResultSet rs, int row)throws SQLException{
			Customer g = new Customer();
				 
				g.setCid(rs.getInt(1));
				g.setCname(rs.getString(2));
				g.setCemail(rs.getString(3));
				g.setCphone(rs.getString(4));
				g.setCgender(rs.getString(5));
				Blob b = rs.getBlob(6);
				 
				 InputStream inputStream = b.getBinaryStream();
		            ByteArrayOutputStream outputStream = new ByteArrayOutputStream();
		            byte[] buffer = new byte[4096];
		            int bytesRead = -1;
		             
		             try 
		             {
						while ((bytesRead = inputStream.read(buffer)) != -1) 
						 {
						        outputStream.write(buffer, 0, bytesRead);                  
						 }
					} 
		             catch (IOException e) 
		             {
						// TODO Auto-generated catch block
						e.printStackTrace();
		             }
		             
		             byte[] imageBytes = outputStream.toByteArray();
		             String base64Image = Base64.getEncoder().encodeToString(imageBytes);
		             
		             g.setImage(base64Image);
		             
		             try 
		             {
						inputStream.close();
		             } 
		             catch (IOException e) 
		             {
						// TODO Auto-generated catch block
						e.printStackTrace();
		             }	
		             try 
		             {
						outputStream.close();
		             } 
		             catch (IOException e) 
		             {
						// TODO Auto-generated catch block
						e.printStackTrace();
		             }
				
				
				 return g;
			 } 
		 });
		
	}
	
	public List<Registration> getRegistrationById(int rid) {
		return template.query("SELECT registration.rid,customer.cname,payment.`pmethod`,class.`classname`,trainer.`tname`,class.`classprice`,registration.`registerdate`,registration.`expiredate`,registration.`paymentamount` \r\n"
				+ "FROM registration \r\n"
				+ "INNER JOIN customer ON customer.cid = registration.`customer`\r\n"
				+ "INNER JOIN payment ON payment.`pid` = registration.payment\r\n"
				+ "INNER JOIN plan ON plan.`planid` = registration.`plan`\r\n"
				+ "INNER JOIN class ON class.`classid` = plan.`class`\r\n"
				+ "INNER JOIN trainer ON trainer.`tid` = plan.`trainer` \r\n"
				+ "WHERE registration.customer ="+rid+"\r\n"
				+ "ORDER BY registration.`rid`;\r\n"
				+ "",new BeanPropertyRowMapper<Registration>() {
			@Override
			public Registration mapRow(ResultSet rs, int row)throws SQLException{
				Registration r = new Registration();
				 
				r.setRid(rs.getInt(1));
				r.setCname(rs.getString(2));
				r.setPmethod(rs.getString(3));
				r.setClassname(rs.getString(4));
				r.setTname(rs.getString(5));
				r.setClassprice(rs.getDouble(6));
				r.setRegisterdate(rs.getString(7));
				r.setExpireddate(rs.getString(8));
				r.setPaymentamount(rs.getDouble(9));
				
				 return r;
			 } 
		 });

			
			
	}
	public int update(Customer c) {
		try {
			
			String sql="update customer set cname=?, cemail=? , cphone=?  where cid=?";
			return template.update(sql,c.getCname(),c.getCemail(),c.getCgender(),c.getCphone(),c.getCid());
		} catch (Exception e) {
			// TODO Auto-generated catch block
			return 0;
		}	
	}
	public int update(Customer c, int cuid) {
		try {
			byte[] imageData = c.getMimage().getBytes();
			String sql="update customer set cimage=?  where cid=?";
			return template.update(sql,imageData,cuid);
		} catch (IOException e) {
			// TODO Auto-generated catch block
			return 0;
		}
		
		
	}
	
	public List<Registration> getplan(int id, LocalDate currentDate) {
		return template.query(" SELECT plan.`planid`,plan.`planmonth`,trainer.`tname`,plan.`starttime`,plan.`endtime`,plan.`status`,\r\n"
				+ " (SELECT COUNT(*) FROM registration WHERE plan=plan.`planid`\r\n"
				+ "AND expiredate > 'currentDate') AS ` count` FROM plan\r\n"
				+ "INNER JOIN trainer ON trainer.`tid` = plan.`trainer`\r\n"
				+ "WHERE plan.`class` = "+id,new BeanPropertyRowMapper<Registration>() {
			@Override
			public Registration mapRow(ResultSet rs, int row)throws SQLException{
				Registration r = new Registration();
				 
				r.setPlanid(rs.getInt(1));
				r.setPlanmonth(rs.getInt(2));
				r.setTname(rs.getString(3));
				r.setStarttime(rs.getString(4));
				r.setEndtime(rs.getString(5));
				r.setPlanstatus(rs.getInt(6));
				r.setRcustomer(rs.getInt(7));
				
			
				
				 return r;
			 } 
		 });
		
		
	}
	public List<Registration> getPayment(int id) {
		return template.query("SELECT * FROM payment",new BeanPropertyRowMapper<Registration>() {
			@Override
			public Registration mapRow(ResultSet rs, int row)throws SQLException{
				Registration r = new Registration();
				 
				r.setPid(rs.getInt(1));
				r.setPmethod(rs.getString(2));
			
				
				 return r;
			 } 
		 });
	}
	public int saveBooking(Registration registration) {
		String sql="insert into registration (customer,payment,plan,registerdate,expiredate,paymentamount) values ( ? , ? , ? , ? , ? , ?);";
		return template.update(sql,registration.getCid(),registration.getPid(),registration.getPlanid(),registration.getToday(),registration.getFutureDate(),registration.getPaymentamount());
	}
	
	public int getPlanDays(Registration r) {
		String sql="select planmonth from plan where planid ='"+r.getPlanid()+"';";
		return template.queryForObject(sql,Integer.class);
	}
	
	public int getClassPrice(int id) {
		
		String sql="Select classprice from class where classid = ( select class from plan where planid = '"+id+"' );";
		return template.queryForObject(sql,Integer.class);
		
	}
	public int getRegistrationid() {
		String sql="SELECT rid FROM `registration` WHERE rid = (SELECT MAX(rid) FROM registration);";
		return template.queryForObject(sql,Integer.class);
	}
	public List<Registration> getRegisterId(int registerid) {
		return template.query("SELECT registration.rid,customer.cname,payment.`pmethod`,plan.`planmonth`,class.`classname`,trainer.`tname`,class.`classprice`,registration.`registerdate`,registration.`expiredate`,registration.`paymentamount` \r\n"
				+ "FROM registration \r\n"
				+ "INNER JOIN customer ON customer.cid = registration.`customer`\r\n"
				+ "INNER JOIN payment ON payment.`pid` = registration.payment\r\n"
				+ "INNER JOIN plan ON plan.`planid` = registration.`plan`\r\n"
				+ "INNER JOIN class ON class.`classid` = plan.`class`\r\n"
				+ "INNER JOIN trainer ON trainer.`tid` = plan.`trainer` \r\n"
				+ "WHERE registration.rid ="+registerid+"\r\n"
				+ "ORDER BY registration.`rid`;\r\n"
				+ "",new BeanPropertyRowMapper<Registration>() {
			@Override
			public Registration mapRow(ResultSet rs, int row)throws SQLException{
				Registration r = new Registration();
				 
				r.setRid(rs.getInt(1));
				r.setCname(rs.getString(2));
				r.setPmethod(rs.getString(3));
				r.setPlanmonth(rs.getInt(4));
				r.setClassname(rs.getString(5));
				r.setTname(rs.getString(6));
				r.setClassprice(rs.getDouble(7));
				r.setRegisterdate(rs.getString(8));
				r.setExpireddate(rs.getString(9));
				r.setPaymentamount(rs.getDouble(10));
				
				 return r;
			 } 
		 });
		
	}
	public int checkclass(Registration registration) {
		
		String sql ="SELECT COUNT(*) FROM registration \r\n"
				+ "WHERE customer ="+registration.getCid()+" AND  plan="+registration.getPlanid();
		return template.queryForObject(sql,Integer.class);

		
		
	}
public int checkdate(Registration registration) {
		
		String sql ="SELECT COUNT(*) FROM registration \r\n"
				+ " INNER JOIN plan ON plan.`planid` = registration.`plan`\r\n"
				+ " INNER JOIN class ON class.`classid` = plan.`class` \r\n"
				+ " WHERE registration.customer ="+registration.getCid()+" \r\n"
				+ " AND registration.registerdate < '"+registration.getFutureDate()+"' \r\n"
				+ " AND registration.expiredate > '"+registration.getToday()+"' \r\n" 
		+ " AND class.`classid`=(SELECT class FROM plan WHERE planid="+registration.getPlanid()+");";
		return template.queryForObject(sql,Integer.class);
	}
public int getClassid(int id) {
	String sql = "SELECT class FROM plan WHERE planid="+id+";";
	return template.queryForObject(sql,Integer.class);
}
public int getCount(int id, LocalDate currentDate) {
	String sql = "SELECT COUNT(*) FROM registration WHERE plan="+id+"\r\n"
			+ "AND expiredate > '"+currentDate+"'";
	return template.queryForObject(sql,Integer.class);
	
}
public List<Registration> getEpayment(int classid) {
	return template.query("SELECT t1.pid,t1.`pmethod` FROM (SELECT ROW_NUMBER() OVER (ORDER BY payment.`pid`) AS row_num,pid,pmethod FROM `payment`) AS t1 LEFT JOIN `registration` AS t2  ON t1.`pid` = t2.`payment`  WHERE MOD(t1.row_num, 2) = 0 GROUP BY t1.`pid`;",new BeanPropertyRowMapper<Registration>() {
		@Override
		public Registration mapRow(ResultSet rs, int row)throws SQLException{
			Registration r = new Registration();
			 
			r.setPid(rs.getInt(1));
			r.setPmethod(rs.getString(2));
		
			
			 return r;
		 } 
	 });
}
public List<Registration> getOddpayment(int classid) {
	return template.query("SELECT t1.pid,t1.`pmethod` FROM (SELECT ROW_NUMBER() OVER (ORDER BY payment.`pid`) AS row_num,pid,pmethod FROM `payment`) AS t1 LEFT JOIN `registration` AS t2  ON t1.`pid` = t2.`payment`  WHERE MOD(t1.row_num, 2) = 1 GROUP BY t1.`pid`;",new BeanPropertyRowMapper<Registration>() {
		@Override
		public Registration mapRow(ResultSet rs, int row)throws SQLException{
			Registration r = new Registration();
			 
			r.setPid(rs.getInt(1));
			r.setPmethod(rs.getString(2));
		
			
			 return r;
		 } 
	 });
	
}
public int saveMessage(Inquery i) {
		try {
			String sql="insert into inquery (mname,memail,message,cid) values ( ? , ? , ? ,?);" ;
			return template.update(sql,i.getMname(),i.getMemail(),i.getMessage(),i.getCid());
	} catch (Exception e) {
		
		return 0;
	}
}
public List<Inquery> getInbox(int id) {
	return template.query("select * from suggestion where cid="+id+" order by time desc;",new BeanPropertyRowMapper<Inquery>() {
	@Override
	public Inquery mapRow(ResultSet rs,int row)throws SQLException{
		Inquery i = new Inquery();
		i.setSid(rs.getInt(1));
		i.setCid(rs.getInt(2));
		i.setTime(rs.getString(3));
		i.setTitle(rs.getString(4));
		i.setDescription(rs.getString(5));
		return i;
		
	}
	});
}

	}
		

		
	
	

