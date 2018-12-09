<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="zh-CN">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="author" content="Lei Shi">
<meta http-equiv="Cache-Control" content="o-transform">
<meta http-equiv="Cache-Control" content="no-siteapp">
<meta name="csrf-token"
	content="1483758872##fd2cac389b2b7c009a744bcaecaa41d71592cfe8">


<title>index</title>

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
<link rel="stylesheet" href="app/css/dest/styles.css">

<link rel="stylesheet" href="css/jquery.slider.css">

<style>
@font-face {
	font-family: "lantingxihei";
	src: url("fonts/FZLTCXHJW.TTF");
}

/* modal 模态框*/
#invite-user .modal-body {
	overflow: hidden;
}

#invite-user .modal-body .form-label {
	margin-bottom: 16px;
	font-size: 14px;
}

#invite-user .modal-body .form-invite {
	width: 80%;
	padding: 6px 12px;
	background-color: #eeeeee;
	border: 1px solid #cccccc;
	border-radius: 5px;
	float: left;
	margin-right: 10px;
}

#invite-user .modal-body .msg-modal-style {
	background-color: #7dd383;
	margin-top: 10px;
	padding: 6px 0;
	text-align: center;
	width: 100%;
}

#invite-user .modal-body .modal-flash {
	position: absolute;
	top: 53px;
	right: 74px;
	z-index: 999;
}
/* end modal */
.en-footer {
	padding: 30px;
	text-align: center;
	font-size: 14px;
}
</style>
<style style="text/css">
.navbar-banner {
	margin-top: 50px;
	background: url("img/homepage-bg.png");
	background-size: cover;
	backgtound-repeat: no-repeat;
}
</style>




</head>

<body>
	<%@include file="header.jsp"%>
	<div class="navbar-banner layout-no-margin-top">
		<div class="testSlider" style="margin-top: 60px;"></div>
	</div>

	<div class="line-and-laboratory">
		<div class="container">
			<div class="clearfix text-center item-header">
				<span class="line"></span>
				<div class="text-center item-title">课程推荐</div>
				<span class="line"></span>
			</div>
			<div class="clearfix courses">
				<c:forEach items="${recomendCourses}" var="rc">
					<div class="col-md-3 col-sm-6  course">
						<a class="course-box" href="courses/show.html">
							<div class="sign-box">
								<i class="fa fa-star-o course-follow pull-right"
									data-follow-url="/courses/30/follow"
									data-unfollow-url="/courses/30/unfollow" style="display: none"></i>
							</div>
							<div class="course-img">
								<img alt="Python Django Web框架" src="${rc.key.photo}">

							</div>
							<div class="course-body">
								<span class="course-title" data-toggle="tooltip"
									data-placement="bottom" title="Python Django Web框架">${rc.key.name}
								</span>
							</div>
							<div class="course-footer">
								<span class="course-per-num pull-left"> <i
									class="fa fa-users"></i>${rc.value}
								</span>
							</div>
						</a>
					</div>
				</c:forEach>
			</div>
		</div>
	</div>

	<div class="line-and-laboratory">
		<div class="container">
			<div class="clearfix text-center item-header">
				<span class="line"></span>
				<div class="text-center item-title">新上好课</div>
				<span class="line"></span>
			</div>
			<div class="clearfix courses">
				<c:forEach items="${hotCourses}" var="hc">
					<div class="col-md-3 col-sm-6  course">
						<a class="course-box" href="courses/show.html">
							<div class="sign-box">
								<i class="fa fa-star-o course-follow pull-right"
									data-follow-url="/courses/30/follow"
									data-unfollow-url="/courses/30/unfollow" style="display: none"></i>
							</div>
							<div class="course-img">
								<img alt="Python Django Web框架" src="${hc.key.photo}">
							</div>
							<div class="course-body">
								<span class="course-title" data-toggle="tooltip"
									data-placement="bottom" title="Python Django Web框架">${hc.key.name}
								</span>
							</div>
							<div class="course-footer">
								<span class="course-per-num pull-left"> <i
									class="fa fa-users"></i>${hc.value}
								</span>
							</div>
						</a>
					</div>
				</c:forEach>
			</div>
			<div class="clearfix item-footer">
				<div class="pull-right watch-all">
					<a href="courseListAll">查看更多 ></a>
				</div>
			</div>
		</div>
	</div>






	<div class="modal fade" id="invite-user" tabindex="-1" role="dialog"
		aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal">
						<span aria-hidden="true">&times;</span><span class="sr-only">Close</span>
					</button>
					<h4 class="modal-title">邀请好友，双方都可获赠实验豆！</h4>
				</div>
				<div class="modal-body">

					<p>
					<h4>
						<a href="#sign-modal" data-toggle="modal" data-sign="signin">登录</a>后邀请好友注册，您和好友将分别获赠3个实验豆！
					</h4>
					</p>

					<div id="msg-modal"></div>
				</div>
			</div>
		</div>
	</div>
	<div class="modal fade" id="flash-message" tabindex="-1" role="dialog">
		<div class="modal-dialog" rolw="document"></div>
	</div>
	<div class="modal fade" id="modal-message" tabindex="-1" role="dialog"
		aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal">
						<span aria-hidden="true">&times;</span><span class="sr-only">Close</span>
					</button>
					<h4 class="modal-title">注意</h4>
				</div>
				<div class="modal-body"></div>
				<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal">取消</button>
					<button type="button" class="btn btn-primary confirm"
						data-dismiss="modal">确定</button>
				</div>
			</div>
		</div>
	</div>
	<%@include file="login.jsp"%>
	<%@include file="footer.jsp"%>
	
	<script src="js/jquery.min-1.js"></script>
	<script src="js/jquery.slider.js"></script>
	<script>
		window.onload = function() {
			var currentIndex = 0;

			$('.testSlider').slider({
				originType : 'tuoyuan'
			});
		}
	</script>
</body>
</html>
