package com.revature.models.pages;

import org.openqa.selenium.WebDriver;

import com.revature.models.components.MainPageComponent;

public class MainPage {

	public MainPageComponent main;
	
	
	public MainPage(WebDriver driver) {
		
		this.main = new MainPageComponent(driver);
		
	}
	
	
}
