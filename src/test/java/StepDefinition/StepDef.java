package StepDefinition;

import Utility.BrowserUtility;
import Utility.PropertiesFileReader;
import com.cucumber.listener.Reporter;
import constant.PageObjects;
import cucumber.api.java.en.Given;
import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;
import org.openqa.selenium.WebDriver;

import java.util.Properties;

public class StepDef {
    private WebDriver driver;
    PropertiesFileReader obj=new PropertiesFileReader();

    @Given("^Open the browser with URL$")
    public void open_the_browser_with_URL(){
        try {
            Properties properties = obj.getProperty();
            driver = BrowserUtility.openBrowser(driver, properties.getProperty("browser.name"), properties.getProperty("browser.url"));
            Reporter.addStepLog("Application has launched");
        }catch (AssertionError | Exception ex)
        {
            ex.printStackTrace();
        }

    }

    @Then("^Enter data in search box$")
    public void enter_data_in_search_box(){

        try {
  //          extentTest = extentTest.createNode(new GherkinKeyword("Then"), "enter_data_in_search_box");
            new PageObjects(driver).searchBox();
            Reporter.addStepLog("Key entered");
        }catch (AssertionError | Exception ex)
        {
            ex.printStackTrace();
     //       testStepHandle("FAIL",driver,extentTest,ex);
        }
    }

    @Then("^click on Enter button$")
    public void click_on_Enter_button() {

        try {
 //           extentTest = extentTest.createNode(new GherkinKeyword("Then"), "enter_data_in_search_box");
            new PageObjects(driver).enterBtn();
            Reporter.addStepLog("Enter button has clicked");
        }
        catch (AssertionError | Exception ex)
        {
            ex.printStackTrace();
   //         testStepHandle("FAIL",driver,extentTest,ex);
        }
    }

    @Then("^clear data$")
    public void clear_data(){

        try {
   //         extentTest = extentTest.createNode(new GherkinKeyword("Then"), "clear_data");
            new PageObjects(driver).clearData();
            Reporter.addStepLog("Data cleared");
        }
        catch (AssertionError | Exception ex)
        {
            ex.printStackTrace();
     //       testStepHandle("FAIL",driver,extentTest,ex);
        }
    }

    @When("^quit the browser$")
    public void quit_the_browser(){

        try {
     //       extentTest = extentTest.createNode(new GherkinKeyword("When"), "quit_the_browser");
            driver.quit();
            Reporter.addStepLog("Browser closed");
        }catch (AssertionError | Exception ex)
        {
            ex.printStackTrace();
           // testStepHandle("FAIL",driver,extentTest,ex);
        }
    }
}
