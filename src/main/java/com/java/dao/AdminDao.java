package com.java.dao;

import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.sql.Blob;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Base64;
import java.util.List;

import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;

import com.java.bean.Admin;
import com.java.bean.Customer;
import com.java.bean.Inquery;
import com.java.bean.Registration;
import com.java.bean.Trainer;

public class AdminDao {
	JdbcTemplate template; 
	public void setTemplate(JdbcTemplate template) { 
		 this.template = template; 
	}
	@SuppressWarnings("deprecation")
	public Admin getAdmin() {
		String sql="select aid,aname,aemail,apassword from admin_table;";
		Admin data=template.queryForObject(sql, new Object[] {},new BeanPropertyRowMapper<>(Admin.class));
		return data;
	}
	
	public List<Admin> getAdminInfo() {
		return template.query("select *,ifnull(aimage,0) from admin_table;",new BeanPropertyRowMapper<Admin>() {
			@Override
			public Admin mapRow(ResultSet rs, int row)throws SQLException{
			Admin a = new Admin();
			a.setAid(rs.getInt(1));
			a.setAname(rs.getString(2));
			a.setAemail(rs.getString(3));
			a.setApassword(rs.getString(4));
			a.setAjob(rs.getString(5));
			a.setAcity(rs.getString(6));
			a.setAddress(rs.getString(7));	
				Blob b = rs.getBlob(9);
				 
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
		             
		             a.setImage(base64Image);
		             
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
				
				
				 return a;
			 } 
		 });
		
	}
	
	public List<Customer> getCustomer() {
		return template.query("select *,ifnull(cimage,0) from customer WHERE cid IN (SELECT DISTINCT customer FROM registration);",new BeanPropertyRowMapper<Customer>() {
			@Override
			public Customer mapRow(ResultSet rs, int row)throws SQLException{
			Customer g = new Customer();
				g.setCid(rs.getInt(1)); 
				g.setCname(rs.getString(2));
				g.setCemail(rs.getString(3));
				g.setCpassword(rs.getString(4));
				g.setCphone(rs.getString(5));
				g.setCgender(rs.getString(6));
				
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
	public List<Registration> getRegisterById(int id) {
		return template.query("SELECT registration.rid,customer.cname,payment.`pmethod`,class.`classname`,trainer.`tname`,class.`classprice`,registration.`registerdate`,registration.`expiredate`,registration.`paymentamount` \r\n"
				+ "FROM registration \r\n"
				+ "INNER JOIN customer ON customer.cid = registration.`customer`\r\n"
				+ "INNER JOIN payment ON payment.`pid` = registration.payment\r\n"
				+ "INNER JOIN plan ON plan.`planid` = registration.`plan`\r\n"
				+ "INNER JOIN class ON class.`classid` = plan.`class`\r\n"
				+ "INNER JOIN trainer ON trainer.`tid` = plan.`trainer` \r\n"
				+ "WHERE registration.customer = "+id+"\r\n"
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
	public List<Customer> getClassInfo(int id) {
		return template.query("select * from class where classid="+id+";",new BeanPropertyRowMapper<Customer>() {
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
	public int getMember() {
		String sql = "select count(DISTINCT customer) from registration;";
		return template.queryForObject(sql,Integer.class);
	}
	public int getClasses() {
		String sql = "select count(*) from class;";
		return template.queryForObject(sql,Integer.class);
	}
	public int getTrainer() {
		String sql = "select count(*) from trainer;";
		return template.queryForObject(sql,Integer.class);
		
	}
	public int getPlancount() {
		String sql = "select count(*) from plan;";
		return template.queryForObject(sql,Integer.class);
	}
	public List<Registration> getPlan() {
		return template.query("SELECT plan.`planid`,plan.`planmonth`,class.`classname`,trainer.`tname`,plan.`starttime`,plan.`endtime`,plan.`status`\r\n"
				+ "FROM plan\r\n"
				+ "INNER JOIN trainer ON trainer.`tid` = plan.`trainer`\r\n"
				+ "INNER JOIN class ON class.`classid` = plan.`class`;",new BeanPropertyRowMapper<Registration>() {
			@Override
			public Registration mapRow(ResultSet rs, int row)throws SQLException{
				Registration r = new Registration();
				 
				r.setPlanid(rs.getInt(1));
				r.setPlanmonth(rs.getInt(2));
				r.setClassname(rs.getString(3));
				r.setTname(rs.getString(4));
				r.setStarttime(rs.getString(5));
				r.setEndtime(rs.getString(6));
				r.setPlanstatus(rs.getInt(7));
				
			
				
				 return r;
			 }
				});
	}
	public List<Registration> getPlaninfo(int id) {
		return template.query("SELECT plan.`planid`,plan.`planmonth`,class.`classname`,trainer.`tname`,plan.`starttime`,plan.`endtime`,plan.`status`\r\n"
				+ "FROM plan\r\n"
				+ "INNER JOIN trainer ON trainer.`tid` = plan.`trainer`\r\n"
				+ "INNER JOIN class ON class.`classid` = plan.`class`\r\n"
				+ "WHERE planid="+id+";",new BeanPropertyRowMapper<Registration>() {
			@Override
			public Registration mapRow(ResultSet rs, int row)throws SQLException{
				Registration r = new Registration();
				 
				r.setPlanid(rs.getInt(1));
				r.setPlanmonth(rs.getInt(2));
				r.setClassname(rs.getString(3));
				r.setTname(rs.getString(4));
				r.setStarttime(rs.getString(5));
				r.setEndtime(rs.getString(6));
				r.setPlanstatus(rs.getInt(7));
				
			
				
				 return r;
			 }
				});
	}
	public List<Registration> getClsinfo() {
		return template.query("SELECT * FROM class;",new BeanPropertyRowMapper<Registration>() {
			@Override
			public Registration mapRow(ResultSet rs, int row)throws SQLException{
				Registration g = new Registration();
				g.setClassid(rs.getInt(1));
				g.setClassname(rs.getString(2));
				g.setClassprice(rs.getDouble(3));
				g.setClassdesc(rs.getString(4));
				g.setCapacity(rs.getInt(5));
				g.setEquipments(rs.getString(6));
				
				return g;
			 }
				});
	}
	public int delete(int id) {
		String sql="delete from registration where registration.customer= "+id+""; 
		return template.update(sql); 
		
	}
	public void deleteclassregister(int id) {
		String sql="delete from registration where plan in(SELECT planid FROM plan WHERE class="+id+")"; 
		template.update(sql); 
		
		
	}
	public void deleteclassplan(int id) {
		String sql="delete from plan where class="+id; 
		template.update(sql); 
		
	}
	public void deleteclass(int id) {
		String sql="delete from class where classid="+id; 
		template.update(sql);
		
	}
	public void deletePhoto(int id) {
		String sql="delete from gallery where gid="+id; 
		template.update(sql);
		
	}
	public int save(Customer c) {
		try {
			byte[] imageData = c.getMimage().getBytes();
			String sql = "insert into gallery (gid,gimage) values ( ? , ? );";
			return template.update(sql,c.getGid(),imageData);
		} catch (Exception e) {
			
			return 0;
		}
		
	}
	public List<Inquery> getInquery() {
		return template.query("SELECT * FROM inquery;",new BeanPropertyRowMapper<Inquery>() {
			@Override
			public Inquery mapRow(ResultSet rs, int row)throws SQLException{
				Inquery i = new Inquery();
				i.setInid(rs.getInt(1));
				i.setMname(rs.getString(2));
				i.setMemail(rs.getString(3));
				i.setMessage(rs.getString(4));
				i.setCid(rs.getInt(5));
				return i;
			 }
				});
		
	}
	public void deleteMessage(int id) {
		String sql = "delete from inquery where id="+id;
		template.update(sql);
	}
	public int reply(Inquery i) {
		String sql = "insert into suggestion (cid,time,title,description) values ( ?,?,?,? );";
		return template.update(sql,i.getCid(),i.getTime(),i.getTitle(),i.getDescription());
		
	}
	
	
	
	
}
			


