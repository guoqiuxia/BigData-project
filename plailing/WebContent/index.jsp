<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
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
<link rel="stylesheet" href="app/css/dest/styles.css?=2016121272249">

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
		<div class="banner-container">
			<div class="container">
				<div class="row">
					<div class="col-md-7">
<!-- 						<a class="container-title"> 
							<img src="img/container-title-2.png" />
							
						</a> -->
						<font size="6" color="white">欢&nbsp;迎&nbsp;加&nbsp;入&nbsp;e&nbsp;享&nbsp;课&nbsp;堂</font><br/><br/><br/><br/>
						<div style="margin-top: 24px;">
							<a id="course-btn" class="course-btn btn btn-lg"
								href="courselist.jsp">进入课程</a>
						</div>
					</div>

					<div class="col-md-5">

						<form action="/quickregister" method="post">
							<div class="form-group">
								<input class="form-control" name="name" id="name" type="text"
									placeholder="昵称">
								<div class="help-block text-left"></div>
							</div>
							<div class="form-group">
								<input class="form-control" name="email" id="email" type="email"
									placeholder="邮箱">
								<div class="help-block text-left"></div>
							</div>
							<div class="form-group">
								<input class="form-control" name="password" id="password"
									type="password" placeholder="密码">
								<div class="help-block text-left"></div>
							</div>
							<button class="btn register" type="submit">加入e享课堂</button>
							<p class="tip">
								点击"加入e享课堂"，表示您已经同意我们的<a href="privacy.jsp" target="_blank">
									隐私条款</a>
							</P>
						</form>

					</div>

				</div>
			</div>
		</div>
	</div>

	<div class="introduce-container" id="fourFeatures">
		<div class="container">
			<div class="row">
				<div class="introduce-unit col-sm-6 col-md-3">
					<div>
						<a class="introduce-img"><img
							src="img/introduceContainer1.gif" /></a>
					</div>
					<div>
						<span class="introduce-span">丰富全面的计算机实验课程</span>
					</div>
				</div>
				<div class="introduce-unit col-sm-6 col-md-3">
					<div>
						<a class="introduce-img"><img
							src="img/introduceContainer2.gif" /></a>
					</div>
					<div>
						<span class="introduce-span">在线编程环境，1秒启动</span>
					</div>
				</div>
				<div class="introduce-unit col-sm-6 col-md-3">
					<div>
						<a class="introduce-img"><img
							src="img/introduceContainer3.gif" /></a>
					</div>
					<div>
						<span class="introduce-span">每天一个项目课，丰富你的项目经验</span>
					</div>
				</div>
				<div class="introduce-unit col-sm-6 col-md-3">
					<div>
						<a class="introduce-img"><img
							src="img/introduceContainer4.gif" /></a>
					</div>
					<div>
						<span class="introduce-span">有效学习时间，真实记录你的代码生涯</span>
					</div>
				</div>
			</div>
		</div>
	</div>

	<div class="line-and-laboratory">
		<div class="container">
			<div class="clearfix text-center item-header">
				<span class="line"></span> <span class="text-center item-title">课/程/推/荐</span>
				<span class="line"></span>
			</div>
			<div class="tab-content">
				<div class="tab-pane clearfix active" id="study-line">


					<div class="col-xs-12 col-sm-6 col-md-4">
						<a href="paths/show.html">
							<div class="path-item">
								<div class="col-xs-5 col-sm-4 path-img">
									<img src="img/1471513730333.png">
								</div>
								<div class="col-xs-7 col-sm-8">
									<div class="path-name">新手入门</div>
									<div class="path-course-num">
										</span>6</span> 门课程
									</div>
								</div>
								<div class="desc-layer">
									<div class="center">新手入门路径帮助对 IT
										技术感兴趣的新手0基础入门计算机编程。本路径通过新手入门、Linux 及 Vim课程熟悉实验楼的实践学习环境，再以 C
										语言和一个简单的项目引导你一步步进入计算机技术的殿堂。</div>
								</div>
							</div>
						</a>
					</div>



					<div class="col-xs-12 col-sm-6 col-md-4">
						<a href="paths/show.html">
							<div class="path-item">
								<div class="col-xs-5 col-sm-4 path-img">
									<img src="img/1471513769430.png">
								</div>
								<div class="col-xs-7 col-sm-8">
									<div class="path-name">Python研发工程师</div>
									<div class="path-course-num">
										</span>83</span> 门课程
									</div>
								</div>
								<div class="desc-layer">
									<div class="center">Python技术路径中包含入门知识、Python基础、Web框架、基础项目、网络编程、数据与计算及综合项目七个模块。模块中的课程将带着你逐步深入，学会如何使用
										Python 实现项目一个博客，桌面词典，微信机器人或网络安全软件等。完成本路径的实验课，将具备独立开发 Python
										软件和 Web 应用的能力。</div>
								</div>
							</div>
						</a>
					</div>



					<div class="col-xs-12 col-sm-6 col-md-4">
						<a href="paths/show.html">
							<div class="path-item">
								<div class="col-xs-5 col-sm-4 path-img">
									<img src="img/1471513793360.png">
								</div>
								<div class="col-xs-7 col-sm-8">
									<div class="path-name">C++ 研发工程师</div>
									<div class="path-course-num">
										</span>26</span> 门课程
									</div>
								</div>
								<div class="desc-layer">
									<div class="center">C++ 学习路径中将通过使用 C++ 语言实现 Web
										服务器，Markdown 解析器，内存池以及 Docker 容器管理工具等，学习并实践 C++ 编程基础，C++ 11/14
										标准，C++ 图像处理及增强现实技术。完成本路径的所有实验课，将能够使用 C++ 独立实现复杂的应用程序。</div>
								</div>
							</div>
						</a>
					</div>



					<div class="col-xs-12 col-sm-6 col-md-4">
						<a href="paths/show.html">
							<div class="path-item">
								<div class="col-xs-5 col-sm-4 path-img">
									<img src="img/1471513926288.png">
								</div>
								<div class="col-xs-7 col-sm-8">
									<div class="path-name">大数据工程师</div>
									<div class="path-course-num">
										</span>36</span> 门课程
									</div>
								</div>
								<div class="desc-layer">
									<div class="center">大数据学习路径中会学习并实践
										Java、Scala、Hadoop、HBase、Mahout、Sqoop及Spark等大数据技术，本路径通过大量的动手实验，在实验数据集上实践各种大数据工具，帮助你成长为具备动手能力的大数据工程师。</div>
								</div>
							</div>
						</a>
					</div>



					<div class="col-xs-12 col-sm-6 col-md-4">
						<a href="paths/show.html">
							<div class="path-item">
								<div class="col-xs-5 col-sm-4 path-img">
									<img src="img/1471513867033.png">
								</div>
								<div class="col-xs-7 col-sm-8">
									<div class="path-name">信息安全工程师</div>
									<div class="path-course-num">
										</span>38</span> 门课程
									</div>
								</div>
								<div class="desc-layer">
									<div class="center">信息安全学习路径首先完成
										Linux、脚本编程、数据库和网络等基础知识学习，然后通过密码学实验、系统安全实验、Web安全实验、网络安全实验四个核心模块的动手实践，强化信息安全工程师必须要掌握的系统防护，Web渗透及网络攻防等基本技能。</div>
								</div>
							</div>
						</a>
					</div>



					<div class="col-xs-12 col-sm-6 col-md-4">
						<a href="paths/show.html">
							<div class="path-item">
								<div class="col-xs-5 col-sm-4 path-img">
									<img src="img/1471514004752.png">
								</div>
								<div class="col-xs-7 col-sm-8">
									<div class="path-name">Linux运维工程师</div>
									<div class="path-course-num">
										</span>33</span> 门课程
									</div>
								</div>
								<div class="desc-layer">
									<div class="center">Linux运维技术路径中首先学习 Linux
										相关的基本操作和系统管理，然后依次学习并实践服务部署、数据库管理、脚本编程、系统监控和安全防护、以及Web服务运维技术。最后学习
										Docker 容器服务和 Windows Server的运维知识。本路径的实验将帮助你成为一名合格的 Linux
										运维工程师。</div>
								</div>
							</div>
						</a>
					</div>



					<div class="col-xs-12 col-sm-6 col-md-4">
						<a href="paths/show.html">
							<div class="path-item">
								<div class="col-xs-5 col-sm-4 path-img">
									<img src="img/1471514111981.png">
								</div>
								<div class="col-xs-7 col-sm-8">
									<div class="path-name">Java研发工程师</div>
									<div class="path-course-num">
										</span>25</span> 门课程
									</div>
								</div>
								<div class="desc-layer">
									<div class="center">Java 学习路径中将首先完成
										Java基础、JDK、JDBC、正则表达式等基础实验，然后进阶到 J2SE 和 SSH 框架学习。通过使用 Java
										语言实现日记本，个人相册、编辑器、通讯录等，学习并实践 Java 编程基础，SSH 项目实战以及Java Web 应用开发。</div>
								</div>
							</div>
						</a>
					</div>



					<div class="col-xs-12 col-sm-6 col-md-4">
						<a href="paths/show.html">
							<div class="path-item">
								<div class="col-xs-5 col-sm-4 path-img">
									<img src="img/1471514095761.png">
								</div>
								<div class="col-xs-7 col-sm-8">
									<div class="path-name">PHP研发工程师</div>
									<div class="path-course-num">
										</span>30</span> 门课程
									</div>
								</div>
								<div class="desc-layer">
									<div class="center">PHP 技术路径中包含入门知识、PHP 编程基础、PHP Web
										框架、项目实战和项目进阶五个模块。模块中的课程将带着你逐步深入，学会如何使用 PHP
										实现项目一个博客，聊天室，MVC框架及搜索系统等。完成本路径所有实验课，将具备使用 PHP 独立开发 Web 应用的能力。</div>
								</div>
							</div>
						</a>
					</div>



					<div class="col-xs-12 col-sm-6 col-md-4">
						<a href="paths/show.html">
							<div class="path-item">
								<div class="col-xs-5 col-sm-4 path-img">
									<img src="img/1471514153000.png">
								</div>
								<div class="col-xs-7 col-sm-8">
									<div class="path-name">Web前端工程师</div>
									<div class="path-course-num">
										</span>34</span> 门课程
									</div>
								</div>
								<div class="desc-layer">
									<div class="center">Web 前端学习路径中首先实践
										HTML、CSS、JavaScript、jQuery、HTML5等基础知识，然后完成实现页面特效组件、网页游戏、Web应用等一系列项目，帮助你通过动手实践成长为合格的
										Web 前端工程师。</div>
								</div>
							</div>
						</a>
					</div>



					<div class="col-xs-12 col-sm-6 col-md-4">
						<a href="paths/show.html">
							<div class="path-item">
								<div class="col-xs-5 col-sm-4 path-img">
									<img src="img/1471514037180.png">
								</div>
								<div class="col-xs-7 col-sm-8">
									<div class="path-name">Linux研发工程师</div>
									<div class="path-course-num">
										</span>27</span> 门课程
									</div>
								</div>
								<div class="desc-layer">
									<div class="center">Linux 研发学习路径中首先学习
										Linux基础、C语言、Git、GDB、数据结构等基础知识，然后完成 TCP/IP、MySQL
										数据库、操作系统等实验课程。项目阶段将实现
										cp、ls、touch、ping等一系列Linux命令和端口扫描、Web服务器、聊天室等网络应用，帮助你通过动手实践入门
										Linux 系统研发。</div>
								</div>
							</div>
						</a>
					</div>



					<div class="col-xs-12 col-sm-6 col-md-4">
						<a href="paths/show.html">
							<div class="path-item">
								<div class="col-xs-5 col-sm-4 path-img">
									<img src="img/1471513817808.png">
								</div>
								<div class="col-xs-7 col-sm-8">
									<div class="path-name">NodeJS研发工程师</div>
									<div class="path-course-num">
										</span>21</span> 门课程
									</div>
								</div>
								<div class="desc-layer">
									<div class="center">NodeJS 学习路径中将通过使用 NodeJS
										实现博客、在线笔记、爬虫、即时搜索、漂流瓶、端口扫描器等应用，学习并实践 NodeJS 编程基础和Web
										应用开发等技术。完成本路径的所有实验课，将能够使用 NodeJS 独立实现 Web 应用程序。</div>
								</div>
							</div>
						</a>
					</div>



					<div class="col-xs-12 col-sm-6 col-md-4">
						<a href="paths/show.html">
							<div class="path-item">
								<div class="col-xs-5 col-sm-4 path-img">
									<img src="img/1471514058548.png">
								</div>
								<div class="col-xs-7 col-sm-8">
									<div class="path-name">MongoDB工程师</div>
									<div class="path-course-num">
										</span>6</span> 门课程
									</div>
								</div>
								<div class="desc-layer">
									<div class="center">MongoDB 技术路径中首先学习
										Linux、Bash、MySQL基础知识，然后依次学习并实践 Memcached、Redis 和
										MongoDB技术。本路径的实验将帮助你逐步入门 MongoDB 这类 NoSQL 数据库。</div>
								</div>
							</div>
						</a>
					</div>


				</div>
			</div>
		</div>
	</div>

	<div class="line-and-laboratory">
		<div class="container">
			<div class="clearfix text-center item-header">
				<span class="line"></span>
				<div class="text-center item-title">新/上/好/课</div>
				<span class="line"></span>
			</div>
			<div class="clearfix courses">




				<div class="col-md-3 col-sm-6  course">
					<a class="course-box" href="courses/show.html">
						<div class="sign-box">



							<i class="fa fa-star-o course-follow pull-right"
								data-follow-url="/courses/1/follow"
								data-unfollow-url="/courses/1/unfollow" style="display: none"></i>

						</div>
						<div class="course-img">

							<img alt="Linux 基础入门（新版）" src="img/ncn1.jpg">

						</div>

						<div class="course-body">
							<span class="course-title" data-toggle="tooltip"
								data-placement="bottom" title="Linux 基础入门（新版）">Linux
								基础入门（新版）</span>
						</div>
						<div class="course-footer">
							<span class="course-per-num pull-left"> <i
								class="fa fa-users"></i> 85157

							</span>



						</div>
					</a>
				</div>





				<div class="col-md-3 col-sm-6  course">
					<a class="course-box" href="courses/show.html">
						<div class="sign-box">



							<i class="fa fa-star-o course-follow pull-right"
								data-follow-url="/courses/11/follow"
								data-unfollow-url="/courses/11/unfollow" style="display: none"></i>

						</div>
						<div class="course-img">

							<img alt="Go语言编程" src="img/ncn11.jpg">

						</div>

						<div class="course-body">
							<span class="course-title" data-toggle="tooltip"
								data-placement="bottom" title="Go语言编程">Go语言编程</span>
						</div>
						<div class="course-footer">
							<span class="course-per-num pull-left"> <i
								class="fa fa-users"></i> 5741

							</span>



						</div>
					</a>
				</div>





				<div class="col-md-3 col-sm-6  course">
					<a class="course-box" href="courses/show.html">
						<div class="sign-box">



							<i class="fa fa-star-o course-follow pull-right"
								data-follow-url="/courses/23/follow"
								data-unfollow-url="/courses/23/unfollow" style="display: none"></i>

						</div>
						<div class="course-img">

							<img alt="PHP编程语言" src="img/ncn23.jpg">

						</div>

						<div class="course-body">
							<span class="course-title" data-toggle="tooltip"
								data-placement="bottom" title="PHP编程语言">PHP编程语言</span>
						</div>
						<div class="course-footer">
							<span class="course-per-num pull-left"> <i
								class="fa fa-users"></i> 8093

							</span>



						</div>
					</a>
				</div>





				<div class="col-md-3 col-sm-6  course">
					<a class="course-box" href="courses/show.html">
						<div class="sign-box">



							<i class="fa fa-star-o course-follow pull-right"
								data-follow-url="/courses/30/follow"
								data-unfollow-url="/courses/30/unfollow" style="display: none"></i>

						</div>
						<div class="course-img">

							<img alt="Python Django Web框架" src="img/ncn30.jpg">

						</div>

						<div class="course-body">
							<span class="course-title" data-toggle="tooltip"
								data-placement="bottom" title="Python Django Web框架">Python
								Django Web框架</span>
						</div>
						<div class="course-footer">
							<span class="course-per-num pull-left"> <i
								class="fa fa-users"></i> 5691

							</span>



						</div>
					</a>
				</div>


			</div>
			<div class="clearfix item-footer">
				<div class="pull-right watch-all">
					<a href="courses/index.html">查看更多 ></a>
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
	<%@include file="login.jsp" %>


	
	<%@include file="footer.jsp"%>			
	
</body>
</html>
