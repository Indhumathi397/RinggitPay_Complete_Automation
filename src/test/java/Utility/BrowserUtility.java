package Utility;

import io.github.bonigarcia.wdm.WebDriverManager;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.chrome.ChromeDriver;
import org.openqa.selenium.edge.EdgeDriver;
import org.openqa.selenium.ie.InternetExplorerDriver;

public class BrowserUtility {

    public static WebDriver openBrowser(WebDriver driver,String browserName,String url)
    {
        if(browserName.equalsIgnoreCase("chrome"))
        {
            WebDriverManager.chromedriver().setup();
            driver=new ChromeDriver();
            driver.get(url);
            return driver;
        }
        else if (browserName.equalsIgnoreCase("ie"))
        {
            WebDriverManager.iedriver().setup();
            driver=new InternetExplorerDriver();
            driver.get(url);
            return driver;
        }
        else{
            WebDriverManager.edgedriver().setup();
            driver=new EdgeDriver();
            driver.get(url);
            return driver;
        }
    }
}
