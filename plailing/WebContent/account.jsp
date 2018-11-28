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
<title>account</title>
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
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <script type="text/javascript" src="js/jquery.min.js"></script>
    <title>打赏</title>
    <style type="text/css">
        .content{width:80%;margin:200px auto;}
                .hide_box{z-index:999;filter:alpha(opacity=50);background:#666;opacity: 0.5;-moz-opacity: 0.5;left:0;top:0;height:99%;width:100%;position:fixed;display:none;}
        .shang_box{width:540px;height:540px;padding:10px;background-color:#fff;border-radius:10px;position:fixed;z-index:1000;left:50%;top:50%;margin-left:-280px;margin-top:-280px;border:1px dotted #dedede;display:none;}
        .shang_box img{border:none;border-width:0;}
        .dashang{display:block;width:100px;margin:5px auto;height:25px;line-height:25px;padding:10px;background-color:#E74851;color:#fff;text-align:center;text-decoration:none;border-radius:10px;font-weight:bold;font-size:16px;transition: all 0.3s;}
        .dashang:hover{opacity:0.8;padding:15px;font-size:18px;}
        .shang_close{float:right;display:inline-block;}
                .shang_logo{display:block;text-align:center;margin:20px auto;}
        .shang_tit{width: 100%;height: 75px;text-align: center;line-height: 66px;color: #a3a3a3;font-size: 16px;background: url('img/cy-reward-title-bg.jpg');font-family: 'Microsoft YaHei';margin-top: 7px;margin-right:2px;}
        .shang_tit p{color:#a3a3a3;text-align:center;font-size:16px;}
        .shang_payimg{width:140px;padding:0px;border:6px solid #11aa8cb5;margin:0 auto;border-radius:3px;height:140px;}
        .shang_payimg img{display:block;text-align:center;width:129px;height:130px; }
        .pay_explain{text-align:center;margin:10px auto;font-size:12px;color:#545454;}
        .radiobox{width: 16px;height: 16px;background: url('img/radio2.jpg');display: block;float: left;margin-top: 5px;margin-right: 14px;}
        .checked .radiobox{background:url('img/radio1.jpg');}
        .shang_payselect{text-align:center;margin:0 auto;margin-top:40px;cursor:pointer;height:60px;width:280px;}
        .shang_payselect .pay_item{display:inline-block;margin-right:10px;float:left;}
        .shang_info{clear:both;}
		.shang_info p,.shang_info a{color:#C3C3C3;text-align:center;font-size:12px;text-decoration:none;line-height:2em;}

    </style>
</style>
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
					<a href="account.html" class="on">我的账户</a>
				</h1>
			</div>

			<div class="display">
				<div class="dqjf">
					当前余额：<font class="f_orange">200</font> 元
				</div>
				<div class="jflist">
					<div class="titlei">
						<div class="jfjl">
							<a href="#" class="hover">消费记录</a>
						</div>
					</div>
					<ul class="jfinfo">
						<li><span class="jfdate">2018-11-20</span> <span class="jfyt">消费</span>
							<span class="jfnum"><font class="f_green">+200</font></span> <span
							class="jfjg">交易成功</span> <span class="jfxx"><a href="#">课程名称</a></span>
						</li>
						<li><span class="jfdate">2018-11-20</span> <span class="jfyt">消费</span>
							<span class="jfnum"><font class="f_orange1">-200</font></span> <span
							class="jfjg">交易成功</span> <span class="jfxx"><a href="#">课程名称</a></span>
						</li>
						<li><span class="jfdate">2018-11-20</span> <span class="jfyt">消费</span>
							<span class="jfnum"><font class="f_green">+200</font></span> <span
							class="jfjg">交易成功</span> <span class="jfxx"><a href="#">课程名称</a></span>
						</li>
						<li><span class="jfdate">2018-11-20</span> <span class="jfyt">消费</span>
							<span class="jfnum"><font class="f_orange1">-200</font></span> <span
							class="jfjg">交易成功</span> <span class="jfxx"><a href="#">课程名称</a></span>
						</li>
					</ul>
					<div class="pagination-container pagemiddle">
						<a class="wordstyle" href=""><font size="2px"> 首页 </font></a>
						&nbsp;&nbsp;&nbsp; <a class="wordstyle" href=""><font
							size="2px"> 上一页 </font></a>&nbsp;&nbsp;&nbsp; <a class="wordstyle"
							href=""><font size="2px"> 下一页 </font></a>&nbsp;&nbsp;&nbsp; <a
							class="wordstyle" href=""><font size="2px"> 末页 </font></a>&nbsp;&nbsp;&nbsp;
					</div>
					<a href="javascript:void(0)" onClick="dashangToggle()"  title="打赏，支持一下"><input type="submit" value="充值" class="input8"/></a>

				</div>
			</div>
		</div>


	</div>
	<div class="clear" style="height: 53px;"></div>

	</div>
		<div class="hide_box"></div>
		<div class="shang_box">
			<a class="shang_close" href="javascript:void(0)"
				onClick="dashangToggle()" title="关闭"><img src="img/close.jpg"
				alt="取消" /></a>
			<div class="shang_tit">
				<p>感谢你购买本产品</p>
			</div>
			<div class="shang_payimg">
				<img src="img/alipayimg.jpg" alt="扫码支持" title="扫一扫" />
			</div>
			<div class="shang_payselect">
				<div class="pay_item checked" data-id="alipay">
					<span class="radiobox"></span> <span class="pay_logo"><img
						src="img/alipay.jpg" alt="支付宝" /></span>
				</div>
				<div class="pay_item" data-id="weipay">
					<span class="radiobox"></span> <span class="pay_logo"><img
						src="img/wechat.jpg" alt="微信" /></span>
				</div>
			</div>
			<div class="shang_info">
				<p>
					打开<span id="shang_pay_txt">支付宝</span>扫一扫，进行支付
				</p>
				<p>欢迎使用e享课堂</p>
			</div>
		</div>
	<script type="text/javascript">
		$(function() {
			$(".pay_item").click(
					function() {
						$(this).addClass('checked').siblings('.pay_item')
								.removeClass('checked');
						var dataid = $(this).attr('data-id');
						$(".shang_payimg img").attr("src",
								"img/" + dataid + "img.jpg");
						$("#shang_pay_txt").text(
								dataid == "alipay" ? "支付宝" : "微信");
					});
		});
		function dashangToggle() {
			$(".hide_box").fadeToggle();
			$(".shang_box").fadeToggle();
		}
	</script>

	<%@include file="footer.jsp"%>


</body>
</html>