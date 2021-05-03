package constant;

import org.openqa.selenium.*;
import org.openqa.selenium.interactions.Actions;
import org.openqa.selenium.support.FindBy;
import org.openqa.selenium.support.PageFactory;

import static jdk.nashorn.internal.objects.NativeFunction.function;
import static org.mockito.BDDMockito.then;

public class PageObjects {
    WebDriver driver;
    public PageObjects(WebDriver driver)
    {
        this.driver=driver;
        PageFactory.initElements(driver,this);
    }

    @FindBy(css = "input[class=\"gLFyf gsfi\"][name=\"q\"][jsaction=\"paste:puy29d;\"]")
    public WebElement search;

    public void searchBox(){
        search.sendKeys("Facebook");
   /*     JavascriptExecutor j = (JavascriptExecutor) driver;
        WebElement element=(WebElement) j.executeScript("document.getElementByName('q')");*/
    }

    public void enterBtn(){
        search.sendKeys(Keys.ENTER);
    }

    public void clearData(){
        Actions act=new Actions(driver);
        act.sendKeys(Keys.SHIFT).clickAndHold().sendKeys(Keys.ENTER).clickAndHold().sendKeys(Keys.BACK_SPACE);
    }
}
