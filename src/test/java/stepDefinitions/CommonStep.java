package stepDefinitions;

import org.openqa.selenium.WebDriver;
import org.openqa.selenium.support.PageFactory;

import com.beecow.actions.CommonPage;

import commons.CommonTestCase;
import cucumber.api.java.en.Given;
import cucumber.api.java.en.Then;

public class CommonStep extends CommonTestCase {
	CommonPage commonPage;
	WebDriver driver;

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
		verifyTrue(commonPage.isDynamicTexDisplayed(Message1));
		verifyTrue(commonPage.isDynamicTexDisplayed(Message2));
	}

	@Then("^Verify successfully with  Username \"([^\"]*)\"$")
	public void verify_successfully_with_Username(String user) {
		verifyTrue(commonPage.isDynamicTexDisplayedLBL(user));
	}

	@Then("Quit browser$")
	public void close_Browser() {
		CommonTestCase.closeBrowser();
	}
}
