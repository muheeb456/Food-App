package com.jsp.foodapp.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.jsp.foodapp.dao.ItemDao;
import com.jsp.foodapp.dao.ProductDao;
import com.jsp.foodapp.dto.FoodOrder;
import com.jsp.foodapp.dto.Item;
import com.jsp.foodapp.dto.Product;

@Controller
public class ItemController {
	
	@Autowired
	ProductDao productDao;
	
	@RequestMapping("/addtoorder")
	public ModelAndView additem(@RequestParam("id") int id) {
		ModelAndView mav= new ModelAndView("additem");
		Item item=new Item();
		Product p=productDao.getproductbyid(id);
		item.setName(p.getName());
		item.setCost(p.getCost());
		mav.addObject("item",item);
		return mav; 
	}
	
	@RequestMapping("/saveitemtoorder")
	public ModelAndView savetoorder(@ModelAttribute("item") Item i, HttpSession session) {
		FoodOrder o=(FoodOrder)session.getAttribute("order");
		List<Item> l=o.getItems();
		i.setFoodorder(o);
		if(l!=null) {
			l.add(i);
			o.setItems(l);
		}
		else {
			l=new ArrayList<Item>();
			l.add(i);
			o.setItems(l);
		}
		ModelAndView mav=new ModelAndView("redirect:/viewusermenu");
		return mav;
	}
	
}
