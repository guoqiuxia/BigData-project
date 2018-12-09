<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<c:set var="ctx" value="${pageContext.request.contextPath}"></c:set> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="author" content="Lei Shi">
<meta http-equiv="Cache-Control" content="o-transform">
<meta http-equiv="Cache-Control" content="no-siteapp">
<meta name="csrf-token"
	content="1483758872##fd2cac389b2b7c009a744bcaecaa41d71592cfe8">
<title>update</title>
<link href="css/whir_common.css" rel="stylesheet" type="text/css" />
<link href="css/whir_grzx.css" rel="stylesheet" type="text/css" />


<link rel="stylesheet"
	href="static/font-awesome//4.7.0/css/font-awesome.min.css">
<link rel="stylesheet"
	href="app/css/libs/bootstrap/3.3.7/css/bootstrap.min.css">
<link rel="stylesheet" href="app/css/dest/styles.css?=2016121272249">
<link rel="stylesheet"
	href="app/css/libs/videojs/5.11.7/video-js.min.css">

</head>
<body>
	<div id="header">
		<%@include file="header.jsp"%>
	</div>
	<div class="clear"></div>
	<!--container-->
	<div class="subbox">
		<!-- 左侧部分 -->
		<%@include file="left.jsp"%>
		<!-- 右侧部分 -->
		<div class="right840">
			<div class="title6">
				<h1>
					<a href="${ctx }/information.jsp">个人信息</a>
				</h1>
				<h1>
					<a href="${ctx }/user/findInfo" class="on">修改信息</a>
				</h1>
			</div>
			<div class="display">
				<form class="cmxform" id="signupForm" action="${ctx }/user/update" method="post">
					<table width="840" height="900" align="center" cellspacing="0"
						cellpadding="0" class="tab">
						<tr>
							<td><font class="f_red">*</font>&nbsp;&nbsp;&nbsp;<b>昵称:</b></td>
							<td>&nbsp;&nbsp;&nbsp;
								<input id="nickname" type="text" name="nickname" value="${userInfo.nickName }">&nbsp;&nbsp;&nbsp;
							</td>
						</tr>
						<tr>
							<td><font class="f_red">*</font>&nbsp;&nbsp;&nbsp;<b>邮箱:</b></td>
							<td>&nbsp;&nbsp;&nbsp;
								<input id="email" type="email" 
								name="email" value=" ${userInfo.email }">&nbsp;&nbsp;&nbsp; <%--暂定邮箱不让更改 --%>
							</td>
						</tr>
						<tr>
							<td><font class="f_red">*</font>&nbsp;&nbsp;&nbsp;<b>新密码:</b></td>
							<td>&nbsp;&nbsp;&nbsp;
								<input id="password" type="password" name="password" >
							</td>
						</tr>
						<tr>
							<td><font class="f_red">*</font>&nbsp;&nbsp;&nbsp;<b>确认密码:</b></td>
							<td>&nbsp;&nbsp;&nbsp;
								<input id="confirm_password" type="password" name="confirm_password" >
							</td>
						</tr>
						<tr>
							<td><font class="f_red">*</font>&nbsp;&nbsp;&nbsp;<b>头像:</b></td>
							<td>&nbsp;&nbsp;&nbsp;
								<input id="up_file" type="file" name="up_file" onchange="fileChange(this);">
							</td>
						</tr>
						<tr>
							<td><font class="f_red">*</font>&nbsp;&nbsp;&nbsp;<b>性别:</b></td>
							<td>&nbsp;&nbsp;&nbsp;
								<input id="r1" type="radio" value="0" name="gender" /> 男 
								<input id="r2" type="radio" value="1" name="gender" /> 女
							</td>
						</tr>
						<tr>
							<td><font class="f_red">*</font>&nbsp;&nbsp;&nbsp;<b>所在地:</b></td>
							<td>&nbsp;&nbsp;&nbsp; 
								<select id="province" name="province">
									<option value="-1">--请选择省份--</option>
									<option value="0">北京</option>
        							<option value="1">天津</option>
        							<option value="2">河北</option>
        							<option value="3">山西</option>
        							<option value="4">内蒙古</option>
        							<option value="5">辽宁</option>
        							<option value="6">吉林</option>
        							<option value="7">黑龙江</option>
        							<option value="8">上海</option>
									<option value="9">江苏</option>
        							<option value="10">浙江</option>
        							<option value="11">安徽</option>
        							<option value="12">福建</option>
        							<option value="13">江西</option>
        							<option value="14">山东</option>
        							<option value="15">河南</option>
        							<option value="16">湖北</option>
        							<option value="17">湖南</option>
        							<option value="18">广东</option>
        							<option value="19">广西</option>
        							<option value="20">海南</option>
        							<option value="21">重庆</option>
        							<option value="22">四川</option>
        							<option value="23">贵州</option>
        							<option value="24">云南</option>
        							<option value="25">陕西</option>
        							<option value="26">甘肃</option>
        							<option value="27">青海</option>
        							<option value="28">宁夏</option>
        							<option value="29">新疆</option>
        							<option value="30">台湾</option>
        							<option value="31">香港特别行政区</option>
        							<option value="32">澳门特备别行政区</option>
								</select> &nbsp; 
								<select id="city" name="city">
									<option>--请选择城市--</option>
								</select> &nbsp; 
							</td>
						</tr>
						<tr>
							<td><font class="f_red">*</font>&nbsp;&nbsp;&nbsp;<b>出生日期:</b></td>
							<td>&nbsp;&nbsp;&nbsp; 
								<input type="date" name="birthday" value=""${userInfo.birthday }"/>
							</td>
						</tr>
						<tr>
							<td><font class="f_red">*</font>&nbsp;&nbsp;&nbsp;<b>手机:</b></td>
							<td>&nbsp;&nbsp;&nbsp; 
								<input type="text" class="input1" name="phone" value="${userInfo.phoneNumber }"/> &nbsp;&nbsp;&nbsp;
								<font class="f_red">*</font>&nbsp;&nbsp;&nbsp;
							</td>
						</tr>
						<tr>
							<td><font class="f_red">*</font>&nbsp;&nbsp;&nbsp;<b>身份证号:</b></td>
							<td>&nbsp;&nbsp;&nbsp; 
								<input type="text" class="input1" 
								name="identityNumber" value="${userInfo.identityNumber }"/> &nbsp;&nbsp;&nbsp;<%--可以设置点击查看 --%>
								<font class="f_red">*</font>&nbsp;&nbsp;&nbsp;
							</td>
						</tr>
						<tr>
							<td><font class="f_red">*</font>&nbsp;&nbsp;&nbsp;<b>学校:</b></td>
							<td>&nbsp;&nbsp;&nbsp; 
								<input type="text" class="input1" name="school" value="${userInfo.school }" /> &nbsp;&nbsp;&nbsp;
								<font class="f_red">*</font>&nbsp;&nbsp;&nbsp;
							</td>
						</tr>
						<tr>
							<td><font class="f_red">*</font>&nbsp;&nbsp;&nbsp;<b>专业:</b></td>
							<td>&nbsp;&nbsp;&nbsp; 
								<input type="text" class="input1" name="major" value="${userInfo.major }" /> &nbsp;&nbsp;&nbsp;
								<font class="f_red">*</font>&nbsp;&nbsp;&nbsp;
							</td>
						</tr>
						<%--<tr>兴趣爱好在数据库中没有这个列，这里暂时注释
							<td>&nbsp;&nbsp;&nbsp;<b>兴趣爱好:</b></td>
							<td>&nbsp;&nbsp;&nbsp; <textarea name="textarea"
									class="input4" style="width: 430px; height: 130px;"></textarea></td>
						</tr> --%>
						<tr>
							<td>&nbsp;&nbsp;&nbsp;<b>个人介绍:</b></td>
							<td>&nbsp;&nbsp;&nbsp; 
								<textarea name="introduction" value="${userInfo.introduction }" style="width: 430px; height: 130px; resize: none;"></textarea>
							</td>
						</tr>

						<tr>
							<td></td>
							<td colspan="2">&nbsp;&nbsp;&nbsp; 
								<input type="submit" value="保存信息" class="btn1" /> &nbsp;&nbsp;&nbsp; 
								<input type="reset" value="取消" class="btn4" />
							</td>
						</tr>
					</table>
				</form>

			</div>
		</div>
	</div>
	<div class="clear"></div>


	</div>

	<%@include file="footer.jsp"%>
</body>
<script src="${ctx }/js/province_city.js" ></script>
</html>