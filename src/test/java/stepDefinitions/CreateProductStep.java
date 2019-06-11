package stepDefinitions;

import org.openqa.selenium.WebDriver;
import org.openqa.selenium.support.PageFactory;

import com.beecow.actions.CreateProductPage;
import com.beecow.actions.HomePage;
import com.beecow.actions.LoginPage;

import commons.CommonTestCase;
import cucumber.api.java.en.Given;
import cucumber.api.java.en.When;

public class CreateProductStep extends CommonTestCase {

	WebDriver driver;
	String username, password;
	HomePage homePage;
	LoginPage loginPage;
	CreateProductPage createProductPage;
	String userPath = System.getProperty("user.dir");
	String pathImage = userPath.concat("\\image\\2019259.jpg"),
	locatorDataImage=pathImage;

	public CreateProductStep() {
		driver = CommonTestCase.driver;
		createProductPage = PageFactory.initElements(driver, CreateProductPage.class);
	}

	@Given("^close popup advertisement$")
	public void close_popup_advertisement() {
		createProductPage.clickClosePopupView();
	}

	@When("^I click button Post$")
	public void i_click_button_Post() {
		createProductPage.clickPost();
	}

	@When("^I upload fields Image Succefully$")
	public void i_upload_fields_Image_Succefully() {
		createProductPage.uploadIMG(locatorDataImage);
	}

}
