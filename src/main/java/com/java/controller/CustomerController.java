package com.java.controller;

import java.util.List;



import javax.servlet.http.HttpSession;

import java.time.LocalDate;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.java.bean.CustomerInfo;
import com.java.bean.Inquery;
import com.java.bean.Registration;
import com.java.bean.Customer;
import com.java.dao.AdminDao;
import com.java.dao.CustomerDao;
import com.java.dao.TrainerDao;
import com.java.bean.Trainer;

import com.java.bean.Admin;


@Controller
public class CustomerController {
	@Autowired
	CustomerDao cdao;
	@Autowired
	TrainerDao tdao;
	@Autowired
	AdminDao adao;
	
	
	
	
	@RequestMapping("/registration")
	public String booking(Model m) {
		m.addAttribute("customer",new Customer());
		return "registration";
	}
	
	@RequestMapping(value="/saveCustomer",method= {RequestMethod.GET,RequestMethod.POST})
	public String saveCustomer(@ModelAttribute("customer")Customer customer, Model m,RedirectAttributes reAtt) {
		if(cdao.checkemail(customer.getCemail())== 0)
		{
			cdao.saveCustomer(customer);
			return "../../index";
		}
		else {
			m.addAttribute("resultflag",0);
			m.addAttribute("message","Your Email is already exist!");
			
			m.addAttribute("register",customer);
			
			return "registration";
			
		}
			
		
	}
	
	@RequestMapping("/login")
	public String login(Model m) {
		m.addAttribute("login",new Customer());
		return "login";
	}
	@RequestMapping(value="/checkUser",method= {RequestMethod.GET,RequestMethod.POST})
	public String checkUser(@ModelAttribute("login")Customer customer, Model m,RedirectAttributes reAtt,HttpSession session) {
		Admin a = adao.getAdmin();
		
		if(customer.getCemail().equals(a.getAemail()) && customer.getCpassword().equals(a.getApassword())) {
			m.addAttribute("admin", a);
			int adminid = a.getAid();
			session.setAttribute("adminid",adminid);
			List<Admin> adinfo = adao.getAdminInfo();
			m.addAttribute("admininfo",adinfo);
				return "redirect:/dashboard";
		}
		else if(cdao.checkUser(customer)==1) {
			
			CustomerInfo cinfo=cdao.getCustomerInfo(customer.getCemail());
			m.addAttribute("customerinfo",cinfo);
			int customerid = cinfo.getCid();
			session.setAttribute("customerid", customerid);
			return "redirect:/hero";
			
		}else {
			reAtt.addFlashAttribute("resultflag",0);
			reAtt.addFlashAttribute("message","Your Information are Wrong!,Please Try Again");
			return "redirect:/login";
		}
	}
	
	@RequestMapping("/profile")
	public String profile(Model m,HttpSession session) {
		if(session.getAttribute("customerid") != null) {
		int cuid = (int)session.getAttribute("customerid");
		m.addAttribute("cid", cuid);
		List<Customer> cinfo=cdao.getCustomerInfoById(cuid);
		
		m.addAttribute("customerinfo",cinfo);
		
		
		return "profile";
		}
		else {
			return "redirect:/login";
		}
	}
	@RequestMapping(value="/editprofile/{id}")
	public String editprofile(@PathVariable("id") int id,Model m,HttpSession session) {
		if(session.getAttribute("customerid") != null) {
		int cuid = (int)session.getAttribute("customerid");
		m.addAttribute("cid", cuid);
		
		List<Customer> customerinfo = cdao.getCustomerInfoById(cuid);
		m.addAttribute("newprofile", new Customer());
		m.addAttribute("profileinfo", customerinfo);
		return "editProfile";
		}
		else {
			return "/";
		}
	}
	@RequestMapping(value="/profilesave",method=RequestMethod.POST)
	public String editsave(@ModelAttribute("newprofile")Customer customer) {
		cdao.update(customer);
		return "redirect:/profile";
	}
	
	
	@RequestMapping("/logout")
	public String logout(Model m,HttpSession session) {
		session.invalidate();
		return "redirect:/hero";
	}
	@RequestMapping("/RegistrationHistory")
	public String RegistrationHistory(Model m,HttpSession session) {
		if(session.getAttribute("customerid") != null) {
			int cuid = (int)session.getAttribute("customerid");
			m.addAttribute("cid", cuid);
			List<Customer> cinfo=cdao.getCustomerInfoById(cuid);
			m.addAttribute("customerinfo",cinfo);
		
		
		List<Registration> register = cdao.getRegistrationById(cuid);
		
		m.addAttribute("register",register);
		
		return "RegistrationHistory";
		}
		else {
			return "redirect:/login";
		}
		
	}
	

	@RequestMapping(value="/saveCustomerimage",method= {RequestMethod.GET,RequestMethod.POST})
	public String saveCustomerimage(@ModelAttribute("customer")Customer customer,@RequestParam ("mimage")MultipartFile mimage,Model m,HttpSession session) {
		if (!mimage.isEmpty()) {
			
				int cuid = (int)session.getAttribute("customerid");
				m.addAttribute("cid", cuid);
				List<Customer> cinfo=cdao.getCustomerInfoById(cuid);
				m.addAttribute("customerinfo",cinfo);
			
			 customer.setMimage(mimage);
			 cdao.update(customer,cuid); 
		 }
		return "redirect:/profile";
		
	}
	
	
	
	
	@RequestMapping("/hero")
	public String home(Model m,HttpSession session) {
		if(session.getAttribute("customerid") != null) {
			int cuid = (int)session.getAttribute("customerid");
			m.addAttribute("cid", cuid);
			List<Customer> cinfo=cdao.getCustomerInfoById(cuid);
			m.addAttribute("customerinfo",cinfo);
		}
		return "../../index"; 
	}
	
	@RequestMapping("/contact")
	public String contact(Model m,HttpSession session) {
		
		if(session.getAttribute("customerid") != null) {
			int cuid = (int)session.getAttribute("customerid");
			m.addAttribute("cid", cuid);
			List<Customer> cinfo=cdao.getCustomerInfoById(cuid);
			m.addAttribute("customerinfo",cinfo);
			m.addAttribute("message", new Inquery());
			
		}
		m.addAttribute("default",new Customer());
		return "Contacting";
	}
	
	
	@RequestMapping(value="/saveInquery",method={RequestMethod.POST})
	public String saveCustomer(@ModelAttribute("message")Inquery inquery, Model m) {
			System.out.println(inquery);
				cdao.saveMessage(inquery);
				
				
				return "redirect:/hero";
			}
	@RequestMapping("/myinbox")
		public String Inbox(Model m,HttpSession session) {
		if(session.getAttribute("customerid") != null) {
			int cuid = (int)session.getAttribute("customerid");
			m.addAttribute("cid", cuid);
			List<Customer> cinfo=cdao.getCustomerInfoById(cuid);
			m.addAttribute("customerinfo",cinfo);
			
			List<Inquery> inbox = cdao.getInbox(cuid);
			m.addAttribute("inbox", inbox);
			return "Inbox";
			
		}else
		
		return "redirect:/login";
	}
	
	
	
		
	@RequestMapping("/Trainer")
	public String trainer(Model m,HttpSession session) {
		if(session.getAttribute("customerid") != null) {
			int cuid = (int)session.getAttribute("customerid");
			m.addAttribute("cid", cuid);
			List<Customer> cinfo=cdao.getCustomerInfoById(cuid);
			m.addAttribute("customerinfo",cinfo);
		}
		List<Trainer> trainerlist = tdao.getTrainer();
		m.addAttribute("trainerlist", trainerlist);
		return "Trainer";
	}
	
	@RequestMapping("/events")
	public String event(Model m) {
		m.addAttribute("default",new Customer());
		return "event";
	}
	
	@RequestMapping("/gallery")
	public String gallery(Model m,HttpSession session) {
		if(session.getAttribute("customerid") != null) {
			int cuid = (int)session.getAttribute("customerid");
			m.addAttribute("cid", cuid);
			List<Customer> cinfo=cdao.getCustomerInfoById(cuid);
			m.addAttribute("customerinfo",cinfo);
		}
		List<Customer> gallery = cdao.getGallery();
		m.addAttribute("gallery", gallery);
		return "gallery";
	}
	
	@RequestMapping("/classes")
	public String classes(Model m,HttpSession session) {
		if(session.getAttribute("customerid") != null) {
			int cuid = (int)session.getAttribute("customerid");
			m.addAttribute("cid", cuid);
			List<Customer> cinfo=cdao.getCustomerInfoById(cuid);
			m.addAttribute("customerinfo",cinfo);
		}
		
		List<Customer> classes = cdao.getClasses();
		m.addAttribute("classes",classes);
		return "classes";
	}
	
	//That crazy//
	@RequestMapping("/viewclass/{id}")
	public String classdetails(@PathVariable("id") int id,Model m,HttpSession session) {
		
		if(session.getAttribute("customerid") != null) {
			int cuid = (int)session.getAttribute("customerid");
			m.addAttribute("cid", cuid);
			List<Customer> cinfo=cdao.getCustomerInfoById(cuid);
			m.addAttribute("customerinfo",cinfo);
			}
		
		LocalDate currentDate = LocalDate.now();
		
		List<Registration> plandata = cdao.getplan(id,currentDate);
		m.addAttribute("plan", plandata);
	
		List<Customer> viewinfo = cdao.getClassInfo(id);
		m.addAttribute("classinfo", viewinfo);
		
		m.addAttribute("registration", new Registration());
		
		m.addAttribute("classid",id);

		return "viewclass";
		}
	
	@RequestMapping("/plan/{id}")
	public String Plan(Model m,@PathVariable("id")int id,HttpSession session) {
		if(session.getAttribute("customerid") != null) {
			int cuid = (int)session.getAttribute("customerid");
			m.addAttribute("cid", cuid);
			LocalDate currentDate = LocalDate.now();
			System.out.println(currentDate);
		List<Registration> plandata = cdao.getplan(id,currentDate);
		m.addAttribute("plan", plandata);
		
		List<Customer> viewinfo = cdao.getClassInfo(id);
		m.addAttribute("classinfo", viewinfo);
		
		m.addAttribute("registration", new Registration());
		
		m.addAttribute("planid", id);
		return "plan";
		}
		else {
			return"redirect:/";
		}
	}
		
	
	
	@RequestMapping(value="/saveBooking/{planid}",method= {RequestMethod.GET,RequestMethod.POST})
	public String saveBooking(@ModelAttribute("registration")Registration registration,@PathVariable("planid")int id,Model m,HttpSession session) {

		if(session.getAttribute("customerid") != null) {
			int cuid = (int)session.getAttribute("customerid");
			m.addAttribute("cid", cuid);
			
			
			List<Customer> cinfo=cdao.getCustomerInfoById(cuid);
			m.addAttribute("customerinfo",cinfo);
			
			m.addAttribute("registration",new Registration());
			m.addAttribute("planid", id);
			
			int classid = cdao.getClassid(id);
			m.addAttribute("classid", classid);
			
			int planmonths=cdao.getPlanDays(registration);
		
		double price = cdao.getClassPrice(id);
		double paymentamount = price*planmonths;
		m.addAttribute("totalprice", paymentamount);
		registration.setPaymentamount(paymentamount);
		System.out.println(paymentamount);
		
		LocalDate currentDate = LocalDate.now();
		List<Customer> viewinfo = cdao.getClassInfo(classid);
		m.addAttribute("classinfo", viewinfo);
		
		int ccount = cdao.getCount(id,currentDate);
		m.addAttribute("ccount", ccount);
		System.out.println(ccount);
		
		List<Registration> payment = cdao.getPayment(classid);
		m.addAttribute("pay", payment);
		List<Registration> even = cdao.getEpayment(classid);
		m.addAttribute("even", even);
		
		List<Registration> odd = cdao.getOddpayment(classid);
		m.addAttribute("odd", odd);
		
		
		return "applyclass";
		}
		else {
			return"redirect:/";
		}
	}
	
	@RequestMapping(value="/applyingclass/{classid}",method= {RequestMethod.GET,RequestMethod.POST})
	public String applyClass(@ModelAttribute("registration")Registration registration,@PathVariable("classid")int id,Model m,RedirectAttributes reAtt,HttpSession session){
		if(session.getAttribute("customerid") != null) {
			int cuid = (int)session.getAttribute("customerid");
			m.addAttribute("cid", cuid);
			List<Customer> cinfo=cdao.getCustomerInfoById(cuid);
			m.addAttribute("customerinfo",cinfo);
			
			
			
			
		LocalDate currentDate = LocalDate.now();
		
		int planmonths=cdao.getPlanDays(registration);
		LocalDate futureDate = currentDate.plusMonths(planmonths).minusDays(1);
		
		registration.setToday(currentDate);
		registration.setFutureDate(futureDate);
		double price = cdao.getClassPrice(registration.getPlanid());
		double paymentamount = price*planmonths;
		registration.setPaymentamount(paymentamount);
		registration.setCid(cuid);
		System.out.println(registration.getCid());
		System.out.println(registration.getPlanid());
		System.out.println(id);
		if(cdao.checkclass(registration)== 0) {
			if(cdao.checkdate(registration)== 0) {
				
			List<Customer> viewinfo = cdao.getClassInfo(id);
			m.addAttribute("classinfo", viewinfo);
			
			System.out.println(registration.getPid());
			cdao.saveBooking(registration);
			int registerid = cdao.getRegistrationid();
			
			List<Registration> register = cdao.getRegisterId(registerid);
			m.addAttribute("register", register);
			return "slip";
			}
		
		else {
			
			reAtt.addFlashAttribute("resultflag",0);
			reAtt.addFlashAttribute("message","You have not finished current class!");
			
			return "redirect:/plan/"+id;
		}
		}
		else {

			reAtt.addFlashAttribute("resultflag",0);
			reAtt.addFlashAttribute("message","You already register this class!");
			
			return "redirect:/plan/"+id;
			}

		}else {
			return"redirect:/";
		}
		
	}
	
	
	
	
	
	
}
