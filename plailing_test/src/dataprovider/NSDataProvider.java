package dataprovider;

import java.io.IOException;
import java.text.ParseException;

import org.testng.ITestContext;
import org.testng.annotations.DataProvider;
import org.testng.annotations.Test;

import com.webtest.dataprovider.ExcelDataProvider;
import com.webtest.dataprovider.MysqlDataProvider;
import com.webtest.dataprovider.TxtDataProvider;
import com.webtest.utils.ReadProperties;

public class NSDataProvider {
	public String sheet = null;
	
	@DataProvider(name = "login")
	public Object[][] getMysqlDada1() throws IOException {
		return new MysqlDataProvider().getTestDataByMysql(
				"SELECT * FROM tbl_login"
		);
	}
	
	@DataProvider(name = "personalmessage")
	public Object[][] getMysqlDada2() throws IOException {
		return new MysqlDataProvider().getTestDataByMysql(
				"SELECT * FROM tbl_personalmessage"
		);
	}
	
	@DataProvider(name = "createcourse")
	public Object[][] getMysqlDada3() throws IOException {
		return new MysqlDataProvider().getTestDataByMysql(
				"SELECT * FROM tbl_createcourse"
		);
	}
	
	@DataProvider(name = "applyplace")
	public Object[][] getMysqlDada4() throws IOException {
		return new MysqlDataProvider().getTestDataByMysql(
				"SELECT * FROM tbl_applyplace"
		);
	}
	
	@DataProvider(name = "continueSC")
	public Object[][] getMysqlDada5() throws IOException {
		return new MysqlDataProvider().getTestDataByMysql(
				"SELECT * FROM tbl_continueSC"
		);
	}
	

}
