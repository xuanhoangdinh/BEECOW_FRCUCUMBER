package com.beecow.actions;

import static org.testng.Assert.assertEquals;

import org.openqa.selenium.WebDriver;
import org.openqa.selenium.support.PageFactory;

import com.beecow.ui.HomePageUI;
import com.beecow.ui.LoginPageUI;

import commons.CommonFunction;

public class LoginPage extends CommonFunction {

	public LoginPage(WebDriver driver) {
		super(driver);
	}

	public void clearByJs(String value) {
		executeScriptBrowser(value);
	}

	public LoginPage clickdangnhap() {
		waitVisible(HomePageUI.DANGNHAP_TXT);
		click(HomePageUI.DANGNHAP_TXT);
		return PageFactory.initElements(driver, LoginPage.class);
	}

//	private  void ctrlAEmail() {
//		waitVisible(LoginPageUI.MOBILEOREMAIL_DANGNHAP_TXT);
//		(LoginPageUI.MOBILEOREMAIL_DANGNHAP_TXT).sendKey(Keys.CONTROL + "a");
//		
//	}

	public void clearEmailorSdt() {
		waitVisible(LoginPageUI.MOBILEOREMAIL_DANGNHAP_TXT);
		clear(LoginPageUI.MOBILEOREMAIL_DANGNHAP_TXT);

	}

	public void inputEmailorSdt(String value) {
		waitVisible(LoginPageUI.MOBILEOREMAIL_DANGNHAP_TXT);
		input(LoginPageUI.MOBILEOREMAIL_DANGNHAP_TXT, value);

	}

	public void clearMatkhau() {
		waitVisible(LoginPageUI.MATKHAU_DANGNHAP_TXT);
		clear(LoginPageUI.MATKHAU_DANGNHAP_TXT);
	}

	public void iputMatkhau(String value) {
		waitVisible(LoginPageUI.MATKHAU_DANGNHAP_TXT);
		input(LoginPageUI.MATKHAU_DANGNHAP_TXT, value);
	}

	public LoginPage clickbuttonDangnhap() {
		waitVisible(LoginPageUI.DANGNHAP_LOGIN_BTN);
		click(LoginPageUI.DANGNHAP_LOGIN_BTN);
		return PageFactory.initElements(driver, LoginPage.class);

	}

	public String getDynamicText(String value) {
		waitVisibleDynamicElement(LoginPageUI.DYNAMIC_MSG, value);
		return getTextDynamicElement(LoginPageUI.DYNAMIC_MSG, value);
	}

	public String getTextUserName() {
		waitVisible(LoginPageUI.USERNAME_LBL);
		return getText(LoginPageUI.USERNAME_LBL);
	}

	public CreateProductPage clickSellerPage() {
		waitVisible(HomePageUI.SELLER_LINK);
		clickByJs(HomePageUI.SELLER_LINK);
		return PageFactory.initElements(driver, CreateProductPage.class);
	}

	

//	public void verifyCurrentUrlUploadProductPage(String arg1) {
//		String currrentUrl = driver.getCurrentUrl();
//		assertEquals(currrentUrl, "https://www.beecow.com/page/upload-product");
//	}
}
