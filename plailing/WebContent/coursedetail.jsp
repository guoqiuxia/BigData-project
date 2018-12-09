<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
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


<title>coursedetail</title>




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
<script type="text/javascript" src="static/jquery/2.2.4/jquery.min.js"></script>
<script type="text/javascript">
function isJoin(emai,courseId,userId,uploadId){
	if(emai=='' && userId==0){
		alert("请您先进行登录！")
	}else{
		var xmlhttp;
		if(window.XMLHttpRequest){
			xmlhttp=new XMLHttpRequest();
		}else{
			xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
		}
		xmlhttp.open("GET","detailJoin?userId="+userId+"&courseId="+courseId+"&uploadUser="+uploadId,true);
		xmlhttp.send();
		xmlhttp.onreadystatechange=function(){
			if(xmlhttp.readyState==4 && xmlhttp.status==200){
				var res=xmlhttp.responseText;
				if(res=="fail"){
					alert("您已加入过此课程，不能重复加入！");
				}else if(res=="checkfail"){
					alert("您的余额不足，请先去个人中心充值后在进行购买！");
				}else if(res=="buy"){
					alert("购买成功，钱数已从余额中扣除！");
				}
			}
		}
	}

}

function stare(stare,starf,emai,courseId,userId){
	if(emai=='' && userId==0){
		alert("请您先进行登录！")
	}else{		
		stare.style.display = "none";
		starf.style.display = "block";
		var xmlhttp;
		if(window.XMLHttpRequest){
			xmlhttp=new XMLHttpRequest();
		}else{
			xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
		}
		xmlhttp.open("GET","insertdetailCollection?userId="+userId+"&courseId="+courseId,true);
		xmlhttp.send();
		xmlhttp.onreadystatechange=function(){
			if(xmlhttp.readyState==4 && xmlhttp.status==200){
				var res=xmlhttp.responseText;
				if(res=="ok"){
					alert("您以收藏成功！");
				}else if(res=="false"){
					alert("您收藏失败!");
				}
			}	
		}
	}
}

function starf(stare,starf,emai,courseId,userId){
	if(emai=='' && userId==0){
		alert("请您先进行登录！")
	}else{
		starf.style.display = "none";
		stare.style.display = "block";
		var xmlhttp;
		if(window.XMLHttpRequest){
			xmlhttp=new XMLHttpRequest();
		}else{
			xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
		}
		xmlhttp.open("GET","canceldetailCollection?userId="+userId+"&courseId="+courseId,true);
		xmlhttp.send();
		xmlhttp.onreadystatechange=function(){
			if(xmlhttp.readyState==4 && xmlhttp.status==200){
				var res=xmlhttp.responseText;
				if(res=="ok"){
					alert("您以取消收藏！");
				}else if(res=="false"){
					alert("您取消收藏失败!");
				}
			}	
		}

	}
}

</script>
</head>
<body>

	<%@include file="header.jsp"%>

	<div class="container layout layout-margin-top">


		<div class="row">
			<div class="col-md-9 layout-body">


				<div class="content course-infobox">
					<div class="clearfix course-infobox-header">
						<h4 class="pull-left course-infobox-title">
							<span>${course.name}</span>
						</h4>
						<div class="pull-right course-infobox-follow">
							<span>收藏</span>
							<a>
							<c:if test="${isCollection=='fail'}">
								<span style="display: block;" id="star1"
									onclick="stare(star1,star2,'${uemail}',${courseId},${userId})">☆</span>
								<span style="display: none;" id="star2"
									onclick="starf(star1,star2,'${uemail}',${courseId},${userId})">★</span>
							</c:if>
							<c:if test="${isCollection=='ok'}">
								<span style="display: block;" id="star3"
									onclick="starf(star4,star3,'${uemail}',${courseId},${userId})">★</span>
								<span style="display: none;" id="star4"
									onclick="stare(star4,star3,'${uemail}',${courseId},${userId})">☆</span>
							</c:if>
							</a>
						</div>
					</div>
					<div class="clearfix course-infobox-body">
						<div class="sidebox1 mooc-teacher" border="0">
							<div class="sidebox-body mooc-content">
								<a href="/user/20406" target="_blank"> <img
									src="${course.photo }">
								</a>
								<div class="mooc-info">
									<div class="name">
										综合评分：<strong>${course.grade}</strong>
										&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 学习人数：<strong>${studypeople }</strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
										课程价格：<strong>￥${course.price}</strong> <input type="submit"
											id="fl" class="input8" value="加入课程"
											onclick="javascript:isJoin('${uemail}',${courseId},${userId},${uploaduser})" />
									</div>
								</div>
								<div class="mooc-extra-info">
									<div class="word long-paragraph">
										<p>课程简介：</p>
										<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;${course.courseInfo }</p>
									</div>
								</div>
							</div>
						</div>
					</div>

				</div>
				<div class="content">
					<ul class="nav nav-tabs" role="tablist">
						<li role="presentation"><a
							href="courseDetail?courseId=${courseId}">课程章结</a></li>

						<li role="presentation"><a
							href="coursecomment?courseId=${courseId}">课程评论</a></li>
					</ul>
					<div class="tab-content">

						<div role="tabpanel" class="tab-pane active" id="labs">

							<c:forEach items="${catalogList}" var="cl">
								<div class="lab-item ">
									<div>
										<img src="img/lab-not-ok.png">
									</div>
									<div>第${cl.catalogId}节</div>
									<div>${cl.catalogName}</div>
									<ul id="list">
										<c:forEach items="${cl.courseCatalogs}" var="ccl">
											<li>
												<div class="lab-item ">
													<div></div>
													<div>${ccl.catalogName}</div>
													<div class="pull-right lab-item-ctrl">
														<a class="btn btn-primary" href="">开始学习</a>
													</div>
												</div>
											</li>
										</c:forEach>
									</ul>
								</div>
							</c:forEach>



							<div class="pagination-container pagemiddle">
								<a class="wordstyle disabled"
									href="courseDetail?courseId=${courseId}&pageNum=1"> 首页 </a>
								&nbsp;&nbsp;&nbsp; <a class="wordstyle"
									href="courseDetail?courseId=${courseId}&pageNum=${pageCatalogList.prePageNum}">
									上一页 </a>&nbsp;&nbsp;&nbsp; <a class="wordstyle"
									href="courseDetail?courseId=${courseId}&pageNum=${pageCatalogList.nextPageNum}">
									下一页 </a>&nbsp;&nbsp;&nbsp; <a class="wordstyle"
									href="courseDetail?courseId=${courseId}&pageNum=${pageCatalogList.totalPageNum}">
									末页 </a>&nbsp;&nbsp;&nbsp;
							</div>



						</div>

					</div>
				</div>


			</div>
			<div class="col-md-3 layout-side">

				<div class="side-image side-image-pc">
					<img src="${course.photo }?imageView2/0/h/300">
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
								<strong>${uploadCourseUser.nickName}</strong>
							</div>

							<div class="courses">
								共发布过<strong>${uploadCourseCount}</strong>门课程
							</div>
						</div>
						<div class="mooc-extra-info">
							<div class="word long-paragraph">
								${uploadCourseUser.introduction}</div>
						</div>
					</div>
					<div class="sidebox-footer mooc-footer">
						<a href="information?userId=${uploaduser}" target="_blank">查看老师的所有课程 ></a>
					</div>
				</div>


				<!-- 此处展示老师的另外一些课程 -->
				<div class="wordstyle">
					<strong>类似课程</strong>
				</div>
				<c:forEach items="${mpc}" var="lc">
					<div class="col-md-14 col-sm-16  course">
						<a class="course-box"
							href="courseDetail?courseId=${lc.key.courseId}">
							<div class="course-img">

								<img alt="${lc.key.name}" src="${lc.key.photo}">

							</div>

							<div class="course-body">
								<span class="course-title">${lc.key.name}</span>
							</div>
							<div class="course-footer">
								<span class="course-per-num pull-left">${lc.value}</span>

							</div>
						</a>
					</div>
				</c:forEach>

			</div>
		</div>
	</div>
	<%@include file="footer.jsp"%>

</body>
</html>