package commons;

import java.sql.Timestamp;
import java.util.Random;

import org.openqa.selenium.WebDriver;
import org.openqa.selenium.chrome.ChromeDriver;
import org.openqa.selenium.chrome.ChromeOptions;
import org.testng.Assert;

import io.github.bonigarcia.wdm.ChromeDriverManager;

public class CommonTestCase {
	public static WebDriver driver;

	public static WebDriver openBrowser() {
		ChromeOptions options = new ChromeOptions();
		options.addArguments("--disable-notifications");
		String version = "2.46";
		String url = "https://www.beecow.com";
		ChromeDriverManager.getInstance().version(version).setup();
		driver = new ChromeDriver(options);
		driver.get(url);
		driver.manage().window().maximize();
		return driver;
	}

//		String version = "2.46";
//		String url = "https://www.beecow.com";
//		ChromeDriverManager.getInstance().version(version).setup();
//		driver = new ChromeDriver();
//		driver.get(url);
//		driver.manage().window().maximize();
//		return driver;
//	}

	public static void closeBrowser() {
		driver.quit();
	}

	public static String randomUniqueNumber() {
		Timestamp timestamp = new Timestamp(System.currentTimeMillis());
		Long ExtentEmail = timestamp.getTime();
		return ExtentEmail.toString();
	}

	public String randomName() {
		Random rand = new Random();
		int n = rand.nextInt(9999999);
		return String.valueOf(n);
	}

	public static String randomEmail() {
		Random rand = new Random();
		int n = rand.nextInt(9999999);
		return String.valueOf(n);
	}

	public void verifyEqual(String actual, String expected) {
		Assert.assertEquals(actual, expected);
	}

	public void verifyTrue(Boolean condition) {
		Assert.assertTrue(condition);
	}

	public void verifyFalse(Boolean condition) {
		Assert.assertFalse(condition);
	}

}