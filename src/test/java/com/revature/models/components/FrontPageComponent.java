package com.revature.models.components;

import org.openqa.selenium.JavascriptExecutor;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.interactions.Actions;
import org.openqa.selenium.support.FindBy;
import org.openqa.selenium.support.ui.WebDriverWait;

public class FrontPageComponent {
	
	private WebDriver driver; 
	private WebDriverWait wdw; 
	
	@FindBy(xpath = "")
	private WebElement firstProduct; 
	
	public void clickFirstProduct() throws InterruptedException {
		
		Actions action = new Actions(driver);
		
		((JavascriptExecutor) driver).executeScript("arguments[0].scrollIntoView(true);", firstProduct);
		
		Thread.sleep(500);
		action.moveToElement(firstProduct, 5, 0).click().perform();
		
	}

}
