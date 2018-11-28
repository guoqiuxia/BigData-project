<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>videodetail</title>
<link href="css/whir_style.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" href="app/css/dest/styles.css?=2016121272249">
<link rel="stylesheet"
	href="app/css/libs/bootstrap/3.3.7/css/bootstrap.min.css">
<link rel="stylesheet"
	href="static/font-awesome//4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="app/css/dest/styles.css?=2016121272249">

<script type="text/javascript">
	function windowChat() {
		window.open("http://www.runoob.com/try/try.php?filename=tryjs_prompt",
				"newwindow", "height=650,width=600", top = 300, left = 400)
	}
</script>
</head>
<body>
	<!--头部-->
	<%@include file="header1.jsp"%>

	<div class="clear" style="margin-top: 70px;"></div>
	<!--container-->
	<div class="player_container">
		<h1 class="mod_player_title" title="java简介">java简介</h1>
		<!--视频播放及相关视频-->
		<div class="mod_player_section cf" id="mod_inner">
			<div class="mod_player" id="mod_player">
				<video width="856" height="519" controls="controls"> <source
					src="http://www.w3school.com.cn/i/movie.ogg" type="video/ogg" /> <source
					src="http://www.w3school.com.cn/i/movie.ogg" type="video/mp4" /> <source
					src="http://www.w3school.com.cn/i/movie.webm" type="video/webm" />
				</video>
			</div>
			<div class="divfloat">
				<div class="album_title">
					<br> <img src="img/Linux&c.png" title="老师头像" width="130px"
						height="130px" /> <br>
					<h5>柯小西</h5>
				</div>
				<div>
					<h5>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;从事对软件的人机交互、操作逻辑、界面美观的整体设计工作,负责软件界面的美术设计、创意工作和制作工作，软件工程师背景和相应的编程能力，以及社会学心理学等人文学科储备。</h5>
				</div>
			</div>
		</div>

	</div>
	<div class="clear"></div>

	<!--留言-->
	<div class="lybox">
		<div class="guestbook">
			<div class="left868">
				<!--留言板-->
				<div class="content">
					<div>
						<ul class="nav nav-tabs" role="tablist">

							<li role="presentation"><a href="videodetail.jsp">章结</a></li>

							<li role="presentation"><a href="#" class="kdsc" >聊天室</a></li> 

							<li role="presentation"><a href="videocomment.jsp"
								class="stat-event">评论</a></li>
						</ul>
					</div>
					<div class="tab-content">

						<div role="tabpanel" class="tab-pane active" id="labs">




							<form action="">
								<textarea style="width: 800px; height: 100px" name=""></textarea>
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
										<a href="videocomment.jsp">回复</a>
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
										<a href="videocomment.jsp">回复</a>
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
										<a href="videocomment.jsp">回复</a>
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
										<a href="videocomment.jsp">回复</a>
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
										<a href="videocomment.jsp">回复</a>
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

			<!--推荐课程-->
			<div class="right306">
				<div class="wordstyle">
					<strong>推荐课程</strong>
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
	</div>
	<div class="clear"></div>
	<%@include file="footer.jsp"%>

</body>
</html>