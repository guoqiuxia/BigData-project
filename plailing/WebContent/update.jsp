<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
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

<link rel="shortcut icon" href="favicon.ico">
<link rel="stylesheet"
	href="static/font-awesome//4.7.0/css/font-awesome.min.css">
<link rel="stylesheet"
	href="static/highlight.js/9.8.0/monokai-sublime.min.css">
<link rel="stylesheet"
	href="app/css/libs/bootstrap/3.3.7/css/bootstrap.min.css">
<link rel="stylesheet" href="app/css/libs/katex/0.6.0/katex.min.css">
<link rel="stylesheet"
	href="app/css/libs/videojs/5.11.7/video-js.min.css">
<link rel="stylesheet" href="app/css/dest/styles.css?=2016121272249">
</head>
<body>

	<%@include file="header1.jsp"%>
	
	<div class="clear"></div>
	<!--container-->
	<div class="subbox">
		<%@include file="left.jsp"%>
		<!--右侧部分-->
		<div class="right840">
			<div class="title6">
				<h1>
					<a href="information.jsp">个人信息</a>
				</h1>
				<h1>
					<a href="update.jsp" class="on">修改信息</a>
				</h1>
			</div>
			<div class="display">
				<form>
					<table width="840" height="900" align="center" cellspacing="0"
						cellpadding="0" class="tab">
						<tr>
							<td><font class="f_red">*</font>&nbsp;&nbsp;&nbsp;<b>昵称:</b></td>
							<td>&nbsp;&nbsp;&nbsp;afsdfds@163.com &nbsp;&nbsp;&nbsp;<a
								href="#">[修改]</a></td>
						</tr>
						<tr>
							<td><font class="f_red">*</font>&nbsp;&nbsp;&nbsp;<b>邮
									箱:</b></td>
							<td>&nbsp;&nbsp;&nbsp;afsdfds@163.com &nbsp;&nbsp;&nbsp;<a
								href="#">[修改]</a></td>
						</tr>
						<tr>
							<td><font class="f_red">*</font>&nbsp;&nbsp;&nbsp;<b>原密码:</b></td>
							<td>&nbsp;&nbsp;&nbsp;<input type="password" name="oldpassword" ></td>
						</tr>
						<tr>
							<td><font class="f_red">*</font>&nbsp;&nbsp;&nbsp;<b>新密码:</b></td>
							<td>&nbsp;&nbsp;&nbsp;<input type="password" name="newpassword" ></td>
						</tr>
						<tr>
							<td><font class="f_red">*</font>&nbsp;&nbsp;&nbsp;<b>确认密码:</b></td>
							<td>&nbsp;&nbsp;&nbsp;<input type="password" name="cpassword" ></td>
						</tr>
						<tr>
							<td><font class="f_red">*</font>&nbsp;&nbsp;&nbsp;<b>头像:</b></td>
							<td>&nbsp;&nbsp;&nbsp;<input type="file" name="photo"></td>
						</tr>
						<tr>
							<td><font class="f_red">*</font>&nbsp;&nbsp;&nbsp;<b>性别:</b></td>
							<td>&nbsp;&nbsp;&nbsp; <input id="r1" type="radio" value="0"
								name="gender" /> 男 <input id="r2" type="radio" value="1"
								name="gender" /> 女
							</td>
						</tr>
						<tr>
							<td><font class="f_red">*</font>&nbsp;&nbsp;&nbsp;<b>所在地:</b></td>
							<td>&nbsp;&nbsp;&nbsp; <select class="input5">
									<option>选择省份</option>
							</select> &nbsp; <select class="input5">
									<option>选择市</option>
							</select> &nbsp; <select class="input5">
									<option>选择区/县</option>
							</select></td>
						</tr>
						<td><font class="f_red">*</font>&nbsp;&nbsp;&nbsp;<b>出生日期:</b></td>
						<td>&nbsp;&nbsp;&nbsp; <input type="date" />
						</td>
						</tr>
						<tr>
							<td><font class="f_red">*</font>&nbsp;&nbsp;&nbsp;<b>手
									机:</b></td>
							<td>&nbsp;&nbsp;&nbsp; <input type="text" class="input1"
								name="" /> &nbsp;&nbsp;&nbsp;<font class="f_red">*</font>&nbsp;&nbsp;&nbsp;<font
								class="f_black">请输入数字</font></td>
						</tr>
						<tr>
							<td><font class="f_red">*</font>&nbsp;&nbsp;&nbsp;<b>身份证号:</b></td>
							<td>&nbsp;&nbsp;&nbsp; <input type="text" class="input1"
								name="" /> &nbsp;&nbsp;&nbsp;<font class="f_red">*</font>&nbsp;&nbsp;&nbsp;<font
								class="f_black">请输入数字</font></td>
						</tr>
						<tr>
							<td><font class="f_red">*</font>&nbsp;&nbsp;&nbsp;<b>学校:</b></td>
							<td>&nbsp;&nbsp;&nbsp; <input type="text" class="input1"
								name="" /> &nbsp;&nbsp;&nbsp;<font class="f_red">*</font>&nbsp;&nbsp;&nbsp;
							</td>
						</tr>
						<tr>
							<td><font class="f_red">*</font>&nbsp;&nbsp;&nbsp;<b>专业:</b></td>
							<td>&nbsp;&nbsp;&nbsp; <input type="text" class="input1"
								name="" /> &nbsp;&nbsp;&nbsp;<font class="f_red">*</font>&nbsp;&nbsp;&nbsp;
							</td>
						</tr>
						<tr>
							<td>&nbsp;&nbsp;&nbsp;<b>兴趣爱好:</b></td>
							<td>&nbsp;&nbsp;&nbsp; <textarea name="textarea"
									class="input4" style="width: 430px; height: 130px;"></textarea></td>
						</tr>
						<tr>
							<td>&nbsp;&nbsp;&nbsp;<b>个人介绍:</b></td>
							<td>&nbsp;&nbsp;&nbsp; <textarea name="textarea"
									class="input4" style="width: 430px; height: 130px;"></textarea></td>
						</tr>

						<tr>
							<td></td>
							<td colspan="2">&nbsp;&nbsp;&nbsp; <input type="submit"
								value="保存信息" class="btn1" /> &nbsp;&nbsp;&nbsp; <input
								type="reset" value="取消" class="btn4" /></td>
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
</html>