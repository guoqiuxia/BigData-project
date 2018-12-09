<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
	<c:set var="ctx" value="${pageContext.request.contextPath}"/>
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
<title>upload2</title>

<link href="${ctx}/css/whir_common.css" rel="stylesheet" type="text/css" />
<link href="${ctx}/css/whir_grzx.css" rel="stylesheet" type="text/css" />

<link rel="shortcut icon" href="${ctx}/favicon.ico">
<link rel="stylesheet"
	href="${ctx}/static/font-awesome//4.7.0/css/font-awesome.min.css">
<link rel="stylesheet"
	href="${ctx}/static/highlight.js/9.8.0/monokai-sublime.min.css">
<link rel="stylesheet"
	href="${ctx}/app/css/libs/bootstrap/3.3.7/css/bootstrap.min.css">
<link rel="stylesheet" href="${ctx}/app/css/libs/katex/0.6.0/katex.min.css">
<link rel="stylesheet"
	href="${ctx}/app/css/libs/videojs/5.11.7/video-js.min.css">
<link rel="stylesheet" href="${ctx}/app/css/dest/styles.css?=2016121272249">

	<script type="text/javascript" src="${ctx}/js/jquery-1.7.2.min.js">	</script>
</head>
<body>
	<%@include file="header.jsp"%>
	<div class="clear"></div>
	<div class="subbox">
		<!--左侧部分-->
		<%@include file="left.jsp"%>
		<!--右侧部分-->
		<form action="${ctx}/upload/upload1" method="post" enctype="multipart/form-data">
		<div class="right840">
			<div class="title6">
				<h1>
					<a href="application.html" class="on">上传课程</a>
				</h1>
			</div>

			<div class="display">
				<div class="title12">
					<img src="${ctx}/img/scimg2.jpg" />
				</div>
				<div class="wsxx">
					<input type="file" name="file">
				</div>
				<div class="videoinfo">
					<div class="title13">
						<h1>文件信息：</h1>
					</div>
					<div class="left502">

							<table cellpadding="0" cellspacing="0" class="tab" height="580">
								<tr>
									<td style="width: 90px;"><font class="f_red">*</font>&nbsp;&nbsp;&nbsp;<b>课程名称:</b></td>
									<td> <input type="text" class="input4" name="name"
										style="width: 425px; height: 25px;" /></td>
								</tr>
								<tr>
									<td><font class="f_red">*</font>&nbsp;&nbsp;&nbsp;<b>课程简介:</b></td>
									<td><textarea name="textarea" class="input4" id="textarea"
											style="width: 425px; height: 119px;"placeholder="请输入100字以内" maxlength="100" onkeyup="this.value=this.value.substring(0, 100)"></textarea>
											<span id="text-count2" value="">0</span>/100字
											</td>
								</tr>
								<tr>
									<td><font class="f_red">*</font>&nbsp;&nbsp;&nbsp;<b>课程分类:</b></td>
									<td><table class="tab1" cellpadding="0" cellspacing="0">
											<tr >
												<td><select class="input7" style="color: #686868;" id="first" onchange="firstSel()" name="first">
													<option value="" ></option>
													<c:forEach items="${courseType }" var="a">
														<c:if test="${a.getCourseType()==null }">
															<option value="${a.getTypeId() }">${a.getTypeName() }</option>
																
														</c:if>
													</c:forEach>
													</select>
													<select class="input7"style="color: #686868;" id="second" name="second" >
														<option value="" ></option>
													</select>
												</td>

	
											</tr>

										</table></td>
								</tr>
								<tr>
									<td><font class="f_red">*</font>&nbsp;&nbsp;&nbsp;<b>文件目录:</b></td>
									<td><input type="text" class="input4" name="catalog"
										style="width: 425px; height: 25px;" /></td>
								</tr>
								<tr>
									<td><font class="f_red">*</font>&nbsp;&nbsp;&nbsp;<b>课程价格:</b></td>
									<td><input type="text" class="input4" name="price"
										style="width: 125px; height: 25px;" /></td>
								</tr>

								<tr>
									<td><font class="f_red">*</font>&nbsp;&nbsp;&nbsp;<b>课程封面:</b></td>
									<td><input type="file" value="上传" name="image"/> 请上传格式为.jpg .png
										.gif小于5M的图片</td>
								</tr>

								<tr>

									<td></td>
									<td><input type="submit" value="保存" class="input8" /></td>
								</tr>

							</table>

					</div>
				</div>
			</div>
		</div>
		</form>
	</div>
	<div class="clear"></div>
	</div>
	<%@include file="footer.jsp"%>
	<script type="text/javascript">
	
												function firstSel() {//如果第一个下拉列表的值改变则调用此方法
													console.log($("#first option:selected").val());
													var TypeId = $("#first option:selected").val();//得到第一个下拉列表的值
													if(TypeId!=null && "" != TypeId&& -1 != TypeId){
															//通过ajax传入后台，把orderTypeName数据传到后端
														$.post("${ctx}/upload/findSecondType",{TypeId:TypeId},function(data){
																var res = $.parseJSON(data);//把后台传回的json数据解析
																var option;
																console.log(res);
																$.each(res,function(i,n){//循环，i为下标从0开始，n为集合中对应的第i个对象
																	option += "<option value='"+n[0]+"'>"+n[1]+"</option>"
																});
																$("#second").html(option);//将循环拼接的字符串插入第二个下拉列表
																$("#second").show();//把第二个下拉列表展示
														});
													
													}else {
														$("#second").hide();
													}
												};
												window.onload = function() {

											        $('#textarea').keyup(function() {
											        //    var val=$('#note2').val();
											        //    var len=val.length;
											        var len=this.value.length
											                    $('#text-count2').text(len);

											        })
											    }
									</script>
</body>

</html>