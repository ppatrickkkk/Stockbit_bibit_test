package testStep;

import io.appium.java_client.AppiumDriver;
import io.appium.java_client.android.AndroidDriver;
import io.cucumber.java.en.And;
import io.cucumber.java.en.Given;
import io.cucumber.java.en.Then;
import org.junit.Assert;
import org.openqa.selenium.remote.DesiredCapabilities;
import java.net.MalformedURLException;
import java.net.URL;
import org.openqa.selenium.By;
import org.openqa.selenium.WebElement;
import java.util.Map;
import java.util.HashMap;


public class helper {
    static AppiumDriver driver;

    @Given("User open the app")
    public void User_open_the_app() throws MalformedURLException {
        DesiredCapabilities caps = new DesiredCapabilities();
        caps.setCapability("platformName","Android");
        caps.setCapability("appium:automationName","uiautomator2");
        caps.setCapability("appium:deviceName","Pixel_4");
        caps.setCapability("appium:app","/Users/MAC09H1OWN/Documents/stockbitBibit_buildTest/mda-1.0.13-15.apk");
        caps.setCapability("appium:appWaitActivity", "*");
        caps.setCapability("appium:appWaitDuration", 30000);
        URL testUrl = new URL("http://0.0.0.0:4723/");
        driver = new AndroidDriver(testUrl, caps);
    }

    @And("User wait {int} seconds")
    public void userWait(int seconds) throws InterruptedException {
        Thread.sleep(seconds * 1000L);
    }

    @Then("Verify element {string} is equal to {string}")
    public void verify_element_is_equal_to(String xpath, String expectedText) {
        WebElement element = driver.findElement(By.xpath(xpath));
        String actualText = element.getText();
        Assert.assertEquals("Text does not match!", expectedText, actualText);
        System.out.println("Element text matches expected: " + expectedText);
    }
    @Then("Element {string} is displayed")
    public void element_is_displayed(String xpath) {
        WebElement element = driver.findElement(By.xpath(xpath));
        Assert.assertTrue("Element not displayed: " + xpath, element.isDisplayed());
        System.out.println("Element is displayed: " + xpath);
    }

    @Then("User clicks {string}")
    public void user_clicks(String xpath) {
        try {
            driver.findElement(By.xpath(xpath)).click();
            System.out.println("Clicked element: " + xpath);
        } catch (Exception e) {
            System.out.println("Failed to click element: " + xpath);
            e.printStackTrace();
            throw new RuntimeException("Click failed", e);
        }
    }

    @And("User swipe up {int} times")
    public void swipeUp(int times) throws InterruptedException {
        int deviceHeight = driver.manage().window().getSize().getHeight();
        int deviceWidth = driver.manage().window().getSize().getWidth();

        int startX = deviceWidth / 2;
        int startY = (int) (deviceHeight * 0.8);
        int endY = (int) (deviceHeight * 0.3);
        int speed = Math.abs(endY - startY);

        for (int i = 0; i < times; i++) {
            Map<String, Object> params = new HashMap<>();
            params.put("startX", startX);
            params.put("startY", startY);
            params.put("endX", startX);
            params.put("endY", endY);
            params.put("speed", speed);

            driver.executeScript("mobile: dragGesture", params);
            Thread.sleep(1000);
        }
    }

    @And("User fills {string} into {string}")
    public void userFillsInto(String text, String xpath) {
        WebElement element = driver.findElement(By.xpath(xpath));
        element.clear();
        element.sendKeys(text);
    }

}


