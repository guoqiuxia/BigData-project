<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
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
<title>collection</title>
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
	<!--头部-->
	<%@include file="header1.jsp"%>
	<div class="clear"></div>
	<!--container-->
	<div class="subbox">
		<!--左侧部分-->
		<%@include file="left.jsp"%>
		<!--右侧部分-->
		<div class="right840">
			<div class="title6">
				<h1>
					<a href="application.html" class="on">收藏课程</a>
				</h1>
			</div>

			<div class="display">
				<div class="videoinfo1">
					<div class="left5020">
						<div class="col-md-4 col-sm-6  course">
							<a class="course-box" href="show.html">
								<div class="sign-box">
									<i class="fa fa-star-o course-follow pull-right"
										data-follow-url="/courses/1/follow"
										data-unfollow-url="/courses/1/unfollow" style="display: none"></i>
								</div>
								<div class="course-img">
									<img alt="Linux 基础入门（新版）"
										src="https://dn-simplecloud.shiyanlou.com/ncn1.jpg">
								</div>
								<div class="course-body">
									<span class="course-title" data-toggle="tooltip"
										data-placement="bottom" title="Linux 基础入门（新版）">Linux
										基础入门（新版）</span>
								</div>
								<div class="course-footer">
									<span class="course-per-num pull-left"> <i
										class="fa fa-users"></i> 85219
									</span>
								</div>
							</a>
						</div>
						
						<div class="col-md-4 col-sm-6  course">
							<a class="course-box" href="show.html">
								<div class="sign-box">
									<i class="fa fa-star-o course-follow pull-right"
										data-follow-url="/courses/713/follow"
										data-unfollow-url="/courses/713/unfollow"
										style="display: none"></i>
								</div>
								<div class="course-img">
									<img alt="跟我一起来玩转Makefile"
										src="https://dn-simplecloud.shiyanlou.com/1482215587606.png">
								</div>
								<div class="course-body">
									<span class="course-title" data-toggle="tooltip"
										data-placement="bottom" title="跟我一起来玩转Makefile">跟我一起来玩转Makefile</span>
								</div>
								<div class="course-footer">
									<span class="course-per-num pull-left"> <i
										class="fa fa-users"></i> 298
									</span>
								</div>
							</a>
						</div>
						
						<div class="col-md-4 col-sm-6  course">
							<a class="course-box" href="show.html">
								<div class="sign-box">
									<i class="fa fa-star-o course-follow pull-right"
										data-follow-url="/courses/726/follow"
										data-unfollow-url="/courses/726/unfollow"
										style="display: none"></i>
								</div>
								<div class="course-img">
									<img alt="DVWA之暴力破解攻击"
										src="https://dn-simplecloud.shiyanlou.com/1482113522578.png">
								</div>
								<div class="course-body">
									<span class="course-title" data-toggle="tooltip"
										data-placement="bottom" title="DVWA之暴力破解攻击">DVWA之暴力破解攻击</span>
								</div>
								<div class="course-footer">
									<span class="course-per-num pull-left"> <i
										class="fa fa-users"></i> 349
									</span>
								</div>
							</a>
						</div>
						
						
					</div>
				</div>
			</div>
		</div>
		<div class="clear" style="height: 38px;"></div>
		
	</div>
	
		<%@include file="footer.jsp"%>
	
	
	
</body>
</html>