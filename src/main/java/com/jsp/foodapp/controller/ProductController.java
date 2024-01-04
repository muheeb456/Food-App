package com.jsp.foodapp.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.jsp.foodapp.dao.ProductDao;
import com.jsp.foodapp.dto.Product;

@Controller
public class ProductController {

	@Autowired
	ProductDao productDao;

	@RequestMapping("/addproduct")
	public ModelAndView addproduct() {
		ModelAndView mav= new ModelAndView("productform");
		mav.addObject("product",new Product());
		return mav;
	}
	
	@RequestMapping("/saveproduct")
	public ModelAndView saveproduct(@ModelAttribute("product") Product p) { 
		if(productDao.saveprod(p)) {
			ModelAndView mav= new ModelAndView("adminoptions");
			return mav;
		}
		else {
			ModelAndView mav= new ModelAndView("productform");
			mav.addObject("msg","Product exists");
			return mav;
		}
	}
	
	@RequestMapping("/viewproducts")
	public ModelAndView viewProds() {
		List<Product> l=productDao.getproducts();
		ModelAndView mav= new ModelAndView("viewproducts");
		mav.addObject("products",l);
		return mav;
	}
	
	@RequestMapping("/viewusermenu")
	public ModelAndView viewusermenu() {
		List<Product> l=productDao.getproducts();
		ModelAndView mav= new ModelAndView("usermenu");
		mav.addObject("products",l);
		return mav;
	}
	
	@RequestMapping("/updateproduct")
	public ModelAndView updateproduct(@RequestParam("id") int id) {
		ModelAndView mav= new ModelAndView("productupdate");
		Product p=productDao.getproductbyid(id);
		mav.addObject("product",p);
		return mav;
	}
	
	@RequestMapping("/savenewproduct")
	public ModelAndView savenewProd(@ModelAttribute("product") Product p) {
		if(productDao.updateproduct(p)) {
			ModelAndView mav= new ModelAndView("redirect:/viewproducts");
			mav.addObject("msg","Updated successfully");
			return mav;
		}
		else {
			ModelAndView mav= new ModelAndView("viewproducts");
			mav.addObject("msg","Not able to update");
			return mav;
		}
	}
	
	@RequestMapping("/deleteproduct")
	public ModelAndView delete(@RequestParam("id") int id) {
		productDao.deletebyid(id);
		ModelAndView mav=new ModelAndView("redirect:/viewproducts");
		return mav;
	}
}
