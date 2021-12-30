package com.revature.models.components;

import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;
import org.openqa.selenium.support.PageFactory;
import org.openqa.selenium.support.ui.ExpectedConditions;
import org.openqa.selenium.support.ui.WebDriverWait;

public class SignupComponent {

	private WebDriver driver;
	private WebDriverWait wdw; 
	
	@FindBy(xpath = "//input[@id='firstname']")
	private WebElement firstnameField;
	
	@FindBy(xpath = "//input[@id='lastname']")
	private WebElement lastnameField;
	
	@FindBy(xpath = "//input[@id='age']")
	private WebElement ageField;
	
	@FindBy(xpath = "//input[@id='username']")
	private WebElement usernameField;
	
	@FindBy(xpath = "//input[@id='email']")
	private WebElement emailField; 
	
	@FindBy(xpath = "//input[@id='password']")
	private WebElement passwordField;
	
	@FindBy(xpath = "//body[1]/href=\"https:[1]/app-root[1]/app-signup[1]"
			+ "/div[1]/mat-card[1]/form[1]/mat-card-content[1]/mat-form-field[7]"
			+ "/div[1]/div[1]/div[1]/mat-select[1]/div[1]/div[1]/span[1]")
	private WebElement roleDropdown;
	
	@FindBy(xpath = "//div[@id='mat-select-value-1']")
	private WebElement adminRole;
	
	@FindBy(xpath = "//div[@id='mat-select-value-1']")
	private WebElement userRole; 
	
	@FindBy(xpath = "//button[contains(text(),'Sign up')]")
	private WebElement signupButton; 
	
	@FindBy(xpath = "//a[contains(text(),'Already have an account? Login')]")
	private WebElement loginLink;
	
	@FindBy(xpath = "")
	private WebElement successMessageElement;
	
	@FindBy(xpath = "")
	private WebElement errorMessageElement;
	
	public SignupComponent(WebDriver driver) {
		
		this.driver = driver; 
		this.wdw = new WebDriverWait(this.driver, 2);
		
		PageFactory.initElements(this.driver, this);
		
	}
	
	public String getErrorMessage() {
		
		return wdw.until(ExpectedConditions.visibilityOf(errorMessageElement)).getText();
		
	}
	
	public String getSuccessMessage() {
		
		return wdw.until(ExpectedConditions.visibilityOf(successMessageElement)).getText();
		
	}
	
	public String getFirstnameText() {
		
		return wdw.until(ExpectedConditions.visibilityOf(firstnameField)).getText();
		
	}
	
	public void setFirstnameText(String firstname) {
		
		wdw.until(ExpectedConditions.visibilityOf(firstnameField)).sendKeys(firstname);
		
	}
	
	public String getLastnameText() {
		
		return wdw.until(ExpectedConditions.visibilityOf(lastnameField)).getText();
		
	}
	
	public void setLastnameText(String lastname) {
		
		wdw.until(ExpectedConditions.visibilityOf(lastnameField)).sendKeys(lastname);
		
	}
	
	public String getAgeText() {
		
		return wdw.until(ExpectedConditions.visibilityOf(ageField)).getText();
		
	}
	
	public void setAgeText(String age) {
		
		wdw.until(ExpectedConditions.visibilityOf(ageField)).sendKeys(age);
		
	}
	
	public String getUsernameText() {
		
		return wdw.until(ExpectedConditions.visibilityOf(usernameField)).getText();
		
	}
	
	public void setUsernameText(String username) {
		
		wdw.until(ExpectedConditions.visibilityOf(usernameField)).sendKeys(username);
		
	}
	
	public String getEmailText() {
		
		return wdw.until(ExpectedConditions.visibilityOf(emailField)).getText();
		
	}
	
	public void setEmailText(String email) {
		
		wdw.until(ExpectedConditions.visibilityOf(emailField)).sendKeys(email);
		
	}
	
	public String getPasswordText() {
		
		return wdw.until(ExpectedConditions.visibilityOf(passwordField)).getText();
		
	}
	
	public void setPasswordText(String password) {
		
		wdw.until(ExpectedConditions.visibilityOf(passwordField)).sendKeys(password);
		
	}
	
	public void clickRoleSelect() {
		
		wdw.until(ExpectedConditions.elementToBeClickable(roleDropdown)).click();
		
	}
	
	public void clickAdminRole() {
		
		wdw.until(ExpectedConditions.elementToBeClickable(adminRole)).click();
		
	}
	
	public void clickUserRole() {
		
		wdw.until(ExpectedConditions.elementToBeClickable(userRole)).click();
		
	}
	
	public void clickSignupButton() {
		
		wdw.until(ExpectedConditions.elementToBeClickable(signupButton)).click();
		
	}
	
	public void clickLoginLink() {
		
		wdw.until(ExpectedConditions.elementToBeClickable(loginLink)).click();
		
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
}
