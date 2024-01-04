package com.jsp.foodapp.controller;



import javax.persistence.PersistenceException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.jsp.foodapp.dao.AdminDao;
import com.jsp.foodapp.dto.Admin;

@Controller
public class AdminController {
	@Autowired
	AdminDao adminDao;
	
	@RequestMapping("/adminlogin")
	public ModelAndView adminlogin() {
		ModelAndView mav= new ModelAndView("adminloginform");
		Admin admin= new Admin();
		admin.setEmail("muheeb12@gmail.com");
		admin.setPassword("12345");
		
		try{
			adminDao.addAdmin(admin);
			mav.addObject("msg","Admin created successfully");
		}
		catch(PersistenceException e) {
			mav.addObject("msg","Admin is already created");
		}
		
		return mav;
	}
	
	@RequestMapping("/validate")
	public ModelAndView adminvalidator(@RequestParam("email") String email, @RequestParam("password") String password) {
		Admin a= adminDao.getAdmin(email, password);
		if(a!=null) {
			ModelAndView mav= new ModelAndView("adminoptions");
			return mav;
		}
		ModelAndView mav= new ModelAndView("adminloginform");
		mav.addObject("msg","Invalid Credentials");
		return mav;
	}
	
	
	
}
	

