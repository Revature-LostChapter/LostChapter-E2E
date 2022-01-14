package com.revature.models.pages;

import org.openqa.selenium.WebDriver;

import com.revature.models.components.NavbarComponent;
import com.revature.models.components.UserProfileComponent;

public class UserProfilePage {
	
	public NavbarComponent navbar;
	public UserProfileComponent profile;
	public static String pageUrl = "http://localhost:4200/userprofile";
	
	public UserProfilePage(WebDriver driver) {
		
		this.navbar = new NavbarComponent(driver);
		this.profile = new UserProfileComponent(driver);
	}

}
