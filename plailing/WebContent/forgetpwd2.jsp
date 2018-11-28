<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="Author" contect="http://www.webqin.net">
<title>忘记密码</title>
<link rel="shortcut icon" href="images/favicon.ico" />
<link type="text/css" href="css/css.css" rel="stylesheet" />
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
<link href="css/whir_grzx.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="js/jquery-1.8.3-min.js"></script>
<script type="text/javascript">
	//导航定位
	$(function() {
		// $(".nav li:eq(2) a:first").addClass("navCur")
		//验证手机 邮箱 
		$(".selyz").change(function() {
			var selval = $(this).find("option:selected").val();
			if (selval == "0") {
				$(".sel-yzsj").show()
				$(".sel-yzyx").hide()
			} else if (selval == "1") {
				$(".sel-yzsj").hide()
				$(".sel-yzyx").show()
			}
		})
	})
</script>
</head>

<body>
	<%@include file="header.jsp"%>
	<div class="content">
		<div class="web-width" style="margin-top: 68px;">
			<div class="for-liucheng">
				<div class="liulist for-cur" style="background: #11aa8c;"></div>
				<div class="liulist for-cur" style="background: #11aa8c;"></div>
				<div class="liulist"></div>
				<div class="liulist"></div>
				<div class="liutextbox">
					<div class="liutext for-cur">
						<em style="background: #11aa8c;">1</em><br />
						<strong style="color: #11aa8c;">填写账户名</strong>
					</div>
					<div class="liutext for-cur">
						<em style="background: #11aa8c;">2</em><br />
						<strong style="color: #11aa8c;">验证身份</strong>
					</div>
					<div class="liutext">
						<em>3</em><br />
						<strong>设置新密码</strong>
					</div>
					<div class="liutext">
						<em>4</em><br />
						<strong>完成</strong>
					</div>
				</div>
			</div>
			<!--for-liucheng/-->
			<form action="forgetpwd3.jsp" method="get" class="forget-pwd">
				<dl>
					<dt>验证方式：</dt>
					<dd>
						<select class="selyz">
							<option value="0">已验证手机</option>
							<option value="1">已验证邮箱</option>
						</select>
					</dd>
					<div class="clears"></div>
				</dl>
				<dl>
					<dt>用户名：</dt>
					<dd>
						<input type="text" />
					</dd>
					<div class="clears"></div>
				</dl>
				<dl class="sel-yzsj">
					<dt>已验证手机：</dt>
					<dd>
						<input type="text" />
					</dd>
					<div class="clears"></div>
				</dl>
				<dl class="sel-yzyx">
					<dt>已验证邮箱：</dt>
					<dd>
						<input type="text" />
					</dd>
					<div class="clears"></div>
				</dl>
				<dl>
					<dt>手机校验码：</dt>
					<dd>
						<input type="text" />
						<button>获取短信验证码</button>
					</dd>
					<div class="clears"></div>
				</dl>
				<div >
					<input style="background: #11aa8c; color: white;margin-left:143px;" type="submit"
						value="提交" class="input8"/>
				</div>
			</form>
			<!--forget-pwd/-->
		</div>
		<!--web-width/-->
	</div>
	<!--content/-->
	<%@include file="footer.jsp"%>
</body>
</html>