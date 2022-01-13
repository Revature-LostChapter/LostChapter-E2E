package com.revature.models.components;

import org.openqa.selenium.JavascriptExecutor;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.interactions.Actions;
import org.openqa.selenium.support.FindBy;
import org.openqa.selenium.support.PageFactory;
import org.openqa.selenium.support.ui.ExpectedConditions;
import org.openqa.selenium.support.ui.WebDriverWait;

public class FooterComponent {
	
	private WebDriver driver;
	private WebDriverWait wdw;

	public FooterComponent(WebDriver driver) {
		this.driver = driver;
		wdw = new WebDriverWait(this.driver, 2);

		PageFactory.initElements(this.driver, this);
	}

	@FindBy(xpath = "//*[@class=\"slider round\"]")
	private WebElement darkmodeSwitch;
	
	public void darkmodeSwitch() throws InterruptedException {
		
		Actions action = new Actions(driver);
		
		 ((JavascriptExecutor) driver).executeScript("arguments[0].scrollIntoView(true);", darkmodeSwitch);
	        Thread.sleep(500);
	        action.moveToElement(darkmodeSwitch, 30, 0).click().perform(); 

//		wdw.until(ExpectedConditions.elementToBeClickable(darkmodeSwitch)).click();

	}
	
//	@FindBy(tagName = "app-home")
	@FindBy(xpath = "//body")
	private WebElement body;
	
	public String getBodyColor() {

		return wdw.until(ExpectedConditions.visibilityOf(body)).getCssValue("color");

	}

}
