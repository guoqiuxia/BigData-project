<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<nav class="navbar navbar-default navbar-fixed-top header">
	<div class="container">
		<div class="navbar-header">
			<button type="button" class="navbar-toggle collapsed"
				data-toggle="collapse" data-target="#header-navbar-collapse"
				aria-expanded="false">
				<span class="sr-only">e享课堂</span> <span class="icon-bar"></span> <span
					class="icon-bar"></span> <span class="icon-bar"></span>
			</button>
			<a class="navbar-brand" href="index.jsp"> <img src="img/logo.png"
				width="90px" height="50px">
			</a>
		</div>
		<div class="collapse navbar-collapse" id="header-navbar-collapse">
			<ul class="nav navbar-nav">
				<li class=""><a href="courselist.jsp">课程</a></li>
				<li class=""><a href="update.jsp">个人中心</a></li>
				<li class=""><a href="guide.jsp">新手指南</a></li>
				<li class=""><a href="aboutus.jsp">关于我们</a></li>

			</ul>


			<div class="navbar-right btns">
				<a class="btn btn-default navbar-btn sign-in" data-sign="signin"
					href="#sign-modal" data-toggle="modal">登录</a> <a
					class="btn btn-default navbar-btn sign-up" data-sign="signup"
					href="#sign-modal" data-toggle="modal">注册</a>
			</div>

		</div>
	</div>
</nav>


