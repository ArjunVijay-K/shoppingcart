package com.niit.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.niit.shoppingcartback.dao.ProductDAO;
import com.niit.shoppingcartback.model.Category;
import com.niit.shoppingcartback.model.Product;
import com.niit.shoppingcartback.model.Supplier;

@Controller
public class ProductController {

	@Autowired
	private Product product;
	
	@Autowired
	private ProductDAO productDAO;
	
	@RequestMapping("/newproduct")
	
	public ModelAndView newproduct(@ModelAttribute Product product){
		
ModelAndView mv = new ModelAndView("adminlogin");
		
mv.addObject("adminloggedin", true);

		productDAO.saveOrUpdate(product);
		
		return mv;
	}
	
@RequestMapping("/viewProduct")
	
	public ModelAndView viewproduct(){
	
	List<Product> productList = productDAO.list();
	
	ModelAndView mv = new ModelAndView("viewProduct");
	
	mv.addObject("productList", productList);
	/*mv.addObject("isviewsupplierclicked", true);*/
	mv.addObject("adminloggedin", true);
	
	return mv;
}

@RequestMapping("deleteProduct/{product_Id}")
public String deleteProduct(@PathVariable("product_Id") String product_Id){
	
	productDAO.delete(product_Id);
	
	return "redirect:/viewProduct";
	
	
	
}

@RequestMapping ("editProduct/{product_Id}")
public ModelAndView editProduct(@PathVariable("product_Id") String product_Id){
	
Product product =	productDAO.get(product_Id);

	ModelAndView mv  = new ModelAndView("editProduct");
	mv.addObject("product", product);
	mv.addObject("adminloggedin", true);
	return mv;
	
}

@RequestMapping ("/editProduct")
public String editProduct(@ModelAttribute Product product){
		
		
		
		productDAO.saveOrUpdate(product);
		
		return "redirect:/viewProduct";
}
}