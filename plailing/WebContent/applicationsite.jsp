<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
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
<title>application</title>
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





<script type="text/javascript" src="static/jquery/2.2.4/jquery.min.js"></script>
<script type="text/javascript">
	function applicationsite(){
		var sitetype=document.getElementById("sitetype").value;
		var usetime=document.getElementById("usetime").value;
		var uselang=document.getElementById("uselang").value;
		var xmlhttp;
		if(window.XMLHttpRequest){
			xmlhttp=new XMLHttpRequest();
		}else{
			xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
		}
		xmlhttp.open("GET","applicationSite?sitetype="+sitetype+"&usetime="+usetime+"&uselang="+uselang,true);
		xmlhttp.send();
		xmlhttp.onreadystatechange=function(){
			if(xmlhttp.readyState==4 && xmlhttp.status==200){
				var res=xmlhttp.responseText;
				if(res=="ok"){
					console.log(1)
					alert("您的申请提交成功，请等候消息！");
					document.getElementById("sitetype").value="";
					document.getElementById("usetime").value="";
					document.getElementById("uselang").value="";
				}else if(res=="userTimefail"){
					console.log(2)
					alert("您的申请提交失败，请查看您的使用时间是否填写有误！");
				}else if(res=="warn"){
					console.log(3)
					alert("您的申请提交成功，由于天数小于两天，成功性较低，请耐心等候消息！");
					document.getElementById("sitetype").value="";
					document.getElementById("usetime").value="";
					document.getElementById("uselang").value="";
				}
				 else if(res=="userlangfail"){
					console.log(4)
					alert("您的申请提交失败，请查看您的使用时长是否填写有误！");
				}else if(res=="fail"){
					console.log(5)
					alert("后台出现错误，请重新填写！");
				} 
			}
		}
	}
</script>

</head>
<body>

	<%@include file="header.jsp"%>
	<div class="clear"></div>
	<div class="subbox">
		<!--左侧部分-->
		<%@include file="left.jsp"%>
		<!--右侧部分-->
		<div class="right840">
			<div class="title6">
				<h1>
					<a href="application.jsp" class="on">申请场地</a>
				</h1>
			</div>

			<div class="display">
				<div class="videoinfo1">
					<div class="left502">
						<form class="wordstyle">
							<font class="f_red">*</font>&nbsp;&nbsp;&nbsp;<b>场地类型:</b> <select
							id="sitetype"	name="sitetype" style="width: 325px; height: 25px;">
								<option value="公教楼">公教楼</option>
								<option value="四方广场">四方广场</option>
								<option value="风雨操场">风雨操场</option>
								<option value="图书馆报告厅">图书馆报告厅</option>
								<option value="美设报告厅">美设报告厅</option>
								<option value="篮球场">篮球场</option>
							</select></br>
							</br>
							</br> <font class="f_red">*</font>&nbsp;&nbsp;&nbsp;<b>使用时间:</b> <input
								type="datetime-local" name="usetime" id="usetime"></br>
								<font size="2px">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
								&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;填写的时间应该是当前时间的两天以后</font></br>
							</br>
							</br> <font class="f_red">*</font>&nbsp;&nbsp;&nbsp;<b>使用时长:</b> <input
								type="text" name="uselang" id="uselang"></br>
								<font size="2px">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
								&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;使用的时间应该在0-4小时之间</font></br>
							</br>
							</br> <input type="button" value="申请场地" class="input8" onclick="applicationsite()"/>
						</form>
					</div>
				</div>
			</div>


		</div>
		<div class="clear" style="height: 38px;"></div>
		</div>
		<%@include file="footer.jsp"%>
</body>
</html>