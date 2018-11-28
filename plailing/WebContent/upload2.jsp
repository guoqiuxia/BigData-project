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
<title>upload2</title>
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
	<div class="subbox">
		<!--左侧部分-->
		<%@include file="left.jsp"%>
		<!--右侧部分-->
		<div class="right840">
			<div class="title6">
				<h1>
					<a href="application.html" class="on">上传课程</a>
				</h1>
			</div>

			<div class="display">
				<div class="title12">
					<img src="img/scimg2.jpg" />
				</div>
				<div class="wsxx">
					<input type="file">
				</div>
				<div class="videoinfo">
					<div class="title13">
						<h1>文件信息：</h1>
					</div>
					<div class="left502">
						<form action="upload3.jsp">
							<table cellpadding="0" cellspacing="0" class="tab" height="580">
								<tr>
									<td style="width: 90px;"><font class="f_red">*</font>&nbsp;&nbsp;&nbsp;<b>课程名称:</b></td>
									<td> <input type="text" class="input4"
										style="width: 425px; height: 25px;" /></td>
								</tr>
								<tr>
									<td><font class="f_red">*</font>&nbsp;&nbsp;&nbsp;<b>课程简介:</b></td>
									<td><textarea name="textarea" class="input4"
											style="width: 425px; height: 119px;"></textarea></td>
								</tr>
								<tr>
									<td><font class="f_red">*</font>&nbsp;&nbsp;&nbsp;<b>课程分类:</b></td>
									<td><table class="tab1" cellpadding="0" cellspacing="0">
											<tr>
												<td><select class="input7">
														<option>一级分类</option>
												</select> <select class="input7">
														<option>二级分类</option>
												</select></td>
											</tr>

										</table></td>
								</tr>
								<tr>
									<td><font class="f_red">*</font>&nbsp;&nbsp;&nbsp;<b>文件目录:</b></td>
									<td><input type="text" class="input4"
										style="width: 425px; height: 25px;" /></td>
								</tr>
								<tr>
									<td><font class="f_red">*</font>&nbsp;&nbsp;&nbsp;<b>课程价格:</b></td>
									<td><input type="text" class="input4"
										style="width: 125px; height: 25px;" /></td>
								</tr>

								<tr>
									<td><font class="f_red">*</font>&nbsp;&nbsp;&nbsp;<b>课程封面:</b></td>
									<td><input type="file" value="上传" /> 请上传格式为.jpg .png
										.gif小于5M的图片</td>
								</tr>

								<tr>

									<td></td>
									<td><input type="submit" value="保存" class="input8" /></td>
								</tr>

							</table>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="clear"></div>
	</div>
	<%@include file="footer.jsp"%>
</body>
</html>