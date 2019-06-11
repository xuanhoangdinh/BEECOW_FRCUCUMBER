package stepDefinitions;

import org.openqa.selenium.WebDriver;
import org.openqa.selenium.support.PageFactory;

import com.beecow.actions.CreateProductPage;
import com.beecow.actions.HomePage;
import com.beecow.actions.LoginPage;

import commons.CommonTestCase;

public class CreateProductStep extends CommonTestCase {

	WebDriver driver;
	String username, password;
	HomePage homePage;
	LoginPage loginPage;
	CreateProductPage createProductPage;

	public CreateProductStep() {
		driver = CommonTestCase.driver;
		createProductPage = PageFactory.initElements(driver, CreateProductPage.class);
	}

	

}