package test;

import org.testng.annotations.BeforeClass;
import org.testng.annotations.Test;

import com.webtest.core.BaseTest;
import com.webtest.utils.ReadProperties;

import action.Login_action;
import dataprovider.NSDataProvider;

public class CreateCourse_test extends BaseTest{
	/**
	 * @author wangdonghui
	 * 创建课程
	 */ 
	@BeforeClass
	public void login() {
		//登录
		Login_action login = new Login_action(webtest);
		login.login("123@qq.com", "123456", "退出");
	}
	
	@Test(dataProvider="createcourse",dataProviderClass=NSDataProvider.class)
	public void createcourse(String id,String name,String certificate,String video,String experience,
			String classname,String course,String parenttype,String childtype,String price,
			String cover) {
		
		String BasePicUrl = ReadProperties.getPropertyValue("testpic_path");
		
		//点击个人中心
		webtest.click("xpath=//a[contains(.,'个人中心')]");
		//点击上传课程
		webtest.click("xpath=//em[contains(.,'上传课程')]");
		//点击创建课程
		webtest.click("xpath=//button[contains(.,'创建课程')]"); 
		//实名制
		webtest.type("xpath=//input[@name='file1']", BasePicUrl+name);
		//有效证书
		webtest.type("xpath=//input[@name='file2']", BasePicUrl+certificate);
		//视频
		webtest.type("xpath=//input[@name='file3']", BasePicUrl+video);
		//相关经历介绍
		webtest.type("xpath=//textarea[@placeholder='请输入150字以内']", experience);
		//课程名称
		webtest.type("xpath=//input[@name='name']", classname);
		//课程简介
		webtest.type("xpath=//textarea[@placeholder='请输入100字以内']", course);
		//课程分类
		//父类型
		webtest.click("xpath=//select[@id='first']");
		webtest.click("xpath=//option[contains(.,'" + parenttype + "')]");
		//子类型
		webtest.click("xpath=//select[@id='second']");
		webtest.click("xpath=//option[contains(.,'" + childtype + "')]");
		//课程价格
		webtest.type("xpath=//input[@name='price']", price);
		//课程封面
		webtest.type("xpath=//input[@value='上传']", BasePicUrl+cover);
		//点击提交
		webtest.click("xpath=//input[@value='提交']");
		
	}
}
