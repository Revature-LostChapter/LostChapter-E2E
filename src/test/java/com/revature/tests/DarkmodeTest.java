package com.revature.tests;

import org.openqa.selenium.WebDriver;
import org.openqa.selenium.support.ui.WebDriverWait;

import com.revature.models.pages.FooterPage;

import io.cucumber.java.en.Given;
import io.cucumber.java.en.Then;

public class DarkmodeTest {
	
	private WebDriver driver;
	private WebDriverWait wdw;
	private String websiteUrl = "localhost:4200";

	private FooterPage footerPage;
	
	@Given("I am at the main page")
	public void i_am_at_the_main_page() {
	    // Write code here that turns the phrase above into concrete actions
	    throw new io.cucumber.java.PendingException();
	}

	@Given("I turn on darkmode")
	public void i_turn_on_darkmode() {
	    // Write code here that turns the phrase above into concrete actions
	    throw new io.cucumber.java.PendingException();
	}

	@Then("I should see a darker theme")
	public void i_should_see_a_darker_theme() {
	    // Write code here that turns the phrase above into concrete actions
	    throw new io.cucumber.java.PendingException();
	}

	@Given("I have turned on darkmode")
	public void i_have_turned_on_darkmode() {
	    // Write code here that turns the phrase above into concrete actions
	    throw new io.cucumber.java.PendingException();
	}

	@Given("I turn off darkmode")
	public void i_turn_off_darkmode() {
	    // Write code here that turns the phrase above into concrete actions
	    throw new io.cucumber.java.PendingException();
	}

	@Then("I should see a lighter theme")
	public void i_should_see_a_lighter_theme() {
	    // Write code here that turns the phrase above into concrete actions
	    throw new io.cucumber.java.PendingException();
	}


}
