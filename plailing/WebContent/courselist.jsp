<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="author" content="Lei Shi">
<meta http-equiv="Cache-Control" content="o-transform">
<meta http-equiv="Cache-Control" content="no-siteapp">
<meta name="csrf-token"
	content="1483780974##87f89328c5616669f00302a263fe9061bb852818">
	
<title>courselist</title>

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
	
	<%@include file="header.jsp"%>
	
	<div class="container layout layout-margin-top">


		<div class="row">
			<div class="col-md-9 layout-body">

				<div class="content">
					<div class="row course-cates">
						<div class="col-md-1 course-cates-title">类别：</div>
						<div class="col-md-11 course-cates-content">
							<a class="active" href="/courses/?course_type=all&amp;tag=all">全部</a>
							<a class="" href="/courses/?course_type=all&amp;tag=all&amp;fee=free">摄影技术</a>
							<a class="" href="/courses/?course_type=all&amp;tag=all&amp;fee=limited">创意设计</a>
							<a class="" href="/courses/?course_type=all&amp;tag=all&amp;fee=limited">声乐器乐</a>
							<a class="" href="/courses/?course_type=all&amp;tag=all&amp;fee=limited">IT互联网</a>
							<a class="" href="/courses/?course_type=all&amp;tag=all&amp;fee=limited">运动健身</a>
							<a class="" href="/courses/?course_type=all&amp;tag=all&amp;fee=limited">语言学习</a>
							<a class="" href="/courses/?course_type=all&amp;tag=all&amp;fee=limited">职场技能</a>
							<a class="" href="/courses/?course_type=all&amp;tag=all&amp;fee=limited">生活意趣</a>
							<a class="" href="/courses/?course_type=all&amp;tag=all&amp;fee=limited">公开课</a>
						</div>
					</div>
					<div class="row course-cates">
						<div class="col-md-1 course-cates-title">标签：</div>
						<div class="col-md-11 course-cates-content">
							<a class="active" href="/courses/?course_type=all&amp;fee=all">全部</a>

							<a class=""
								href="/courses/?course_type=all&amp;tag=Python&amp;fee=all">Java</a>

							<a class=""
								href="/courses/?course_type=all&amp;tag=C%2FC%2B%2B&amp;fee=all">C/C++</a>

							<a class=""
								href="/courses/?course_type=all&amp;tag=Linux&amp;fee=all">Linux</a>

							<a class=""
								href="/courses/?course_type=all&amp;tag=Web&amp;fee=all">Web</a>
						</div>
					</div>
				</div>
				<div class="content position-relative">
					<ul class="nav nav-tabs" role="tablist">
						<li class="active"><a
							href="/courses/?course_type=all&amp;tag=all&amp;fee=all">推荐课程</a></li>
					</ul>
					<div class="clearfix"></div>
					<div class="search-result"></div>
					<div class="row">




					<!-- 以下第一个大的div已改 -->
						<div class="col-md-4 col-sm-6  course">
							<a class="course-box" href="coursedetail.jsp">
								<div class="sign-box">



									<i class="fa fa-star-o course-follow pull-right"
										data-follow-url="/courses/63/follow"
										data-unfollow-url="/courses/63/unfollow" style="display: none"></i>

								</div>
								<div class="course-img">

									<img alt="新手指南之玩转实验楼"
										src="https://dn-simplecloud.shiyanlou.com/ncn63.jpg">

								</div>

								<div class="course-body">
									<span class="course-title" data-toggle="tooltip"
										data-placement="bottom" title="新手指南之玩转实验楼">新手指南之玩转实验楼</span>
								</div>
								<div class="course-footer">
									<span class="course-per-num pull-left"> <i
										class="fa fa-users"></i> 57973

									</span>



								</div>
							</a>
						</div>

						<!-- 以以上第一个大的div已改 ，以下用foreach得到-->



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
										data-follow-url="/courses/719/follow"
										data-unfollow-url="/courses/719/unfollow"
										style="display: none"></i>

								</div>
								<div class="course-img">

									<img alt="Kali 渗透测试 - 后门技术实战（10个实验）"
										src="https://dn-simplecloud.shiyanlou.com/1480389303324.png">

								</div>

								<div class="course-body">
									<span class="course-title" data-toggle="tooltip"
										data-placement="bottom" title="Kali 渗透测试 - 后门技术实战（10个实验）">Kali
										渗透测试 - 后门技术实战（10个实验）</span>
								</div>
								<div class="course-footer">
									<span class="course-per-num pull-left"> <i
										class="fa fa-users"></i> 101

									</span> <span class="course-bootcamp pull-right">训练营</span>

								</div>
							</a>
						</div>





						<div class="col-md-4 col-sm-6  course">
							<a class="course-box" href="show.html">
								<div class="sign-box">



									<i class="fa fa-star-o course-follow pull-right"
										data-follow-url="/courses/717/follow"
										data-unfollow-url="/courses/717/unfollow"
										style="display: none"></i>

								</div>
								<div class="course-img">

									<img alt="Kali 渗透测试 - Web 应用攻击实战"
										src="https://dn-simplecloud.shiyanlou.com/1480389165511.png">

								</div>

								<div class="course-body">
									<span class="course-title" data-toggle="tooltip"
										data-placement="bottom" title="Kali 渗透测试 - Web 应用攻击实战">Kali
										渗透测试 - Web 应用攻击实战</span>
								</div>
								<div class="course-footer">
									<span class="course-per-num pull-left"> <i
										class="fa fa-users"></i> 121

									</span> <span class="course-bootcamp pull-right">训练营</span>

								</div>
							</a>
						</div>





						<div class="col-md-4 col-sm-6  course">
							<a class="course-box" href="show.html">
								<div class="sign-box">



									<i class="fa fa-star-o course-follow pull-right"
										data-follow-url="/courses/721/follow"
										data-unfollow-url="/courses/721/unfollow"
										style="display: none"></i>

								</div>
								<div class="course-img">

									<img alt="使用OpenCV进行图片平滑处理打造模糊效果"
										src="https://dn-simplecloud.shiyanlou.com/1482113947345.png">

								</div>

								<div class="course-body">
									<span class="course-title" data-toggle="tooltip"
										data-placement="bottom" title="使用OpenCV进行图片平滑处理打造模糊效果">使用OpenCV进行图片平滑处理打造模糊效果</span>
								</div>
								<div class="course-footer">
									<span class="course-per-num pull-left"> <i
										class="fa fa-users"></i> 60

									</span>



								</div>
							</a>
						</div>





						<div class="col-md-4 col-sm-6  course">
							<a class="course-box" href="show.html">
								<div class="sign-box">



									<i class="fa fa-star-o course-follow pull-right"
										data-follow-url="/courses/729/follow"
										data-unfollow-url="/courses/729/unfollow"
										style="display: none"></i>

								</div>
								<div class="course-img">

									<img alt="使用 Python 解数学方程"
										src="https://dn-simplecloud.shiyanlou.com/1482807365470.png">

								</div>

								<div class="course-body">
									<span class="course-title" data-toggle="tooltip"
										data-placement="bottom" title="使用 Python 解数学方程">使用
										Python 解数学方程</span>
								</div>
								<div class="course-footer">
									<span class="course-per-num pull-left"> <i
										class="fa fa-users"></i> 69

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
										data-follow-url="/courses/698/follow"
										data-unfollow-url="/courses/698/unfollow"
										style="display: none"></i>

								</div>
								<div class="course-img">

									<img alt="Kali 渗透测试 - 服务器攻击实战（20个实验）"
										src="https://dn-simplecloud.shiyanlou.com/1480386391850.png">

								</div>

								<div class="course-body">
									<span class="course-title" data-toggle="tooltip"
										data-placement="bottom" title="Kali 渗透测试 - 服务器攻击实战（20个实验）">Kali
										渗透测试 - 服务器攻击实战（20个实验）</span>
								</div>
								<div class="course-footer">
									<span class="course-per-num pull-left"> <i
										class="fa fa-users"></i> 171

									</span> <span class="course-bootcamp pull-right">训练营</span>

								</div>
							</a>
						</div>





						<div class="col-md-4 col-sm-6  course">
							<a class="course-box" href="show.html">
								<div class="sign-box">



									<i class="fa fa-star-o course-follow pull-right"
										data-follow-url="/courses/702/follow"
										data-unfollow-url="/courses/702/unfollow"
										style="display: none"></i>

								</div>
								<div class="course-img">

									<img alt="手把手教你实现 Google 拓展插件"
										src="https://dn-simplecloud.shiyanlou.com/1482113981000.png">

								</div>

								<div class="course-body">
									<span class="course-title" data-toggle="tooltip"
										data-placement="bottom" title="手把手教你实现 Google 拓展插件">手把手教你实现
										Google 拓展插件</span>
								</div>
								<div class="course-footer">
									<span class="course-per-num pull-left"> <i
										class="fa fa-users"></i> 392

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





						<div class="col-md-4 col-sm-6  course">
							<a class="course-box" href="show.html">
								<div class="sign-box">



									<i class="fa fa-star-o course-follow pull-right"
										data-follow-url="/courses/725/follow"
										data-unfollow-url="/courses/725/unfollow"
										style="display: none"></i>

								</div>
								<div class="course-img">

									<img alt="Python3实现简单的FTP认证服务器"
										src="https://dn-simplecloud.shiyanlou.com/1482113485097.png">

								</div>

								<div class="course-body">
									<span class="course-title" data-toggle="tooltip"
										data-placement="bottom" title="Python3实现简单的FTP认证服务器">Python3实现简单的FTP认证服务器</span>
								</div>
								<div class="course-footer">
									<span class="course-per-num pull-left"> <i
										class="fa fa-users"></i> 598

									</span>



								</div>
							</a>
						</div>





						<div class="col-md-4 col-sm-6  course">
							<a class="course-box" href="show.html">
								<div class="sign-box">



									<i class="fa fa-star-o course-follow pull-right"
										data-follow-url="/courses/724/follow"
										data-unfollow-url="/courses/724/unfollow"
										style="display: none"></i>

								</div>
								<div class="course-img">

									<img alt="SQLAlchemy 基础教程"
										src="https://dn-simplecloud.shiyanlou.com/1481689616072.png">

								</div>

								<div class="course-body">
									<span class="course-title" data-toggle="tooltip"
										data-placement="bottom" title="SQLAlchemy 基础教程">SQLAlchemy
										基础教程</span>
								</div>
								<div class="course-footer">
									<span class="course-per-num pull-left"> <i
										class="fa fa-users"></i> 348

									</span>



								</div>
							</a>
						</div>





						<div class="col-md-4 col-sm-6  course">
							<a class="course-box" href="show.html">
								<div class="sign-box">



									<i class="fa fa-star-o course-follow pull-right"
										data-follow-url="/courses/716/follow"
										data-unfollow-url="/courses/716/unfollow"
										style="display: none"></i>

								</div>
								<div class="course-img">

									<img alt="使用OpenCV&amp;&amp;C++进行模板匹配"
										src="https://dn-simplecloud.shiyanlou.com/1481511769551.png">

								</div>

								<div class="course-body">
									<span class="course-title" data-toggle="tooltip"
										data-placement="bottom" title="使用OpenCV&amp;&amp;C++进行模板匹配">使用OpenCV&amp;&amp;C++进行模板匹配</span>
								</div>
								<div class="course-footer">
									<span class="course-per-num pull-left"> <i
										class="fa fa-users"></i> 347

									</span> <span class="course-money pull-right">会员</span>


								</div>
							</a>
						</div>





						<div class="col-md-4 col-sm-6  course">
							<a class="course-box" href="show.html">
								<div class="sign-box">



									<i class="fa fa-star-o course-follow pull-right"
										data-follow-url="/courses/715/follow"
										data-unfollow-url="/courses/715/unfollow"
										style="display: none"></i>

								</div>
								<div class="course-img">

									<img alt="Metasploit实现木马生成、捆绑及免杀"
										src="https://dn-simplecloud.shiyanlou.com/1481512189119.png">

								</div>

								<div class="course-body">
									<span class="course-title" data-toggle="tooltip"
										data-placement="bottom" title="Metasploit实现木马生成、捆绑及免杀">Metasploit实现木马生成、捆绑及免杀</span>
								</div>
								<div class="course-footer">
									<span class="course-per-num pull-left"> <i
										class="fa fa-users"></i> 256

									</span> <span class="course-money pull-right">会员</span>


								</div>
							</a>
						</div>





						<div class="col-md-4 col-sm-6  course">
							<a class="course-box" href="show.html">
								<div class="sign-box">



									<i class="fa fa-star-o course-follow pull-right"
										data-follow-url="/courses/708/follow"
										data-unfollow-url="/courses/708/unfollow"
										style="display: none"></i>

								</div>
								<div class="course-img">

									<img alt="Python 3 实现 Markdown 解析器"
										src="https://dn-simplecloud.shiyanlou.com/1480644410422.png">

								</div>

								<div class="course-body">
									<span class="course-title" data-toggle="tooltip"
										data-placement="bottom" title="Python 3 实现 Markdown 解析器">Python
										3 实现 Markdown 解析器</span>
								</div>
								<div class="course-footer">
									<span class="course-per-num pull-left"> <i
										class="fa fa-users"></i> 745

									</span> <span class="course-money pull-right">会员</span>


								</div>
							</a>
						</div>




					</div>


					<nav class="pagination-container">
						<ul class="pagination">

							<li class="disabled"><a href="#" aria-label="Previous">
									<span aria-hidden="true">上一页</span>
							</a></li>



							<li class="active"><a
								href="/courses/?course_type=all&amp;tag=all&amp;fee=all&amp;page=1">1</a>
							</li>



							<li class=""><a
								href="/courses/?course_type=all&amp;tag=all&amp;fee=all&amp;page=2">2</a>
							</li>



							<li class=""><a
								href="/courses/?course_type=all&amp;tag=all&amp;fee=all&amp;page=3">3</a>
							</li>




							<li><a href='#'>...</a></li>



							<li class=""><a
								href="/courses/?course_type=all&amp;tag=all&amp;fee=all&amp;page=24">24</a>
							</li>



							<li class=""><a
								href="/courses/?course_type=all&amp;tag=all&amp;fee=all&amp;page=25">25</a>
							</li>



							<li class=""><a aria-label="Next"
								href="/courses/?course_type=all&amp;tag=all&amp;fee=all&amp;page=2">
									<span aria-hidden="true">下一页</span>
							</a></li>

						</ul>
					</nav>


				</div>

			</div>
			<div class="col-md-3 layout-side">
				<div class="sidebox">
					<div class="sidebox-header">
						<h4 class="sidebox-title">最热课程</h4>
					</div>
					<div class="sidebox-body course-content side-list-body">
						<a href="/paths/python"><img style="width: 25px; height: 25px"
							src="img/1471513769430.png"> Python 研发工程师</a> <a
							href="/paths/bigdata"><img style="width: 25px; height: 25px"
							src="img/1471513926288.png"> 大数据工程师</a> <a href="/paths/cpp"><img
							style="width: 25px; height: 25px" src="img/1471513793360.png">
							C++ 研发工程师</a> <a href="/paths/security"><img
							style="width: 25px; height: 25px" src="img/1471513867033.png">
							信息安全工程师</a> <a href="/paths/linuxsys"><img
							style="width: 25px; height: 25px" src="img/1471514004752.png">
							Linux 运维工程师</a>
					</div>

				</div>

			</div>
		</div>
	</div>


	<%@include file="login.jsp" %>

	<%@include file="footer.jsp"%>
</body>
</html>