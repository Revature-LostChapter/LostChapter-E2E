package com.revature.tests;

import org.junit.jupiter.api.AfterEach;
import org.junit.jupiter.api.Assertions;
import org.openqa.selenium.Keys;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.chrome.ChromeDriver;
import org.openqa.selenium.interactions.Actions;
import org.openqa.selenium.support.ui.WebDriverWait;

import com.revature.models.pages.CartPage;
import com.revature.models.pages.FrontPage;
import com.revature.models.pages.LoginPage;

import io.cucumber.java.en.Given;
import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;

public class CartTest {

	
	private WebDriver driver;
	private WebDriverWait wdw;
	private String websiteUrl = "http://localhost:4200";
	
	private CartPage cartPage;
	private LoginPage loginPage;
	private FrontPage frontPage; 
	
	@AfterEach
	public void teardown() {
		
		this.driver.close();
		this.driver.quit(); 
		
	}
	
	@Given("I am at the front page while logged in as a customer")
	public void i_am_at_the_front_page_while_logged_in_as_a_customer() throws InterruptedException {
		
		System.setProperty("webdriver.chrome.driver", "C:/WebDrivers/chromedriver.exe");
		this.driver = new ChromeDriver();
		driver.manage().window().maximize();
		wdw = new WebDriverWait(this.driver, 2);
		driver.get(LoginPage.pageUrl);
		
		this.loginPage = new LoginPage(driver);
		
		this.loginPage.login.setUsernameText("username");
		this.loginPage.login.setPasswordText("password");
		this.loginPage.login.clickLoginButton();
		
		driver.get(FrontPage.pageUrl);
		
		this.frontPage = new FrontPage(driver);
		Thread.sleep(500);
		
		
	}

	@When("I click on a product on the front page")
	public void i_click_on_a_product_on_the_front_page() throws InterruptedException {
		
		this.frontPage.frontPageComponent.clickFirstProduct();
		Thread.sleep(500);
		
	}

	@When("I click add to cart")
	public void i_click_add_to_cart() throws InterruptedException {
		
		this.frontPage.product.clickAddToCart();
		Thread.sleep(500);
		Actions action = new Actions(driver);
		action.sendKeys(Keys.ESCAPE).build().perform();
		Thread.sleep(500);
		
	}

	@When("I go to my cart")
	public void i_go_to_my_cart() {
		
		this.frontPage.navbar.clickCartButton();
		
	}

	@Then("I should see the product displayed in my cart")
	public void i_should_see_the_product_displayed_in_my_cart() {
		
		this.cartPage = new CartPage(driver);
		this.cartPage.cart.clickRefreshButton();
		
	}

	@When("I click remove item from cart")
	public void i_click_remove_item_from_cart() {
		
		this.cartPage = new CartPage(driver);
		this.cartPage.cart.clickDeleteButton();
		
	}

	@Then("I should see my cart is empty")
	public void i_should_see_my_cart_is_empty() {
		
		//How to check that cart is empty 
		
	}

	@Given("I am at the front page while not logged in")
	public void i_am_at_the_front_page_while_not_logged_in() throws InterruptedException {
		
		System.setProperty("webdriver.chrome.driver", "C:/WebDrivers/chromedriver.exe");
		this.driver = new ChromeDriver();
		driver.manage().window().maximize();
		wdw = new WebDriverWait(this.driver, 2);
		driver.get(websiteUrl);
		
		this.frontPage = new FrontPage(driver);
		Thread.sleep(500);
		
		
		
	}

	@Then("I should be prompted to login")
	public void i_should_be_prompted_to_login() {
		
		Assertions.assertEquals(LoginPage.pageUrl, this.driver.getCurrentUrl());
		
	}
	
	@When("I add another of the same product")
	public void i_add_another_of_the_same_product() throws InterruptedException {
	   this.cartPage = new CartPage(driver);
		this.cartPage.navbar.clickHomeButton();
		this.frontPage.frontPageComponent.clickFirstProduct();
		this.frontPage.product.clickAddToCart();
		Actions action = new Actions(driver);
		action.sendKeys(Keys.ESCAPE).build().perform();
		
	}

	@When("I select a product that is out of stock")
	public void i_select_a_product_that_is_out_of_stock() {
		// Write code here that turns the phrase above into concrete actions
		throw new io.cucumber.java.PendingException();
	}

	@Then("I should see an error message saying the item is out of stock")
	public void i_should_see_an_error_message_saying_the_item_is_out_of_stock() {
		// Write code here that turns the phrase above into concrete actions
		throw new io.cucumber.java.PendingException();
	}

	@Then("I should see the product displayed in my cart with a quantity of two")
	public void i_should_see_the_product_displayed_in_my_cart_with_a_quantity_of_two() {
		
		Assertions.assertEquals("2", this.cartPage.cart.getFirstProductQuantity());
		
		
	}

}
