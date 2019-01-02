package test;

import static org.testng.Assert.assertEquals;
import static org.testng.Assert.assertTrue;

import org.testng.annotations.BeforeClass;
import org.testng.annotations.DataProvider;
import org.testng.annotations.Test;

import com.webtest.core.BaseTest;

import action.Login_action;
import dataprovider.NSDataProvider;

public class ApplyPlace_test extends BaseTest{
/**
 * @author wangdonghui
 * 申请场地
 * */
	@BeforeClass
	public void login() {
		Login_action login = new Login_action(webtest);
		login.login("123@qq.com", "123456", "退出");
	}
	
	@Test(dataProvider="applyplace",dataProviderClass=NSDataProvider.class)
	public void applyplace(String id,String sitetype,String useyear,String useother,
			String uselang,String checkwords){
		//点击个人中心
		webtest.click("xpath=//a[contains(.,'个人中心')]");
		//点击上传课程
		webtest.click("xpath=//em[contains(.,'上传课程')]");
		//点击申请场地
		webtest.click("xpath=.//*[@id='labs']/div[1]/div[2]/a[1]/input");
		//选择场地类型
		webtest.selectByValue("xpath=//select[@id='sitetype']", sitetype);
		//使用时间
		webtest.type("xpath=//input[@id='usetime']",useyear);
		webtest.tapClick();
		webtest.type("xpath=//input[@id='usetime']", useother);
		//使用时长
		webtest.type("xpath=//input[@id='uselang']", uselang);
		//点击申请场地
		webtest.click("xpath=//input[@value='申请场地']");
		//断言
		assertEquals(webtest.getAlertTest(),checkwords);
		webtest.alertAccept();
		
	}
}
