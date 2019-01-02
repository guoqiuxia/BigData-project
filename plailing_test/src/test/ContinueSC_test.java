package test;

import static org.testng.Assert.assertTrue;

import org.testng.annotations.BeforeClass;
import org.testng.annotations.Test;

import com.webtest.core.BaseTest;
import com.webtest.utils.ReadProperties;

import action.Login_action;
import dataprovider.NSDataProvider;

public class ContinueSC_test extends BaseTest{
	@BeforeClass
	public void login() {
		Login_action login = new Login_action(webtest);
		login.login("123@qq.com", "123456", "退出");
	}
	
	@Test(dataProvider="continueSC",dataProviderClass=NSDataProvider.class)
	public void continueSC(String id,String file,String catalog,String checkwords) throws InterruptedException{
		String BasePicUrl = ReadProperties.getPropertyValue("testpic_path");
		//点击个人中心
		webtest.click("xpath=//a[contains(.,'个人中心')]");
		//点击上传课程
		webtest.click("xpath=//em[contains(.,'上传课程')]");
		//点击继续上传
		webtest.click("xpath=//input[@value='继续上传']");
		//点击视频上传
		webtest.click("xpath=//img[@src='/plailing/img/scsp.jpg']");
		//上传文件
		webtest.type("xpath=//input[@class='oFile']", BasePicUrl+file);
		//文件目录
		webtest.type("xpath=//input[@name='catalog']", catalog);
		//点击保存		
		webtest.click("xpath=//button[@class='send_btn']");
		//断言
		assertTrue(webtest.isTextPresent(checkwords));
	}
}
