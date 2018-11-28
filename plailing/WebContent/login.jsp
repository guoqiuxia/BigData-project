<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
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
							<form action="/login" method="post">
								<div class="form-group">
									<div class="input-group">
										<div class="input-group-addon">
											<i class="fa fa-envelope" style="margin: 0;"></i>
										</div>
										<input type="email" name="login" class="form-control"
											placeholder="请输入邮箱或手机号">
									</div>
								</div>
								<div class="form-group">
									<div class="input-group">
										<div class="input-group-addon">
											<i class="fa fa-lock" style="margin: 0;"></i>
										</div>
										<input type="password" name="password" class="form-control"
											placeholder="请输入密码">
									</div>
								</div>
								<div class="form-inline verify-code-item" style="display: none;">
									<div class="form-group">
										<div class="input-group">
											<input type="text" name="captcha_v" class="form-control"
												placeholder="请输入验证码">
										</div>
									</div>
									<img class="verify-code" src=""
										source="https://www.shiyanlou.com/captcha.gif">
								</div>
								<div class="form-group remember-login">
									<input name="remember" type="checkbox" value="y">
									下次自动登录 <a class="pull-right" href="forgetpwd1.jsp">忘记密码？</a>
								</div>
								<div class="form-group">
									<input class="btn btn-primary" name="submit" type="submit"
										value="登录">
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
							<form action="/register" method="post">
								<div class="form-group">
									<div class="input-group">
										<div class="input-group-addon">
											<i class="fa fa-envelope" style="margin: 0;"></i>
										</div>
										<input type="email" name="email" class="form-control"
											placeholder="请输入邮箱或手机号">
									</div>
								</div>
								<div class="form-group">
									<div class="input-group">
										<div class="input-group-addon">
											<i class="fa fa-lock" style="margin: 0;"></i>
										</div>
										<input type="password" name="password" class="form-control"
											placeholder="请输入密码">
									</div>
								</div>
								<div class="form-inline">
									<div class="form-group">
										<div class="input-group">
											<input type="text" name="captcha_v" class="form-control"
												placeholder="请输入验证码">
										</div>
									</div>
									<img class="verify-code" src=""
										source="https://www.shiyanlou.com/captcha.gif">
								</div>
								<div class="form-group">
									<input class="btn btn-primary" name="submit" type="submit"
										value="注册">
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
		Raven
				.config(
						'https://bc3878b7ed0a4468a65390bd79e6e73f@sentry.shiyanlou.com/5',
						{
							release : '3.12.13'
						}).install();
	</script>






	<div id="jinja-data" data-post-url="/registercheck"></div>

	<script src="app/dest/frontend/index.js?=2016121272249"></script>