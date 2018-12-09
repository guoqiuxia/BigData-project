<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>

<script type="text/javascript">
	/**
	 * 刷新验证码
	 */
	function changeImg() {
		var imgSrc = $("#codeImg");
		var src = imgSrc.attr("src");
		imgSrc.attr("src", chgUrl(src));
	}
	//加入时间戳，去缓存机制   
	function chgUrl(url) {
		var timestamp = (new Date()).valueOf();
		if ((url.indexOf("&") >= 0)) {
			url = url + "&timestamp=" + timestamp;
		} else {
			url = url + "?timestamp=" + timestamp;
		}
		return url;
	}
	/*  function login(){
	var email = $('#email').val();
	var password=$('#password').val();
	$.ajax({
		url:'login',
		data:{
			'email':email,
			'password':password
		},
		type:'post',
		asyn:false,
		success:function(result){
			if(result!="pass"){
				alert("请重新登录！！！")
			}
		}
	})
	}  */

	/* function checkEamil(){
		var email = $('#email').val();
		$.ajax({
			url:'register',
			data:{
				'email':email,
			},
			type:'post',
			asyn:false,
			success:function(result){
				if(result!="pass"){
					document.getElementById("emailPoint").innerHTML = "邮箱格式不正确";
				}else{
					document.getElementById("emailPoint").innerHTML = "";
				}
			}
		})
	} */

	function login() {
		console.log(4);
		var email = document.getElementById("lemail").value;
		var password = document.getElementById("lpassword").value;
		var xmlhttp;
		if (window.XMLHttpRequest) {
			xmlhttp = new XMLHttpRequest();
		} else {
			xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
		}
		xmlhttp.open("GET", "login?email=" + email + "&password=" + password,
				true);
		xmlhttp.send();
		xmlhttp.onreadystatechange = function() {
			if (xmlhttp.readyState == 4 && xmlhttp.state == 200) {
				var result = xmlhttp.responseText;
				if (result == "success") {
					alert("登录成功");
					$("#loginhidden").style.display = "none";
					$("#loginshow").style.display = "block";
				} else if (result == "false") {
					alert("请重新登录");
					$("#loginhidden").style.display = "block";
					$("#loginshow").style.display = "none";
				} else if (result == "null") {
					alter("没有注册该用户");
					$("#loginhidden").style.display = "block";
					$("#loginshow").style.display = "none";
				}
			}
		}
	}
</script>

<script type="text/javascript">
	function login() {
		console.log(4);
		var email = document.getElementById("lemail").value;
		var password = document.getElementById("lpassword").value;
		var xmlhttp;
		if (window.XMLHttpRequest) {
			xmlhttp = new XMLHttpRequest();
		} else {
			xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
		}
		xmlhttp.open("GET", "login?email=" + email + "&password=" + password,
				true);
		xmlhttp.send();
		xmlhttp.onreadystatechange = function() {
			if (xmlhttp.readyState == 4 && xmlhttp.state == 200) {
				var result = xmlhttp.responseText;
				if (result == "success") {
					$("#loginhidden").style.display = "none";
					$("#loginshow").style.display = "block";
				} else if (result == "false") {
					alert("请重新登录");
					$("#loginhidden").style.display = "block";
					$("#loginshow").style.display = "none";
				} else if (result == "null") {
					alter("没有注册该用户");
					$("#loginhidden").style.display = "block";
					$("#loginshow").style.display = "none";
				}
			}
		}
	}
</script>
<div class="modal fade" id="sign-modal" tabindex="-1" role="dialog">
	<div class="modal-dialog modal-sm" role="document">
		<div class="modal-content">
			<button type="button" class="close-modal" data-dismiss="modal"
				aria-label="Close">
				<span aria-hidden="true">&times;</span>
			</button>
			<div class="modal-body">
				<ul class="nav nav-tabs" role="tablist">
					<li role="presentation" class="active"><a href="#signin-form"
						aria-controls="signin-form" role="tab" data-toggle="tab">登录</a></li>
					<li role="presentation"><a href="#signup-form"
						aria-controls="signup-form" role="tab" data-toggle="tab">注册</a></li>
				</ul>
				<div class="tab-content">
					<div role="tabpanel" class="tab-pane active" id="signin-form">
						<form>
							<div class="form-group">
								<div class="input-group">
									<div class="input-group-addon">
										<i class="fa fa-envelope" style="margin: 0;"></i>
									</div>
									<input type="text" name="email" class="form-control"
										id="lemail" placeholder="请输入邮箱">
								</div>
							</div>
							<div class="form-group">
								<div class="input-group">
									<div class="input-group-addon">
										<i class="fa fa-lock" style="margin: 0;"></i>
									</div>
									<input type="password" name="password" class="form-control"
										placeholder="请输入密码" id="lpassword">
								</div>
							</div>
							<div class="form-group remember-login">
								<input name="remember" type="checkbox" value="y"> 下次自动登录
								<a class="pull-right" href="forgetpwd1.jsp">忘记密码？</a>
							</div>
							<div class="form-group">
								<!--  <input class="btn btn-primary" name="button" type="button"
									value="登录" onclick="javascript:login()">  -->
								<button class="btn btn-primary" onclick="login()">登录</button>
							</div>
							<div class="form-group widget-signin">
								<span>快速登录</span> <a href="/auth/qq?next="><i
									class="fa fa-qq"></i></a> <a href="/auth/weibo?next="><i
									class="fa fa-weibo"></i></a> <a href="/auth/weixin?next="><i
									class="fa fa-weixin"></i></a>
							</div>
							<div class="form-group error-msg">
								<div class="alert alert-danger" role="alert"></div>
							</div>
						</form>
					</div>
					<div role="tabpanel" class="tab-pane" id="signup-form">
						<c:set var="ctx" value="${pageContext.request.contextPath}" />
						<form action="register" method="post">
							<div class="form-group">
								<div class="input-group">
									<div class="input-group-addon">
										<i class="fa fa-envelope" style="margin: 0;"></i>
									</div>
									<input type="text" name="email" class="form-control"
										placeholder="请输入邮箱" id="email" onblur="checkEmail()">
									<span id="emailPoint"></span>
								</div>

							</div>
							<div class="form-group">
								<div class="input-group">
									<div class="input-group-addon">
										<i class="fa fa-lock" style="margin: 0;"></i>
									</div>
									<input type="password" name="password" class="form-control"
										placeholder="请输入密码" id="password"> <span
										id="passwordPoint"></span>
								</div>
							</div>
							<div class="form-inline">
								<div class="form-group">
									<div class="input-group">
										<input type="text" name="captcha_v" class="form-control"
											placeholder="请输入验证码" id="captcha_v">
									</div>
								</div>
								<img id="codeImg" src="${ctx}/captcha" onclick="changeImg()">
							</div>
							<div class="form-group">
								<input class="btn btn-primary" name="submit" type="submit"
									onclick="register()" value="注册">
							</div>
							<div class="form-group agree-privacy">
								注册表示您已经同意我们的<a href="privacy.jsp" target="_blank">隐私条款</a>
							</div>
							<div class="form-group widget-signup">
								<span>快速注册</span> <a href="/auth/qq?next="><i
									class="fa fa-qq"></i></a> <a href="/auth/weibo?next="><i
									class="fa fa-weibo"></i></a> <a href="/auth/weixin?next="><i
									class="fa fa-weixin"></i></a>
							</div>
							<div class="form-group error-msg">
								<div class="alert alert-danger" role="alert"></div>
							</div>
						</form>

					</div>
				</div>
			</div>
		</div>
	</div>
</div>
<div id="base-data" data-flash="false" data-is-login=false
	data-is-jwt=true data-socket-url="wss://comet.shiyanlou.com"
	data-msg-user="" data-msg-system=""></div>

<script src="app/dest/lib/lib.js?=2016121272249"></script>
<script src="static/jquery/2.2.4/jquery.min.js"></script>
<script src="static/ace/1.2.5/ace.js"></script>
<script src="static/aliyun/aliyun-oss-sdk-4.3.0.min.js"></script>
<script src="static/highlight.js/9.8.0/highlight.min.js"></script>
<script src="static/jspdf/1.2.61/jspdf.min.js"></script>
<script src="static/plupload/2.1.9/js/plupload.full.min.js"></script>
<script src="static/zeroclipboard/2.2.0/ZeroClipboard.min.js"></script>
<script src="static/videojs/video.min.js"></script>
<script src="static/bootstrap-tour/0.11.0/js/bootstrap-tour.min.js"></script>
<script src="static/bootstrap-table/1.11.0/bootstrap-table.min.js"></script>
<script
	src="static/bootstrap-table/1.11.0/locale/bootstrap-table-zh-CN.min.js"></script>
<script
	src="static/bootstrap-table/1.11.0/extensions/filter-control/bootstrap-table-filter-control.min.js"></script>

<script src="static/ravenjs/3.7.0/raven.min.js"></script>
<script>
	Raven.config(
			'https://bc3878b7ed0a4468a65390bd79e6e73f@sentry.shiyanlou.com/5',
			{
				release : '3.12.13'
			}).install();
</script>




<div id="jinja-data" data-post-url=""></div>

<script src="app/dest/frontend/index.js?=2016121272249"></script>