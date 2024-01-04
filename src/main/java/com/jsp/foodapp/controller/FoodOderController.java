package com.jsp.foodapp.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.jsp.foodapp.dao.FoodOrderDao;
import com.jsp.foodapp.dao.UserDao;
import com.jsp.foodapp.dto.FoodOrder;
import com.jsp.foodapp.dto.Item;
import com.jsp.foodapp.dto.User;

@Controller
public class FoodOderController {
	@Autowired
	FoodOrderDao orderDao;
	
	@Autowired
	UserDao userDao;
	
	@RequestMapping("/orderfood")
	public ModelAndView orderfood() {
		ModelAndView mav= new ModelAndView("orderdetails");
		FoodOrder fo= new FoodOrder();
		mav.addObject("order",fo);
		return mav;
	}
	
	@RequestMapping("/savefoodorder")
	public ModelAndView saveorder(@ModelAttribute("order") FoodOrder order, HttpSession session) {
		session.setAttribute("order", order);
		ModelAndView mav= new ModelAndView("redirect:/viewusermenu");
		return mav;
	}
	
	@RequestMapping("/submitorder")
	public ModelAndView submitorder(HttpSession session){
		User user=(User)session.getAttribute("user");
		FoodOrder order=(FoodOrder)session.getAttribute("order");
		List<FoodOrder> l=user.getFoodorder();
		order.setUser(user);
		int sum=0;
		if(l!=null) {
			for(Item i:order.getItems()) {
				sum+=(i.getCost()*i.getQuantity());
			}
			order.setTotalcost(sum);
			l.add(order);
		}
		else {
			l=new ArrayList<FoodOrder>();
			for(Item i:order.getItems()) {
				sum+=(i.getCost()*i.getQuantity());
			}
			order.setTotalcost(sum);
			l.add(order);
		}
		user.setFoodorder(l);
		userDao.updateuser(user);
		ModelAndView mav=new ModelAndView("viewbill");
		return mav;
		
	}
	
	
	@RequestMapping("/viewallorders")
	public ModelAndView showfoodorders() {
		ModelAndView mav=new ModelAndView("viewallfoodorders");
		List<FoodOrder> l= orderDao.getallfoodorders();
		mav.addObject("allorders", l);
		return mav;
	}
	
	@RequestMapping("/viewuserorders")
	public ModelAndView viewuserorders(HttpSession session) {
		User u=(User) session.getAttribute("user");
		ModelAndView mav=new ModelAndView("userorders");
		List<FoodOrder> l=u.getFoodorder();
		mav.addObject("orders",l);
		return mav;
	}
	
}
