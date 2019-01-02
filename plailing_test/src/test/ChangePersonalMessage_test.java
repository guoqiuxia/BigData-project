package test;

import static org.testng.Assert.assertEquals;
import static org.testng.Assert.assertTrue;

import org.testng.annotations.BeforeClass;
import org.testng.annotations.Test;

import com.webtest.core.BaseTest;
import com.webtest.utils.Log;
import com.webtest.utils.ReadProperties;

import action.Login_action;
import dataprovider.NSDataProvider;

public class ChangePersonalMessage_test extends BaseTest{
	/**
	 * @author wangdonghui
	 * 个人信息
	 */ 
	@BeforeClass
	public void login() {
		//登录
		Login_action login = new Login_action(webtest);
		login.login("123@qq.com", "123456", "退出");
	}
	
	@Test(dataProvider="personalmessage",dataProviderClass=NSDataProvider.class)
	public void personalMessage(String id,String nickname,String password,String checkpwd,String photo,
			String sex,String province,String city,String birthday,String phoneNumber,String identityNumber,
			String school,String major,String introduction,String checkwords) {
		
		Log.info("这是数据库中的第"+ id +"个用户");
		String BasePicUrl = ReadProperties.getPropertyValue("testpic_path");
		//点击个人中心
		webtest.click("xpath=//a[contains(.,'个人中心')]");
		//点击修改信息
		webtest.click("xpath=//a[contains(.,'修改信息')]");
		//昵称
		webtest.typeAndClear("xpath=//input[@id='nickName']", nickname);
		//新密码
		webtest.typeAndClear("xpath=//input[@id='password']", password);
		//确认密码
		webtest.typeAndClear("xpath=//input[@id='confirm_password']", checkpwd);
		//头像
		webtest.typeAndClear("xpath=//input[@id='up_file']", BasePicUrl+photo);
		//性别 
		String io="";
		if(sex.equals("男")) 
			io = "0";
		else if(sex.equals("女"))
			io = "1";
		webtest.click("xpath=//input[@value='" + io + "']");
		//所在地
		webtest.click("xpath=//select[@id='province']");
		webtest.click("xpath=//option[contains(.,'" + province +"')]");
		webtest.click("xpath=//select[@id='city']");
		webtest.click("xpath=//option[contains(.,'" + city +"')]");
		//出生日期
		webtest.typeAndClear("xpath=//input[@name='birthday']", birthday);
		//手机
		webtest.typeAndClear("xpath=//input[@name='phone']", phoneNumber);
		//身份证号
		webtest.typeAndClear("xpath=//input[@name='identityNumber']", identityNumber);
		//学校
		webtest.typeAndClear("xpath=//input[@name='school']", school);
		//专业
		webtest.typeAndClear("xpath=//input[@name='major']", major);
		//个人介绍
		webtest.typeAndClear("xpath=//textarea[@name='introduction']", introduction);
		//保存信息
		webtest.click("xpath=//input[@value='保存信息']");
		//断言
		assertEquals(webtest.getAlertTest(),checkwords);
		
		
	}
}
