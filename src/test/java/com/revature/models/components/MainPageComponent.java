package com.revature.models.components;

import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;
import org.openqa.selenium.support.PageFactory;
import org.openqa.selenium.support.ui.WebDriverWait;

public class MainPageComponent {

	private WebDriver driver;
	private WebDriverWait wdw;

	public MainPageComponent(WebDriver driver) {
		this.driver = driver;
		wdw = new WebDriverWait(this.driver, 10);

		PageFactory.initElements(this.driver, this);
	}

	@FindBy(css = "body.h-100.mat-typography:nth-child(2) app-root.d-flex.flex-column.h-100:nth-child(15) app-home.ng-star-inserted:nth-child(2) div.container div.row.row-cols-4.row-cols-sm-3.row-cols-xl-6.mb-4.pb-4.g-5 div.col.ng-star-inserted:nth-child(1) div.card.h-30.w-30 div:nth-child(1) > img:nth-child(1)")
	private WebElement firstBook;

	public WebElement getFirstBook() {
		return firstBook;
	}

}
