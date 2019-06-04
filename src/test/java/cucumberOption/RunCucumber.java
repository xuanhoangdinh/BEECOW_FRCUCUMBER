package cucumberOption;

import org.junit.runner.RunWith;

import cucumber.api.CucumberOptions;
import cucumber.api.junit.Cucumber;

@RunWith(Cucumber.class)
@CucumberOptions(features = "src/test/java/features/Feature_01_LogIn.feature", monochrome = true, glue = { "stepDefinitions" }, tags = {
		"@LogInBeecow" })

public class RunCucumber {

}