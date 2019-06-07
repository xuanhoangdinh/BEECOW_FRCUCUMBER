package stepDefinitions;

import org.openqa.selenium.WebDriver;
import org.openqa.selenium.support.PageFactory;

import com.beecow.actions.CreateProductPage;
import com.beecow.actions.HomePage;
import com.beecow.actions.LoginPage;

import commons.CommonTestCase;

public class CreatProductStep extends CommonTestCase {

	WebDriver driver;
	String username, password;
	HomePage homePage;
	LoginPage loginPage;
	CreateProductPage creatProductPage;
	static String customerId;

	public CreatProductStep() {
		driver = CommonTestCase.driver;
		creatProductPage = PageFactory.initElements(driver, CreateProductPage.class);
	}

	

	
}