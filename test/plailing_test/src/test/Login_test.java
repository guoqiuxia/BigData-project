package test;

import org.testng.annotations.Test;

import com.webtest.core.BaseTest;

import action.Login_action;
import dataprovider.NSDataProvider;

public class Login_test extends BaseTest{
	/**
	 * @author wangdonghui
	 * 登录功能
	 */ 

	@Test(dataProvider="login",dataProviderClass=NSDataProvider.class)
	public void login(String id,String mail,String password,String checkwords) {
		Login_action login = new Login_action(webtest);
		login.login(mail, password, checkwords);
	}
}
