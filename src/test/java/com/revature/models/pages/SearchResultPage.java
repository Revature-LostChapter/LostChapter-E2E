package com.revature.models.pages;

import org.openqa.selenium.WebDriver;

import com.revature.models.components.SearchFilterComponent;
import com.revature.models.components.SearchResultsComponent;

public class SearchResultPage {
	
	public SearchResultsComponent searchResults;
	public SearchFilterComponent searchFilter; 
	public static String pageUrl = "http://localhost:4200/home";

	
	public SearchResultPage(WebDriver driver) {
		
		this.searchResults = new SearchResultsComponent(driver);
		this.searchFilter = new SearchFilterComponent(driver);
		
	}

}
