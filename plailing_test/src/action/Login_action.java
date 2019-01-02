package action;

import static org.testng.Assert.assertTrue;

import org.testng.annotations.Test;

import com.webtest.core.BaseTest;
import com.webtest.core.WebDriverEngine;

public class Login_action extends BaseTest{
	/**
	 * @author wangdonghui
	 * 登录动作
	 */ 
	public WebDriverEngine webtest;
	public Login_action(WebDriverEngine webtest) {
		this.webtest = webtest;
	}
	
	public void login(String mail,String password,String checkwords) {
		//打开网页
		webtest.open("http://localhost:8080/plailing/main.jsp ");
		//登录
		if(webtest.isTextPresent("退出")) {
			webtest.click("xpath=//a[contains(.,'退出')]");
		}
		webtest.click("xpath=//a[@class='btn btn-default navbar-btn sign-in']");
		webtest.typeAndClear("xpath=//input[@id='lemail']",mail);
		webtest.typeAndClear("xpath=//input[@id='lpassword']", password);
		//点击登录
		webtest.click("xpath=//button[contains(.,'登录')]");
		//断言
		assertTrue(webtest.isTextPresent(checkwords));
	}
}
