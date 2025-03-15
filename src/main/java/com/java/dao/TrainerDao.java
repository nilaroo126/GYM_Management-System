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

import com.java.bean.Customer;
import com.java.bean.Registration;
import com.java.bean.Trainer;

public class TrainerDao {
	JdbcTemplate template; 
	public void setTemplate(JdbcTemplate template) { 
		 this.template = template; 
	}
	
	public List<Trainer> getTrainer() {
		return template.query("select * from trainer;",new BeanPropertyRowMapper<Trainer>() {
			@Override
			public Trainer mapRow(ResultSet rs, int row)throws SQLException{
				Trainer t = new Trainer();
				 
				 t.setId(rs.getInt(1));
				 t.setName(rs.getString(2));
				 t.setEmail(rs.getString(3));
				 t.setPhone(rs.getString(4));
				 t.setAge(rs.getInt(5));
				 t.setWeight(rs.getString(6));
				 t.setHeight(rs.getString(7));
				 t.setGender(rs.getString(8));
				 t.setExperience(rs.getString(9));
				 t.setDesc(rs.getString(10));
				 t.setStatus(rs.getInt(11));
				
				 Blob b = rs.getBlob(12);
				 
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
		             
		             t.setImage(base64Image);
		             
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
				
				
				 return t;
			 } 
		 });
	}
	public List<Trainer> getTrainerById(int id) {
		return template.query("select * from trainer where tid="+id+";",new BeanPropertyRowMapper<Trainer>() {
			@Override
			public Trainer mapRow(ResultSet rs, int row)throws SQLException{
				Trainer t = new Trainer();
				 
				 t.setId(rs.getInt(1));
				 t.setName(rs.getString(2));
				 t.setEmail(rs.getString(3));
				 t.setPhone(rs.getString(4));
				 t.setAge(rs.getInt(5));
				 t.setWeight(rs.getString(6));
				 t.setHeight(rs.getString(7));
				 t.setGender(rs.getString(8));
				 t.setExperience(rs.getString(9));
				 t.setDesc(rs.getString(10));
				 t.setStatus(rs.getInt(11));
				 Blob b = rs.getBlob(12);
				 
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
		             
		             t.setImage(base64Image);
		             
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
				
				
				 return t;
			 } 
		 });
	}
	public int delete(int id) {
		
		String sql="delete from plan where planid="+id+"";    
	    return template.update(sql);   
		
	}
	public int deleteforeignkey(int id) {
		String sql="delete from registration where plan = "+id+"";   
	    return template.update(sql);   
		
	}
	
	
	public int update(Trainer t) {
		try {
			byte[] imageData = t.getTimage().getBytes();
			String sql = "update trainer set tname=?,temail=?,tphone=?,tage=?,tweight=?,theight=?,tgender=?,texperience=?,tdesc=?,timage=? where tid=?";
			
			return template.update(sql,t.getName(),t.getEmail(),t.getPhone(),t.getAge(),t.getWeight(),t.getHeight(),t.getGender(),t.getExperience(),t.getDesc(),imageData,t.getId());
		} catch (IOException e) {
			// TODO Auto-generated catch block
			return 0;
		}
		
	
		
}
	public int save(Trainer t) {
		
		try {
			byte[] imageData = t.getTimage().getBytes();
			String sql = "insert into trainer (tname,temail,tphone,tage,tweight,theight,tgender,texperience,tdesc,status,timage) values ( ? , ? , ? , ? , ? , ? , ? , ? , ? , 1 , ? );";
			return template.update(sql,t.getName(),t.getEmail(),t.getPhone(),t.getAge(),t.getWeight(),t.getHeight(),t.getGender(),t.getExperience(),t.getDesc(),imageData);
		} catch (IOException e) {
			// TODO Auto-generated catch block
			return 0;
		}
		
	}
	public int updateclass(Customer c) {
		try {
			byte[] imageData = c.getClimage().getBytes();
			String sql = "update `class` set classname=?,classprice=?,capacity=?,equipments=?,equantity=?,cimage=? where classid=?";
			return template.update(sql,c.getClassname(),c.getClassprice(),c.getCapacity(),c.getEquipments(),c.getEquantity(),imageData,c.getClassid());
		} catch (Exception e) {
			
			return 0;
		}
		
	}
	public int save(Customer c) {

		try {
			byte[] imageData = c.getClimage().getBytes();
			String sql = "insert into class (classname,classprice,classdesc,capacity,equipments,equantity,cimage) values ( ? , ? , ? , ? , ? , ? , ? );";
			return template.update(sql,c.getClassname(),c.getClassprice(),c.getClassdesc(),c.getCapacity(),c.getEquipments(),c.getEquantity(),imageData);
		} catch (IOException e) {
			// TODO Auto-generated catch block
			return 0;
		}
		
	}
	public int updateplan(Registration r) {
		try {
			
			String sql = "update `plan` set planmonth=?,class=?,trainer=?,starttime=?,endtime=? where planid=?";
			return template.update(sql,r.getPlanmonth(),r.getClassid(),r.getTid(),r.getStarttime(),r.getEndtime(),r.getPlanid());
		} catch (Exception e) {
			
			return 0;
		}
		
	}
	public int plansave(Registration r) {
		try {
			
			String sql = "insert into plan (planmonth,class,trainer,starttime,endtime) values ( ? , ? , ? , ? , ?);";
			return template.update(sql,r.getPlanmonth(),r.getClassid(),r.getTid(),r.getStarttime(),r.getEndtime());
		} catch (Exception e) {
			
			return 0;
		}
		
	}
	public void Off(int id) {
		String sql="update trainer set status='0'where tid="+id;
		template.update(sql);
		
	}
	public void on(int id) {
		String sql="update trainer set status='1'where tid="+id;
		template.update(sql);
	}
	public void planoff(int id) {
		String sql="update plan set status='0' where trainer="+id;
		template.update(sql);
		
	}
	public void planon(int id) {
		String sql="update plan set status='1' where trainer="+id;
		template.update(sql);
		
	}
	
	public int deletefkplan(int id) {
		
		String sql="delete from registration where plan in (select planid from plan where trainer="+id+")"; 
		return template.update(sql);
	}
public int deltefktrainer(int id) {
		
		String sql="delete from plan where trainer="+id+""; 
		return template.update(sql); 
	}
	public int deletetrainer(int id) {
		String sql="delete from trainer where tid="+id+""; 
		return template.update(sql);
		
	}
	
	} 


