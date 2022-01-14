package com.revature.models.components;

import org.openqa.selenium.JavascriptExecutor;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.interactions.Actions;
import org.openqa.selenium.support.FindBy;
import org.openqa.selenium.support.PageFactory;
import org.openqa.selenium.support.ui.ExpectedConditions;
import org.openqa.selenium.support.ui.WebDriverWait;

public class UserProfileComponent {
	
	private WebDriver driver;
	private WebDriverWait wdw;
	
	@FindBy(xpath = "//input[@id='firstName']")
	private WebElement firstnameField;
	
	@FindBy(xpath = "//input[@id='lastName']")
	private WebElement lastnameField;
	
	@FindBy(xpath = "//input[@id='email']")
	private WebElement emailField; 
	
	@FindBy(xpath = "//input[@id='role']")
	private WebElement roleField;
	
	@FindBy(xpath = "//input[@id='age']")
	private WebElement ageField;
	
	@FindBy(xpath = "//input[@id='username']")
	private WebElement usernameField;
	
	@FindBy(xpath = "//input[@id='address']")
	private WebElement addressField; 
	
	@FindBy(xpath = "//button[@id='update']")
	private WebElement updateButton;
	
	public UserProfileComponent(WebDriver driver) {
		
		this.driver = driver; 
		this.wdw = new WebDriverWait(this.driver, 2);
		
		PageFactory.initElements(this.driver, this);
		
	}

	public WebDriver getDriver() {
		return driver;
	}

	public void setDriver(WebDriver driver) {
		this.driver = driver;
	}

	public WebDriverWait getWdw() {
		return wdw;
	}

	public void setWdw(WebDriverWait wdw) {
		this.wdw = wdw;
	}

	public WebElement getFirstnameField() {
		return firstnameField;
	}

	public void setFirstnameField(WebElement firstnameField) {
		this.firstnameField = firstnameField;
	}

	public WebElement getLastnameField() {
		return lastnameField;
	}

	public void setLastnameField(WebElement lastnameField) {
		this.lastnameField = lastnameField;
	}

	public WebElement getEmailField() {
		return emailField;
	}

	public void setEmailField(WebElement emailField) {
		this.emailField = emailField;
	}

	public WebElement getRoleField() {
		return roleField;
	}

	public void setRoleField(WebElement roleField) {
		this.roleField = roleField;
	}

	public WebElement getAgeField() {
		return ageField;
	}

	public void setAgeField(WebElement ageField) {
		this.ageField = ageField;
	}

	public WebElement getUsernameField() {
		return usernameField;
	}

	public void setUsernameField(WebElement usernameField) {
		this.usernameField = usernameField;
	}

	public WebElement getAddressField() {
		return addressField;
	}

	public void setAddressField(WebElement addressField) {
		this.addressField = addressField;
	}

	public WebElement getUpdateButton() {
		return updateButton;
	}

	public void setUpdateButton(WebElement updateButton) {
		this.updateButton = updateButton;
	}
	
	
	

}
