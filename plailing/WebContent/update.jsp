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
<title>update</title>
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

<script src="js/jquery.js"></script>
<script src="js/jquery.validate.min.js"></script>
<script src="js/messages_zh.js"></script>
<script type="text/javascript">
$.validator.setDefaults({
    submitHandler: function() {
      alert("提交事件!");
    }
});
$().ready(function() {
// 在键盘按下并释放及提交后验证提交表单
  $("#signupForm").validate({
	    rules: {
	      nickname: {
	        required: true,
	        minlength: 2
	      },
	      email: {
		        required: true,
		        email: true
		  },
	      password: {
	        required: true,
	        minlength: 6
	      },
	      confirm_password: {
	        required: true,
	        minlength: 6,
	        equalTo: "#password"
	      },
	      "topic[]": {
	        required: "#newsletter:checked",
	        minlength: 2
	      },
	      agree: "required"
	    },
	    messages: {
	      nickname: {
	        required: "请输入用户名昵称",
	        minlength: "用户名必需由两个字母组成"
	      },
	      password: {
	        required: "请输入密码",
	        minlength: "密码长度不能小于 6 个字母"
	      },
	      confirm_password: {
	        required: "请输入密码",
	        minlength: "密码长度不能小于 6 个字母",
	        equalTo: "两次密码输入不一致"
	      },
	      email: "请输入一个正确的邮箱",
	    }
	});
});
function fileChange(target){
	var imgName = document.all.up_file.value;
	if(imgName == ''){  
		document.all.submit_upload.disabled=true; 
	    alert("请选择需要上传的文件!");  
	    return; 
	} else {   
        idx = imgName.lastIndexOf(".");   
        if (idx != -1){   
            ext = imgName.substr(idx+1).toUpperCase();   
            ext = ext.toLowerCase( ); 
           // alert("ext="+ext);
            if (ext != 'jpg' && ext != 'png' && ext != 'jpeg' && ext != 'gif'){
	        	document.all.submit_upload.disabled=true;   
	            alert("只能上传.jpg  .png  .jpeg  .gif类型的文件!"); 
	            return;  
	        }   
	    } else {  
	    	document.all.submit_upload.disabled=true; 
	        alert("只能上传.jpg  .png  .jpeg  .gif类型的文件!"); 
	        return;
	    }   
	}
	//检测上传文件的大小        
	var isIE = /msie/i.test(navigator.userAgent) && !window.opera;  
	var fileSize = 0;           
    if (isIE && !target.files){       
        var filePath = target.value;       
        var fileSystem = new ActiveXObject("Scripting.FileSystemObject");          
        var file = fileSystem.GetFile (filePath);       
	        fileSize = file.Size;      
	} else {      
	    fileSize = target.files[0].size;       
	}     
	var size = fileSize / 1024*1024;   
	if(size>(1024*200)){    
	 	document.all.submit_upload.disabled=true;
	    alert("文件大小不能超过200KB");   
	}else{
	  	document.all.submit_upload.disabled=false;
	}        
}
</script>
<style type="text/css">
.error{
	color:#4EEE94;
}
</style>
</head>
<body>

	<%@include file="header1.jsp"%>
	
	<div class="clear"></div>
	<!--container-->
	<div class="subbox">
		<!-- 左侧部分 -->
		<%@include file="left.jsp"%>
		<!-- 右侧部分 -->
		<div class="right840">
			<div class="title6">
				<h1>
					<a href="information.jsp">个人信息</a>
				</h1>
				<h1>
					<a href="update.jsp" class="on">修改信息</a>
				</h1>
			</div>
			<div class="display">
				<form class="cmxform" id="signupForm" action="post">
					<table width="840" height="900" align="center" cellspacing="0"
						cellpadding="0" class="tab">
						<tr>
							<td><font class="f_red">*</font>&nbsp;&nbsp;&nbsp;<b>昵称:</b></td>
							<td>&nbsp;&nbsp;&nbsp;
								<input id="nickname" type="text" name="nickname" value="小1$}">&nbsp;&nbsp;&nbsp;
							</td>
						</tr>
						<tr>
							<td><font class="f_red">*</font>&nbsp;&nbsp;&nbsp;<b>邮箱:</b></td>
							<td>&nbsp;&nbsp;&nbsp;
								<input id="email" type="email" name="email" value="12345@qq.com $ }">&nbsp;&nbsp;&nbsp;
							</td>
						</tr>
						<tr>
							<td><font class="f_red">*</font>&nbsp;&nbsp;&nbsp;<b>新密码:</b></td>
							<td>&nbsp;&nbsp;&nbsp;
								<input id="password" type="password" name="password" >
							</td>
						</tr>
						<tr>
							<td><font class="f_red">*</font>&nbsp;&nbsp;&nbsp;<b>确认密码:</b></td>
							<td>&nbsp;&nbsp;&nbsp;
								<input id="confirm_password" type="password" name="confirm_password" >
							</td>
						</tr>
						<tr>
							<td><font class="f_red">*</font>&nbsp;&nbsp;&nbsp;<b>头像:</b></td>
							<td>&nbsp;&nbsp;&nbsp;
								<input id="up_file" type="file" name="up_file" onchange="fileChange(this);">
							</td>
						</tr>
						<tr>
							<td><font class="f_red">*</font>&nbsp;&nbsp;&nbsp;<b>性别:</b></td>
							<td>&nbsp;&nbsp;&nbsp;
								<input id="r1" type="radio" value="0" name="gender" /> 男 
								<input id="r2" type="radio" value="1" name="gender" /> 女
							</td>
						</tr>
						<tr>
							<td><font class="f_red">*</font>&nbsp;&nbsp;&nbsp;<b>所在地:</b></td>
							<td>&nbsp;&nbsp;&nbsp; 
								<select class="input5">
									<option>选择省份</option>
								</select> &nbsp; 
								<select class="input5">
									<option>选择市</option>
								</select> &nbsp; 
								<select class="input5">
									<option>选择区/县</option>
								</select>
							</td>
						</tr>
						<tr>
							<td><font class="f_red">*</font>&nbsp;&nbsp;&nbsp;<b>出生日期:</b></td>
							<td>&nbsp;&nbsp;&nbsp; 
								<input type="date" />
							</td>
						</tr>
						<tr>
							<td><font class="f_red">*</font>&nbsp;&nbsp;&nbsp;<b>手机:</b></td>
							<td>&nbsp;&nbsp;&nbsp; 
								<input type="text" class="input1" name="" /> &nbsp;&nbsp;&nbsp;
								<font class="f_red">*</font>&nbsp;&nbsp;&nbsp;
							</td>
						</tr>
						<tr>
							<td><font class="f_red">*</font>&nbsp;&nbsp;&nbsp;<b>身份证号:</b></td>
							<td>&nbsp;&nbsp;&nbsp; <input type="text" class="input1"
								name="" /> &nbsp;&nbsp;&nbsp;<font class="f_red">*</font>&nbsp;&nbsp;&nbsp;
							</td>
						</tr>
						<tr>
							<td><font class="f_red">*</font>&nbsp;&nbsp;&nbsp;<b>学校:</b></td>
							<td>&nbsp;&nbsp;&nbsp; <input type="text" class="input1"
								name="" /> &nbsp;&nbsp;&nbsp;<font class="f_red">*</font>&nbsp;&nbsp;&nbsp;
							</td>
						</tr>
						<tr>
							<td><font class="f_red">*</font>&nbsp;&nbsp;&nbsp;<b>专业:</b></td>
							<td>&nbsp;&nbsp;&nbsp; <input type="text" class="input1"
								name="" /> &nbsp;&nbsp;&nbsp;<font class="f_red">*</font>&nbsp;&nbsp;&nbsp;
							</td>
						</tr>
						<%--<tr>兴趣爱好在数据库中没有这个列，这里暂时注释
							<td>&nbsp;&nbsp;&nbsp;<b>兴趣爱好:</b></td>
							<td>&nbsp;&nbsp;&nbsp; <textarea name="textarea"
									class="input4" style="width: 430px; height: 130px;"></textarea></td>
						</tr> --%>
						<tr>
							<td>&nbsp;&nbsp;&nbsp;<b>个人介绍:</b></td>
							<td>&nbsp;&nbsp;&nbsp; <textarea name="textarea"
									class="input4" style="width: 430px; height: 130px;"></textarea></td>
						</tr>

						<tr>
							<td></td>
							<td colspan="2">&nbsp;&nbsp;&nbsp; <input type="submit"
								value="保存信息" class="btn1" /> &nbsp;&nbsp;&nbsp; <input
								type="reset" value="取消" class="btn4" /></td>
						</tr>
					</table>
				</form>
			</div>
		</div>
	</div>
	<div class="clear"></div>


	</div>

	<%@include file="footer.jsp"%>
</body>
</html>