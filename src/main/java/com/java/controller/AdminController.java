package com.java.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Controller;

import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;


import com.java.bean.Admin;
import com.java.bean.Customer;
import com.java.bean.Inquery;
import com.java.bean.Trainer;
import com.java.bean.Registration;
import com.java.dao.AdminDao;
import com.java.dao.CustomerDao;
import com.java.dao.TrainerDao;

import java.time.format.DateTimeFormatter;  
import java.time.LocalDateTime;
@Controller
public class AdminController {
	@Autowired
	CustomerDao cdao;
	@Autowired
	TrainerDao tdao;
	@Autowired
	AdminDao adao;
	
	@RequestMapping("/dashboard")
	public String Dashboard(Model m,HttpSession session) {
		if(session.getAttribute("adminid") != null) {
			int aid = (int)session.getAttribute("adminid");
			m.addAttribute("aid", aid);
			List<Admin> adinfo = adao.getAdminInfo();
			m.addAttribute("admininfo",adinfo);
			m.addAttribute("default", new Admin());
			
			int membercount = adao.getMember();
			m.addAttribute("membercount", membercount);
			
			int classcount = adao.getClasses();
			m.addAttribute("classcount", classcount);
		
			int trainercount = adao.getTrainer();
			m.addAttribute("trainercount", trainercount);
			
			int plancount = adao.getPlancount();
			m.addAttribute("pcount", plancount);
			
			
			return "admin/adminindex";
			}else {
				return "redirect:/login";
			}
		
	}
	
	
	@RequestMapping("/adminprofile")
	public String Profile(Model m,HttpSession session) {
		if(session.getAttribute("adminid") != null) {
			int aid = (int)session.getAttribute("adminid");
			m.addAttribute("aid", aid);
			List<Admin> adinfo = adao.getAdminInfo();
			m.addAttribute("admininfo",adinfo);
			m.addAttribute("admin",new Admin());
		return"admin/profile";
		}else
		{
			return "redirect:/login";
		}
		
	}
	@RequestMapping("/plan")
	public String Plan(Model m,HttpSession session) {
		if(session.getAttribute("adminid") != null) {
			int aid = (int)session.getAttribute("adminid");
			m.addAttribute("aid", aid);
			List<Admin> adinfo = adao.getAdminInfo();
			m.addAttribute("admininfo",adinfo);
			
			List<Registration> register = adao.getPlan();
			m.addAttribute("plan", register);
			m.addAttribute("newplan",new Registration());
			List<Trainer> tinfo = tdao.getTrainer();
			m.addAttribute("trinfo", tinfo);
			List<Registration> classinfo = adao.getClsinfo();
			m.addAttribute("classinfo", classinfo);
			return "admin/plan";
			}else
			{
				return "redirect:/login";
			}
		
	}
	@RequestMapping("/trainer")
	public String Trainer(Model m,HttpSession session) {
		if(session.getAttribute("adminid") != null) {
			int aid = (int)session.getAttribute("adminid");
			m.addAttribute("aid", aid);
			List<Admin> adinfo = adao.getAdminInfo();
			m.addAttribute("admininfo",adinfo);
			List<Trainer> trainerlist = tdao.getTrainer();
			m.addAttribute("trainer", trainerlist);
			m.addAttribute("newtrainer",new Trainer());
			return "admin/Trainer";
			}else
			{
				return "redirect:/login";
			}
		
	}
	@RequestMapping( value="/off/{id}")
	public String Off(@PathVariable int id, Model m) {
		tdao.Off(id);
		tdao.planoff(id);
		return "redirect:/trainer";
	}
	@RequestMapping(value="/on/{id}")
	public String On(@PathVariable int id,Model m) {
		tdao.on(id);
		tdao.planon(id);
		return "redirect:/trainer";
	}
	@RequestMapping(value="/deletetrainer/{id}",method= RequestMethod.GET)
	public String deleteTrainer(@PathVariable int id) {
		tdao.deletefkplan(id);
		tdao.deltefktrainer(id);
		tdao.deletetrainer(id);
		return"redirect:/trainer";
	}
		
	@RequestMapping("/class")
	public String Class(Model m,HttpSession session) {
		if(session.getAttribute("adminid") != null) {
			int aid = (int)session.getAttribute("adminid");
			m.addAttribute("aid", aid);
			List<Admin> adinfo = adao.getAdminInfo();
			m.addAttribute("admininfo",adinfo);
			List<Customer> infoclass = cdao.getClasses();
		m.addAttribute("infoclass",infoclass );
		m.addAttribute("classes",new Customer());
		return "admin/class";
			}else
			{
				return "redirect:/login";
			}
		
	}
	@RequestMapping("/member")
	public String Member(Model m,HttpSession session) {
		if(session.getAttribute("adminid") != null) {
			int aid = (int)session.getAttribute("adminid");
			m.addAttribute("aid", aid);
			List<Admin> adinfo = adao.getAdminInfo();
			m.addAttribute("admininfo",adinfo);
			
			List<Customer> memberlist = adao.getCustomer();
		m.addAttribute("member",memberlist);
		
	return "admin/member";
			}else {
				return "redirect:/login";
			}
		
	}
	@RequestMapping(value="/viewTrainer/{id}")
	public String viewTrainer(@PathVariable int id,Model m,HttpSession session) {
		if(session.getAttribute("adminid") != null) {
			int aid = (int)session.getAttribute("adminid");
			m.addAttribute("aid", aid);
			List<Admin> adinfo = adao.getAdminInfo();
			m.addAttribute("admininfo",adinfo);
			List<Trainer> trainer = tdao.getTrainerById(id);
		m.addAttribute("trainer", trainer);
		return "admin/viewTrainer";
			}
		else
		{
			return "redirect:/login";
		}
	}
	@RequestMapping(value="/viewmember/{id}")
	public String viewMember(@PathVariable("id") int id,Model m,HttpSession session) {
		if(session.getAttribute("adminid") != null) {
			int aid = (int)session.getAttribute("adminid");
			m.addAttribute("aid", aid);
			List<Admin> adinfo = adao.getAdminInfo();
			m.addAttribute("admininfo",adinfo);
			List<Registration> reg = adao.getRegisterById(id);
			m.addAttribute("member", reg);
		return "admin/viewmember";
			}
		else
		{
			return "redirect:/login";
		}
		
	}
	@RequestMapping(value="/viewclassdetails/{id}")
	public String viewclass(@PathVariable("id") int id,Model m,HttpSession session) {
		if(session.getAttribute("adminid") != null) {
			int aid = (int)session.getAttribute("adminid");
			m.addAttribute("aid", aid);
			List<Admin> adinfo = adao.getAdminInfo();
			m.addAttribute("admininfo",adinfo);
			List<Customer> clinfo = adao.getClassInfo(id);
		m.addAttribute("clinfo", clinfo);
		return"admin/viewclass";
			}
		else
		{
			return "redirect:/login";
		}
		
			
		}
	@RequestMapping(value="/viewplan/{id}")
	public String viewplan(@PathVariable("id") int id,Model m,HttpSession session) {
		if(session.getAttribute("adminid") != null) {
			int aid = (int)session.getAttribute("adminid");
			m.addAttribute("aid", aid);
			List<Admin> adinfo = adao.getAdminInfo();
			m.addAttribute("admininfo",adinfo);
			
			List<Registration> clinfo = adao.getPlaninfo(id);
		m.addAttribute("clinfo", clinfo);
		return"admin/viewplan";
			}
		else
		{
			return "redirect:/login";
		}
		
			
		}
	
	
	@RequestMapping(value="/deletePlan/{id}",method= RequestMethod.GET)
	public String deletePlan(@PathVariable int id) {
		tdao.deleteforeignkey(id);	
		tdao.delete(id);
		return"redirect:/plan";
	}
	
	@RequestMapping(value="deletemember/{id}",method= RequestMethod.GET)
	public String deletemember(@PathVariable int id) {
		adao.delete(id);
		return "redirect:/member";
	}
	@RequestMapping(value="/editTrainer/{id}")
	public String editTrainer(@PathVariable int id,Model m) {
		List<Trainer> trainer = tdao.getTrainerById(id);
		m.addAttribute("newtrainer", new Trainer());
		m.addAttribute("trainer", trainer);
		return "admin/editTrainer";
	}
	
	@RequestMapping(value="/editsave",method=RequestMethod.POST)
	public String editsave(@ModelAttribute("newtrainer")Trainer trainer) {
		tdao.update(trainer);
		return "redirect:/viewTrainer/"+trainer.getId();
	}
	
	@RequestMapping(value="/editclass/{id}")
		public String editclass(@PathVariable int id,Model m) {
			List<Customer> clinfo = adao.getClassInfo(id);
			m.addAttribute("newclass", new Customer());
			m.addAttribute("classinfo", clinfo);
			return "admin/editclass";
		}
	@RequestMapping(value="editingsave",method=RequestMethod.POST)
	public String editingsave(@ModelAttribute("newclass")Customer customer,Model m,@RequestParam ("climage")MultipartFile n) {
		customer.setClimage(n);
		
		tdao.updateclass(customer);
		return "redirect:/viewclassdetails/"+customer.getClassid();
	}
	
	@RequestMapping(value="/deleteclass/{id}",method= RequestMethod.GET)
	public String deleteClass(@PathVariable int id) {
		adao.deleteclassregister(id);
		adao.deleteclassplan(id);	
		adao.deleteclass(id);
		return"redirect:/class";
	}
	
	
	
	
	@RequestMapping(value="/editplan/{id}")
	public String editplan(@PathVariable int id,Model m) {
		List<Registration> clinfo = adao.getPlaninfo(id);
		m.addAttribute("nplan", new Registration());
		m.addAttribute("classinfo", clinfo);
		List<Trainer> tinfo = tdao.getTrainer();
		m.addAttribute("tinfo", tinfo);
		List<Registration> classinfo = adao.getClsinfo();
		m.addAttribute("clsinfo", classinfo);
		return "admin/editplan";
	}
@RequestMapping(value="editingplan",method=RequestMethod.POST)
public String editingsave(@ModelAttribute("nplan")Registration register,Model m) {
	
	
	tdao.updateplan(register);
	return "redirect:/viewplan/"+register.getPlanid();
}
	
	
		@RequestMapping("/addTrainer")
	public String addTrianer(Model m,HttpSession session) {
			if(session.getAttribute("adminid") != null) {
				int aid = (int)session.getAttribute("adminid");
				m.addAttribute("aid", aid);
				List<Admin> adinfo = adao.getAdminInfo();
				m.addAttribute("admininfo",adinfo);
				m.addAttribute("trainer",new Trainer());
		return "admin/addTrainer";
				}
			else
			{
				return "redirect:/login";
			}
		
	}
		@RequestMapping(value="/saveTrainer",method= {RequestMethod.GET,RequestMethod.POST})
		public String AddTrianer(@ModelAttribute("trainer")Trainer trainer,Model m,@RequestParam ("timage")MultipartFile p) {
			
			if (!p.isEmpty()) {
				trainer.setTimage(p);
				tdao.save(trainer); 
			 }
			
			return "redirect:/trainer";
			
		}
		
		@RequestMapping("/addClass")
		public String addClass(Model m,HttpSession session) {
				if(session.getAttribute("adminid") != null) {
					int aid = (int)session.getAttribute("adminid");
					m.addAttribute("aid", aid);
					List<Admin> adinfo = adao.getAdminInfo();
					m.addAttribute("admininfo",adinfo);
					m.addAttribute("classes",new Customer());
			return "admin/addClass";
					}
				else
				{
					return "redirect:/login";
				}
			
		}
			@RequestMapping(value="/saveClass",method= {RequestMethod.GET,RequestMethod.POST})
			public String AddClass(@ModelAttribute("classes")Customer customer,Model m,@RequestParam ("climage")MultipartFile p) {
				
				if (!p.isEmpty()) {
					customer.setClimage(p);
					tdao.save(customer); 
				 }
				
				return "redirect:/class";
				
			}
		@RequestMapping("/addplan")
		public String addPlan(Model m,HttpSession session) {
			if(session.getAttribute("adminid") != null) {
				int aid = (int)session.getAttribute("adminid");
				m.addAttribute("aid", aid);
				List<Admin> adinfo = adao.getAdminInfo();
				m.addAttribute("admininfo",adinfo);
				m.addAttribute("plan",new Registration());
				List<Trainer> tinfo = tdao.getTrainer();
				m.addAttribute("trinfo", tinfo);
				List<Registration> classinfo = adao.getClsinfo();
				m.addAttribute("classinfo", classinfo);
		return "admin/addPlan";
				}
			else
			{
				return "redirect:/login";
			}
			
		}
		@RequestMapping(value="/savePlan",method= {RequestMethod.GET,RequestMethod.POST})
		public String AddPlan(@ModelAttribute("plan")Registration register,Model m) {
			tdao.plansave(register);
			return "redirect:/plan";
		}

		@RequestMapping("/photo")
		public String Showgallery(Model m,HttpSession session) {
			if(session.getAttribute("adminid") != null) {
				int aid = (int)session.getAttribute("adminid");
				m.addAttribute("aid", aid);
				List<Admin> adinfo = adao.getAdminInfo();
				m.addAttribute("admininfo",adinfo);
				
				List<Customer> gallery = cdao.getGallery();
				m.addAttribute("gallery", gallery);
			
			
		return "admin/Photo";
				}else {
					return "redirect:/login";
				}
			
		}
		@RequestMapping("/addphoto")
		public String addPhoto(Model m,HttpSession session) {
				if(session.getAttribute("adminid") != null) {
					int aid = (int)session.getAttribute("adminid");
					m.addAttribute("aid", aid);
					List<Admin> adinfo = adao.getAdminInfo();
					m.addAttribute("admininfo",adinfo);
					m.addAttribute("photo",new Customer());
			return "admin/addPhoto";
					}
				else
				{
					return "redirect:/login";
				}
			
		}
			@RequestMapping(value="/savephoto",method= {RequestMethod.GET,RequestMethod.POST})
			public String AddPhoto(@ModelAttribute("photo")Customer customer,Model m,@RequestParam ("mimage")MultipartFile p) {
				
				if (!p.isEmpty()) {
					customer.setMimage(p);
					adao.save(customer); 
				 }
				
				return "redirect:/photo";
				
			}
		@RequestMapping(value="/viewphoto/{id}")
		public String viewPhoto(@PathVariable("id") int id,Model m,HttpSession session) {
			if(session.getAttribute("adminid") != null) {
				int aid = (int)session.getAttribute("adminid");
				m.addAttribute("aid", aid);
				List<Admin> adinfo = adao.getAdminInfo();
				m.addAttribute("admininfo",adinfo);
				
				List<Customer> gallery = cdao.getGallery();
				m.addAttribute("gallery", gallery);
			return"admin/photo";
				}
			else
			{
				return "redirect:/login";
			}
			
				
			}
		
		
		@RequestMapping(value="/deletephoto/{id}",method= RequestMethod.GET)
		public String deletePhoto(@PathVariable int id) {
			adao.deletePhoto(id);
			return"redirect:/photo";
		}
		
		@RequestMapping("/message")
		public String Message(Model m,HttpSession session) {
			if(session.getAttribute("adminid") != null) {
				int aid = (int)session.getAttribute("adminid");
				m.addAttribute("aid", aid);
				List<Admin> adinfo = adao.getAdminInfo();
				m.addAttribute("admininfo",adinfo);
				List<Inquery> inquery = adao.getInquery();
				m.addAttribute("inquery",inquery);
				m.addAttribute("message",new Inquery());
			return "admin/message";
		
				}else {
					return "redirect:/login";
				}
			
		}
	
	@RequestMapping(value="deletemessage/{id}",method=RequestMethod.GET)
	public String deleteMessage(@PathVariable int id) {
		adao.deleteMessage(id);
		return"redirect:/message";
	}
	
	@RequestMapping(value="reply/{id}",method=RequestMethod.POST)
	public String Reply(@PathVariable int id ,@ModelAttribute("message")Inquery inquery,Model m) {
		DateTimeFormatter dtf = DateTimeFormatter.ofPattern("yyyy/MM/dd HH:mm:ss");  
		   LocalDateTime now = LocalDateTime.now();  
		   String messagetime=dtf.format(now);
		   inquery.setTime(messagetime);
		   inquery.setCid(id);
		   adao.reply(inquery);
		return "redirect:/message";
	}
}
