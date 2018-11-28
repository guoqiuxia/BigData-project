<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="author" content="Lei Shi">
<meta http-equiv="Cache-Control" content="o-transform">
<meta http-equiv="Cache-Control" content="no-siteapp">
<meta name="csrf-token"
	content="1483780974##87f89328c5616669f00302a263fe9061bb852818">


<title>coursecomment</title>




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
<link rel="stylesheet"
	href="restatic/js/libs/marked/katex/katex.min.css">
</head>
<body>

	<%@include file="header.jsp"%>

	<div class="container layout layout-margin-top">


		<div class="row">
			<div class="col-md-9 layout-body">


				<div class="content course-infobox">
					<div class="clearfix course-infobox-header">
						<h4 class="pull-left course-infobox-title">

							<span>UI设计</span>

						</h4>
						<div class="pull-right course-infobox-follow">
							<span>收藏</span> <a href="coursedetail.jsp"><i
								class="fa fa-star-o" data-next="/login?next=%2Fcourses%2F1"></i></a>

						</div>
					</div>
					<div class="clearfix course-infobox-body">
						<div class="sidebox1 mooc-teacher" border="0">
							<div class="sidebox-body mooc-content">
								<a href="/user/20406" target="_blank"> <img
									src="img/ncn1.jpg">
								</a>
								<div class="mooc-info">
                        			<div class="name">
                         				 综合评分：<strong>80</strong> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                          				学习人数：<strong>100</strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                          				课程价格：<strong>￥100</strong>
                          				<from action="">
                         					<input type="submit" id="fl" class="input8" value="加入课程"/>
                          				</from>
                        			</div>
                    			</div>
								<div class="mooc-extra-info">
									<div class="word long-paragraph">
										<p>课程简介：</p>
										<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;UI即User
											Interface（用户界面）的简称。泛指用户的操作界面，包含移动APP，网页，智能穿戴设备等。UI设计主要指界面的样式，美观程度。而使用上，对软件的人机交互、操作逻辑、界面美观的整体设计则是同样重要的另一个门道。
											UI可以让软件变得有个性有品味，还要让软件的操作变得舒适、简单、自由，充分体现软件的定位和特点。</p>
									</div>
								</div>
							</div>
						</div>
					</div>

				</div>
				<div class="content">
					<ul class="nav nav-tabs" role="tablist">

						<li role="presentation"><a href="coursedetail.jsp">课程章结</a>
						</li>

						<li role="presentation"><a href="coursecomment.jsp"
							class="stat-event">课程评论</a></li>
					</ul>
					<div class="tab-content">

						<div role="tabpanel" class="tab-pane active" id="labs">




							<form action="">
								<textarea rows="5" cols="130" name=""></textarea>
								<input id="fl" class="buttonstyle bgc" type="submit" value="提交">
								<!--  id="fl" class="btn btn-default navbar-btn sign-up bgc"  -->
							</form>

							<div class="answer-item">
								<div class="answer-head">
									<img class="avatar" src="img/ncn23.jpg" height="40px">
								</div>
								<div class="answer-detail">
									<div class="user-username ">
										<p class="username">到此一游</p>
									</div>

									<div class="answer-content markdown-body">
										<p>这个不是发实验报告咩。。。怎么提问的时候发截图啊</p>
									</div>
									<span class="create-time">5小时前</span>
									<div id="fl">
										<a href="showcommentanswer.jsp">查看回复</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
										<a href="">回复</a>
									</div>
								</div>
							</div>

							<div class="answer-item">
								<div class="answer-head">
									<img class="avatar" src="img/ncn23.jpg" height="40px">
								</div>
								<div class="answer-detail">
									<div class="user-username ">
										<p class="username">到此一游</p>
									</div>

									<div class="answer-content markdown-body">
										<p>这个不是发实验报告咩。。。怎么提问的时候发截图啊</p>
									</div>
									<span class="create-time">5小时前</span>
									<div id="fl">
										<a href="showcommentanswer.jsp">查看回复</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
										<a href="">回复</a>
									</div>
								</div>
							</div>

							<div class="answer-item">
								<div class="answer-head">
									<img class="avatar" src="img/ncn23.jpg" height="40px">
								</div>
								<div class="answer-detail">
									<div class="user-username ">
										<p class="username">到此一游</p>
									</div>

									<div class="answer-content markdown-body">
										<p>这个不是发实验报告咩。。。怎么提问的时候发截图啊</p>
									</div>
									<span class="create-time">5小时前</span>
									<div id="fl">
										<a href="showcommentanswer.jsp">查看回复</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
										<a href="">回复</a>
									</div>
								</div>
							</div>

							<div class="pagination-container pagemiddle">
								<a class="wordstyle" href=""> 首页 </a> &nbsp;&nbsp;&nbsp; <a
									class="wordstyle" href=""> 上一页 </a>&nbsp;&nbsp;&nbsp; <a
									class="wordstyle" href=""> 下一页 </a>&nbsp;&nbsp;&nbsp; <a
									class="wordstyle" href=""> 末页 </a>&nbsp;&nbsp;&nbsp;
							</div>

						</div>

					</div>
				</div>


			</div>
			<div class="col-md-3 layout-side">

				<div class="side-image side-image-pc">
					<img src="img/ncn1.jpg?imageView2/0/h/300">
				</div>





				<div class="sidebox mooc-teacher">
					<div class="sidebox-header mooc-header">
						<h4 class="sidebox-title">课程教师</h4>
					</div>
					<div class="sidebox-body mooc-content">
						<a href="information.jsp" target="_blank"> <img
							src="img/Linux&c.png">
						</a>
						<div class="mooc-info">
							<div class="name">
								<strong>Edward</strong>
							</div>

							<div class="courses">
								共发布过<strong>18</strong>门课程
							</div>
						</div>
						<div class="mooc-extra-info">
							<div class="word long-paragraph">
								资深程序员，5年Linux运维、企业级开发经验及数据库实战和教学经验。</div>
						</div>
					</div>
					<div class="sidebox-footer mooc-footer">
						<a href="information.jsp" target="_blank">查看老师的所有课程 ></a>
					</div>
				</div>


				<!-- 此处展示老师的另外一些课程 -->
				<div class="wordstyle">
					<strong>类似课程</strong>
				</div>
				<div class="col-md-14 col-sm-16  course">
					<a class="course-box" href="coursedetail.jsp">
						<div class="course-img">

							<img alt="新手指南之玩转实验楼" src="img/ncn23.jpg">

						</div>

						<div class="course-body">
							<span class="course-title">新手指南之玩转实验楼</span>
						</div>
						<div class="course-footer">
							<span class="course-per-num pull-left"> 57973 </span>

						</div>
					</a>
				</div>

				<div class="col-md-14 col-sm-16  course">
					<a class="course-box" href="coursedetail.jsp">
						<div class="course-img">

							<img alt="新手指南之玩转实验楼" src="img/ncn23.jpg">

						</div>

						<div class="course-body">
							<span class="course-title">新手指南之玩转实验楼</span>
						</div>
						<div class="course-footer">
							<span class="course-per-num pull-left"> 57973 </span>

						</div>
					</a>
				</div>

				<div class="col-md-14 col-sm-16  course">
					<a class="course-box" href="coursedetail.jsp">
						<div class="course-img">

							<img alt="新手指南之玩转实验楼" src="img/ncn23.jpg">

						</div>

						<div class="course-body">
							<span class="course-title">新手指南之玩转实验楼</span>
						</div>
						<div class="course-footer">
							<span class="course-per-num pull-left"> 57973 </span>

						</div>
					</a>
				</div>

			</div>
		</div>
	</div>
	<%@include file="login.jsp" %>
	<%@include file="footer.jsp"%>
</body>
</html>