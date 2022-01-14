package com.revature.tests;

import java.util.function.BooleanSupplier;

import org.junit.jupiter.api.Assertions;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.chrome.ChromeDriver;
import org.openqa.selenium.support.ui.ExpectedConditions;
import org.openqa.selenium.support.ui.WebDriverWait;

import com.revature.models.components.MainPageComponent;
import com.revature.models.pages.MainPage;

import io.cucumber.java.en.Given;
import io.cucumber.java.en.Then;
import io.github.bonigarcia.wdm.WebDriverManager;

public class DisplayTest {
	
	private WebDriver driver;
	private WebDriverWait wdw;
	private String websiteUrl = "localhost:4200";
	private MainPage mainpage;

	
	
	
	@Given("I am at the welcome page")
	public void i_am_at_the_welcome_page() {
		// Write code here that turns the phrase above into concrete actions
		WebDriverManager.chromedriver().setup();

		this.driver = new ChromeDriver();
		
		
		this.driver.get("http://localhost:4200");
		
	}

	@Then("I should see products listed")
	public void i_should_see_products_listed() {
		Assertions.assertNotNull(ExpectedConditions.elementToBeClickable(mainpage.main.getFirstBook()));
		
	}

	@Given("I am at a product that is out of stock")
	public void i_am_at_a_product_that_is_out_of_stock() {
		// Write code here that turns the phrase above into concrete actions
		throw new io.cucumber.java.PendingException();
	}

	@Then("I should see {string}#Check message")
	public void i_should_see_check_message(String string) {
		// Write code here that turns the phrase above into concrete actions
		throw new io.cucumber.java.PendingException();
	}

}
