package com.niit.shoppingcartback;

import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.niit.shoppingcartback.dao.CategoryDAO;


import com.niit.shoppingcartback.dao.UserDAO;

import com.niit.shoppingcartback.model.Category;
import com.niit.shoppingcartback.model.Product;
import com.niit.shoppingcartback.model.User;

public class CategoryTest {

	public static void main(String[] args) {

		AnnotationConfigApplicationContext context = new AnnotationConfigApplicationContext();
		context.scan("com.niit.shoppingcartback");
		context.refresh();

		CategoryDAO categoryDAO = (CategoryDAO) context.getBean("CategoryDAO");
		/*SupplierDAO supplierDAO = (SupplierDAO) context.getBean("SupplierDAO");*/
		/*ProductDAO productDAO = (ProductDAO) context.getBean("ProductDAO");*/
		UserDAO userDAO = (UserDAO) context.getBean("UserDAO");
		
		
		Category category = (Category) context.getBean("category");
		/*Supplier supplier = (Supplier) context.getBean("supplier");*/
		/*Product product = (Product) context.getBean("product");*/
		User user = (User) context.getBean("user");
		/*Cart cart = (Cart) context.getBean("cart");*/
		

		category.setName("CGName121");
		category.setDescription("CGDesc121");

		categoryDAO.saveOrUpdate(category);
		
	
		
		
		
		user.setUsername("Arjunvijay");
		user.setPassword("arjun");
		user.setMobilenumber("95212365");
		user.setEmailid("arjun@gmail.com");
		user.setAddress("adseadearfat");
		
		
		
		userDAO.saveOrUpdate(user);
			}

}
