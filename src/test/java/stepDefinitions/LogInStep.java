package stepDefinitions;

import org.openqa.selenium.WebDriver;
import org.openqa.selenium.support.PageFactory;

import com.beecow.actions.HomePage;
import com.beecow.actions.LoginPage;

import commons.CommonTestCase;
import cucumber.api.java.en.Given;
import cucumber.api.java.en.When;

public class LogInStep extends CommonTestCase {

	WebDriver driver;
	LoginPage loginPage;
	HomePage homePage;
	
	public LogInStep() {
		driver = CommonTestCase.openBrowser();
		homePage = PageFactory.initElements(driver, HomePage.class);

	}

	@Given("^I navigate to Beecow and click button Login$")
	public void i_navigate_to_Beecow_and_click_button_Login() {
		loginPage = homePage.clickdangnhap();
		loginPage = PageFactory.initElements(driver, LoginPage.class);
	}

	@When("^I input data \"([^\"]*)\" to username$")
	public void i_input_data_to_username(String value) {
		loginPage.inputEmailorSdt(value);
	}

	@When("^I input data \"([^\"]*)\" to password$")
	public void i_input_data_to_password(String value) {
		loginPage.iputMatkhau(value);
	}

	@When("^I click button Login$")
	public void i_click_button_Login() {
		loginPage.clickbuttonDangnhap();
	}

}