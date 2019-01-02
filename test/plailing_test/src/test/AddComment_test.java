package test;

import static org.testng.Assert.assertEquals;
import static org.testng.Assert.assertTrue;

import org.testng.annotations.BeforeClass;
import org.testng.annotations.Test;

import com.webtest.core.BaseTest;

import action.Login_action;

/**
 * @author wangdonghui
 * 添加评论
 * */
public class AddComment_test extends BaseTest{
	
	@BeforeClass
	public void login() {
		Login_action login = new Login_action(webtest);
		login.login("123@qq.com", "123456", "退出");
	}

	//添加课程评论
	@Test
	public void addcourse_coment() {
		
		String comment = "打酱油的猫来过了";
		String checkwords = "您的评论已发表成功";
		
		//点击课程
		webtest.click("xpath=//a[contains(.,'课程')]");
		//点击web课程
		webtest.click("xpath=//span[contains(.,'web')]");
		//点击课程评论
		webtest.click("xpath=//a[contains(.,'课程评论')]");
		//输入评论内容
		webtest.type("xpath=//textarea[@class='content comment-input']", comment);
		//点击评论
		webtest.click("xpath=//a[@class='plBtn']");	
		//断言
		assertEquals(webtest.getAlertTest(),checkwords);
	}
	
	
}
