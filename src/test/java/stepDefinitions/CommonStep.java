package stepDefinitions;

import static org.testng.Assert.assertEquals;

import org.openqa.selenium.WebDriver;
import org.openqa.selenium.support.PageFactory;

import com.beecow.actions.CommonPage;
import com.beecow.actions.CreateProductPage;
import com.beecow.actions.HomePage;
import com.beecow.actions.LoginPage;

import commons.CommonTestCase;
import cucumber.api.java.en.Given;
import cucumber.api.java.en.Then;

public class CommonStep extends CommonTestCase {
	CommonPage commonPage;
	WebDriver driver;
	HomePage homePage;
	LoginPage loginPage;
	CreateProductPage createProductPage;

	public CommonStep() {
		driver = CommonTestCase.driver;
		commonPage = PageFactory.initElements(driver, CommonPage.class);
	}

	@Given("^I open \"([^\"]*)\" page$")
	public void i_open_page(String url) {
		commonPage.openDynamicPage(url);

	}

	@Then("Verify successfully with message \"(.*?)\"$")
	public void verifySuccessfullyWithMessage(String message) {
		verifyTrue(commonPage.isDynamicTexDisplayed(message));

	}

	@Then("^Verify successfully with Message \"([^\"]*)\" and \"([^\"]*)\"$")
	public void verify_successfully_with_Message_and(String Message1, String Message2) {
		checkDisplayedMsg(Message1);
		checkDisplayedMsg(Message2);
	}

	public void checkDisplayedMsg(String Message) {
		if (!(Message.isEmpty())) {
			verifyTrue(commonPage.isDynamicTexDisplayed(Message));
		}

	}

	@Then("^Verify successfully all message \"([^\"]*)\" and \"([^\"]*)\" and \"([^\"]*)\" and \"([^\"]*)\" and \"([^\"]*)\" and \"([^\"]*)\" and \"([^\"]*)\" and \"([^\"]*)\" and \"([^\"]*)\"and \"([^\"]*)\"$")
	public void verify_successfully_all_message_and_and_and_and_and_and_and_and_and(String Message1, String Message2,
			String Message3, String Message4, String Message5, String Message6, String Message7, String Message8,
			String Message9, String Message10) {
		checkDisplayedAllMsg(Message1);
		checkDisplayedAllMsg(Message2);
		checkDisplayedAllMsg(Message3);
		checkDisplayedAllMsg(Message4);
		checkDisplayedAllMsg(Message5);
		checkDisplayedAllMsg(Message6);
		checkDisplayedAllMsg(Message7);
		checkDisplayedAllMsg(Message8);
		checkDisplayedAllMsg(Message9);
		checkDisplayedAllMsg(Message10);
	}

	public void checkDisplayedAllMsg(String message) {
		if (!(message.isEmpty())) {
			verifyTrue(commonPage.isDynamicTexDisplayed(message));
		}

	}

	@Then("^Verify label username \"([^\"]*)\" is displayed on the top right screen$")
	public void verify_label_username_is_displayed_on_the_top_right_screen(String genymotionios) {
		verifyTrue(commonPage.isDynamicTexDisplayedLBL(genymotionios));

	}

	

	@Then("Quit browser$")
	public void close_Browser() {
		CommonTestCase.closeBrowser();
	}
}
