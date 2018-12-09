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
<script type="text/javascript" src="js/jquery-1.7.2.min.js"></script>
<script type="text/javascript">
	function checkTwopwd(){
		var pwd = $('#pwd').val();
		var rpwd = $('#rpwd').val();
		$.ajax({
			url:'checkPwd',
			data:{
				'pwd':pwd,
				'rpwd':rpwd
			},
			type:'post',
			asyn:false,
			success:function(result){
				if(result!="pass"){
					document.getElementById("submitSpan").innerHTML = "两次密码不一致";
				}else{
					document.getElementById("submitSpan").innerHTML = "";
				}
			}
		})
	}
	function checkTwopwd2(){
		var pwd = $('#pwd').val();
		$.ajax({
			url:'checkPwd2',
			data:{
				'pwd':pwd,
			},
			type:'post',
			asyn:false,
			success:function(result){
				if(result!="pass"){
					document.getElementById("submitSpan1").innerHTML = "填写6-19位数字、字母、下划线";
					document.getElementById("submitSpan1").style.color='red';
				}else{
					document.getElementById("submitSpan1").innerHTML = "";
				}
			}
		})
	}
</script>
</head>
<body>
	<%@include file="header.jsp"%>
	<div class="content">
		<div class="web-width" style="margin-top: 68px;">
			<div class="for-liucheng" style="margin-left:350px">
				<div class="liulist for-cur" style="background: #11aa8c;"></div>
				<div class="liulist for-cur" style="background: #11aa8c;"></div>
				<div class="liulist"></div>
				<div class="liutextbox">
					<div class="liutext for-cur">
						<em style="background: #11aa8c;">1</em><br />
						<strong style="color: #11aa8c;">验证身份</strong>
					</div>
					<div class="liutext for-cur">
						<em style="background: #11aa8c;">2</em><br />
						<strong style="color: #11aa8c;">设置新密码</strong>
					</div>
					<div class="liutext for-cur">
						<em style="background: #ccc;">3</em><br />
						<strong style="color: black;">完成</strong>
					</div>
			</div>
			<!--for-liucheng/-->
			<form action="checkPwd1" class="forget-pwd" style="margin-left:45px">
				<dl>
					<dt>新密码：</dt>
					<dd>
						<input type="password" id="pwd" name="pwd"  onblur="checkTwopwd2()"/>
						<span id="submitSpan1" style="font-size:12px;color:black">填写6-19位数字、字母、下划线</span>
					</dd>
					<div class="clears"></div>
				</dl>
				<dl>
					<dt>确认密码：</dt>
					<dd>
						<input type="password" id="rpwd" name="rpwd" onblur="checkTwopwd()"/>
						<span id="submitSpan" style="font-size:12px;color:red"></span>
					</dd>
					<div class="clears"></div>
				</dl>
				<input type="hidden" value="<%=request.getParameter("userEmail")%>" id="userEmail" name="userEmail">
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