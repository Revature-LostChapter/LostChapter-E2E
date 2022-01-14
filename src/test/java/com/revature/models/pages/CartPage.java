package com.revature.models.pages;

import org.openqa.selenium.WebDriver;

import com.revature.models.components.CartComponent;
import com.revature.models.components.LoginComponent;
import com.revature.models.components.NavbarComponent;

public class CartPage {
	
	public NavbarComponent navbar;
	public CartComponent cart; 
	public static String pageUrl = "";
	
	public CartPage(WebDriver driver) {
		
		this.navbar = new NavbarComponent(driver);
		this.cart = new CartComponent(driver);
		
	}

}
