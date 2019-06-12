package stepDefinitions;

import org.openqa.selenium.WebDriver;
import org.openqa.selenium.support.PageFactory;

import com.beecow.actions.CreateProductPage;
import com.beecow.actions.HomePage;
import com.beecow.actions.LoginPage;

import commons.CommonTestCase;
import cucumber.api.java.en.Given;
import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;

public class CreateProductStep extends CommonTestCase {

	WebDriver driver;
	String username, password;
	HomePage homePage;
	LoginPage loginPage;
	CreateProductPage createProductPage;
	String userPath = System.getProperty("user.dir");
	String pathImage = userPath.concat("\\image\\2019259.jpg"), locatorDataImage = pathImage;
	String productName = "XuanHoang" + randomName();

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

	// create product
	@Given("^Navigate to Upload Product Page$")
	public void navigate_to_Upload_Product_Page() {
		createProductPage.navigateToUploadProductPage();
	}

	@Then("^Verify current url \"([^\"]*)\"$")
	public void verify_current_url(String url) {
		createProductPage.verifyCurrentUrlUploadProductPage(url);
	}

	@When("^I input random Product Name$")
	public void i_input_random_Product_Name() {
		createProductPage.inputNameProduct(productName);
	}

	@When("^I Select random combobox Chọn danh mục so (\\d+)$")
	public void i_Select_random_combobox_Chọn_danh_mục_so(int arg1) {
		createProductPage.clickCate1();
		createProductPage.clickRandomValueCate1();
	}

	@When("^I Select random combobox Chọn danh mục thu (\\d+)$")
	public void i_Select_random_combobox_Chọn_danh_mục_thu(int arg1) {
		createProductPage.clickCate2();
		createProductPage.clickRandomValueCate2();
		createProductPage.clickRandomCat3();
	}

	@When("^I input data \"([^\"]*)\" to decription$")
	public void i_input_data_to_decription(String value) {
		createProductPage.inputDescription(value);
	}

	@When("^Input Quantity: \"([^\"]*)\"$")
	public void input_Quantity(String value)  {
		createProductPage.inputQuantity(value);
	}

}
