package stepDefinitions;

import static org.testng.Assert.assertEquals;

import org.openqa.selenium.WebDriver;
import org.openqa.selenium.support.PageFactory;

import com.beecow.actions.CommonPage;
import com.beecow.actions.CreateProductPage;
import com.beecow.actions.HomePage;

import commons.CommonTestCase;
import cucumber.api.java.en.Given;
import cucumber.api.java.en.Then;

public class CommonStep extends CommonTestCase {
	CommonPage commonPage;
	WebDriver driver;
	HomePage homePage;
	CreateProductPage createProductPage;

	public CommonStep() {
		driver = CommonTestCase.driver;
		commonPage = PageFactory.initElements(driver, CommonPage.class);
	}

	@Given("^I open \"([^\"]*)\" page$")
	public void i_open_page(String url) {
		commonPage.openDynamicPage(url);

	}

	@Given("^At Home Page click label \"([^\"]*)\" And Click label: \"([^\"]*)\"$")
	public void at_Home_Page_click_label_And_Click_label(String arg1, String arg2) {
		createProductPage = homePage.clickSellerPage();
		driver.get("https://www.beecow.com/page/upload-product");
	}

	@Given("^Click label: \"([^\"]*)\"$")
	public void click_label(String arg1) {

	}

	@Then("Verify successfully with message \"(.*?)\"$")
	public void verifySuccessfullyWithMessage(String message) {
		verifyTrue(commonPage.isDynamicTexDisplayed(message));

	}

	@Then("^Verify successfully with Message \"([^\"]*)\" and \"([^\"]*)\"$")
	public void verify_successfully_with_Message_and(String Message1, String Message2) {
		verifyTrue(commonPage.isDynamicTexDisplayed(Message1));
		verifyTrue(commonPage.isDynamicTexDisplayed(Message2));
	}

	@Then("^Verify label username \"([^\"]*)\" is displayed on the top right screen$")
	public void verify_label_username_is_displayed_on_the_top_right_screen(String genymotionios) {
		verifyTrue(commonPage.isDynamicTexDisplayedLBL(genymotionios));

	}

	@Then("^Verify current url is \"([^\"]*)\"$")
	public void verify_current_url_is(String arg1) {
		String currrentUrl = driver.getCurrentUrl();
		assertEquals(currrentUrl, "https://www.beecow.com/page/upload-product");

	}

	@Then("Quit browser$")
	public void close_Browser() {
		CommonTestCase.closeBrowser();
	}
}
