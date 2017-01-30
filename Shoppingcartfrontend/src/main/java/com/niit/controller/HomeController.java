package com.niit.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.niit.shoppingcartback.dao.UserDAO;
import com.niit.shoppingcartback.model.User;


@Controller
public class HomeController {

	@Autowired
	private User user;
	
	@Autowired
	private UserDAO userDAO;
	
	
	@RequestMapping("/")
	public String homepage()
	{
		System.out.println("executing the method homepage");
		return "home";
	
	}
	
	@RequestMapping("/home")
	public ModelAndView showhomePage()
	{
		System.out.println("inside controller");
		ModelAndView mv = new ModelAndView("home");
		mv.addObject("msg","you clicked home link");
		mv.addObject("showhomePage", "true");
		return mv;
	}
	
	
	
	@RequestMapping("/login")
	public ModelAndView showLoginPage()
	{
		System.out.println("inside controller");
		ModelAndView mv = new ModelAndView("login");
		mv.addObject("msg","you clicked login link");
		mv.addObject("showLoginPage", "true");
	    mv.addObject("loginbuttonclicked", true);
		return mv;
	}
	
	@RequestMapping("/logout")
	public ModelAndView showlogoutpage()
	{
		ModelAndView mv = new ModelAndView("login");
		mv.addObject("message","You have successfully logged out" );
		return mv;
	}
	
	
	
	@RequestMapping("/signin")
	public ModelAndView loggedin(@RequestParam(value = "emailid") String emailid, 
			                     @RequestParam(value="password") String password, ModelMap model){
		
		String message;
		ModelAndView mv;
		if(emailid.equals("admin@gmail.com") && password.equals("admin"))
		{
			mv = new ModelAndView("/adminlogin");
			mv.addObject("adminloggedin", true);
			message = "You Have Successfully Logged In";
			
			
		}
		
	else if (userDAO.isValidUser(emailid, password, true))
		{
		 
			mv = new ModelAndView("/userlogin");
			//User user = userDAO.get(emailid);
			mv.addObject("userloggedin", true);
			/*List<Product> List = productDAO.list();
			model.addAttribute("User", user);
			model.addAttribute("productList",List);*/
			
			
			message = "You Have Successfully Logged In";
			
			
		}
	 
		else {
			
			mv = new ModelAndView("/login");
			
			message = "*your username or password incorrect";		
		}
		model.addAttribute("msg", message);
		model.addAttribute("emailid", emailid);
		return mv;
	}

		
	
		
	
	@RequestMapping("getregistration")
	public ModelAndView getregistration() {
		ModelAndView mv = new ModelAndView("registration");
		mv.addObject("signupclicked", true);
		
		return mv;
	}
	
	
	@RequestMapping("/newUser")
	public ModelAndView signup(@ModelAttribute User user, @RequestParam(value = "emailid") String email){
		
		ModelAndView mv;
		String message;
		
		if (userDAO.isAllReadyRegister(email, true)){
			message = "Your emailid already exist,You have to log in first";
		}
		else
		{
			userDAO.saveOrUpdate(user);
			message="You have successfully registerd";
		}
		
		 mv = new ModelAndView("login");
		mv.addObject("message",message);
		
		return mv;
	}
	
	@RequestMapping("/Categoryform")
	public ModelAndView category(){
		
		ModelAndView mv = new ModelAndView("Categoryform");
		mv.addObject("adminloggedin", true);
		
		
				return mv;
		
	}
	
	@RequestMapping("/Productform")
	public ModelAndView product(){
		
		
		ModelAndView mv = new ModelAndView("Productform");
		mv.addObject("adminloggedin", true);
		
		
				return mv;
		
	}
	
	@RequestMapping("/Supplierform")
	public ModelAndView supplier(){
		
		
		ModelAndView mv = new ModelAndView("Supplierform");
		mv.addObject("adminloggedin", true);
		
		
				return mv;
	}
}
		
	
	

