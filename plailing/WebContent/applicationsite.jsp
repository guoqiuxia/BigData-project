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
<title>application</title>
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
					<a href="application.jsp" class="on">申请场地</a>
				</h1>
			</div>

			<div class="display">
				<div class="videoinfo1">
					<div class="left502">
						<form action="" class="wordstyle">
							<font class="f_red">*</font>&nbsp;&nbsp;&nbsp;<b>场地类型:</b> <select
								name="siteType" style="width: 325px; height: 25px;">
								<option value="公教楼">公教楼</option>
								<option value="四方广场">四方广场</option>
								<option value="风雨操场">风雨操场</option>
								<option value="图书馆报告厅">图书馆报告厅</option>
								<option value="美设报告厅">美设报告厅</option>
								<option value="篮球场">篮球场</option>
							</select></br>
							</br>
							</br> <font class="f_red">*</font>&nbsp;&nbsp;&nbsp;<b>使用时间:</b> <input
								type="text" name="useTime"></br>
							</br>
							</br> <font class="f_red">*</font>&nbsp;&nbsp;&nbsp;<b>使用时长:</b> <input
								type="text" name="useLang"></br>
							</br>
							</br> <font class="f_red">*</font>&nbsp;&nbsp;&nbsp;<b>申请时间:</b> <input
								type="text" name="applicationTime"></br>
							</br>
							</br> <input type="submit" value="申请场地" class="input8" />
						</form>
					</div>
				</div>
			</div>


		</div>
		<div class="clear" style="height: 38px;"></div>
		</div>
		<%@include file="footer.jsp"%>
</body>
</html>