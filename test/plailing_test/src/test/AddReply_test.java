package test;

import static org.testng.Assert.assertEquals;
import static org.testng.Assert.assertTrue;

import org.testng.annotations.BeforeClass;
import org.testng.annotations.Test;

import com.webtest.core.BaseTest;

import action.Login_action;

/**
 * @author wangdonghui 
 * 添加回复
 */

public class AddReply_test extends BaseTest {	
	
	@BeforeClass
	public void login() {
		Login_action login = new Login_action(webtest);
		login.login("123@qq.com", "123456", "退出");
	}
	
	// 添加课程回复
	@Test
	public void addcourse_reply() {
		String comment = "精致的猪猪女孩";
		String checkwords="您的评论发表成功！";
		
		// 点击课程
		webtest.click("xpath=//a[contains(.,'课程')]");
		// 点击web课程
		webtest.click("xpath=//span[contains(.,'web')]");
		//点击课程评论
		webtest.click("xpath=//a[contains(.,'课程评论')]");
		//点击回复
		webtest.click("xpath=//textarea[@class='content comment-input']");
		webtest.tapClick();
		webtest.tapClick();
		webtest.tapClick();
		webtest.tapEnter();
		webtest.typeAndClear("xpath=//textarea[@class='content comment-input hf-input']",comment);
		//点击评论
		webtest.click("xpath=//a[contains(@class,'hf-pl')]");
		//断言
		assertEquals(webtest.getAlertTest(),checkwords);
	}
	

}
