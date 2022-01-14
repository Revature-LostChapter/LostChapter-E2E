package com.revature.models.components;

import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;
import org.openqa.selenium.support.PageFactory;
import org.openqa.selenium.support.ui.ExpectedConditions;
import org.openqa.selenium.support.ui.WebDriverWait;

public class SearchResultsComponent {
	
	private WebDriver driver;
	private WebDriverWait wdw;

	public SearchResultsComponent(WebDriver driver) {
		this.driver = driver;
		wdw = new WebDriverWait(this.driver, 10);

		PageFactory.initElements(this.driver, this);
	}
	
	@FindBy(css = "body.container:nth-child(2) div.header-title:nth-child(1) p:nth-child(1) > span:nth-child(2)")
	private WebElement firstSearchResultTitle;
	
	public String getFirstSearchResultTitle() {

		return wdw.until(ExpectedConditions.visibilityOf(firstSearchResultTitle)).getText();

	}

}
