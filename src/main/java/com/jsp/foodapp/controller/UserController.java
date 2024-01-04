package com.jsp.foodapp.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.jsp.foodapp.dao.UserDao;
import com.jsp.foodapp.dto.User;

@Controller
public class UserController {
	@Autowired
	UserDao userDao;
	
	@RequestMapping("/adduser")
	public ModelAndView adduser() {
		ModelAndView mav= new ModelAndView("adduserform");
		User u= new User();
		mav.addObject("user",u);
		return mav;
	}
	
	@RequestMapping("/saveuser")
	public ModelAndView saveuser(@ModelAttribute("user") User u) {
		if(userDao.adduser(u)) {
			ModelAndView mav= new ModelAndView("adminoptions");
			mav.addObject("msg","User added successfully");
			return mav;
		}
		else {
			ModelAndView mav= new ModelAndView("adduserform");
			mav.addObject("msg","User already exits");
			return mav;
		}
	}
	
	@RequestMapping("/validateuser")
	public ModelAndView loginuser(@RequestParam("email") String email,
			@RequestParam("password") String password, HttpSession session) {
		User user=userDao.loginuser(email,password);
		if(user!=null) {
			ModelAndView mav= new ModelAndView("useroptions");
			session.setAttribute("user", user);
			return mav;
		}
		else {
			ModelAndView mav= new ModelAndView("userloginform");
			mav.addObject("msg","Invalid Credentials");
			return mav;
		}
	}
	
	
}
