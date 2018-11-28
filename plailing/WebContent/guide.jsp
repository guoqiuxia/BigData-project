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
  <meta name="csrf-token" content="1483780974##87f89328c5616669f00302a263fe9061bb852818">
	
		
      <title>guide</title>   

	<link rel="shortcut icon" href="favicon.ico">
	<link rel="stylesheet" href="static/font-awesome//4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="static/highlight.js/9.8.0/monokai-sublime.min.css">
    <link rel="stylesheet" href="app/css/libs/bootstrap/3.3.7/css/bootstrap.min.css">
    <link rel="stylesheet" href="app/css/libs/katex/0.6.0/katex.min.css">
    <link rel="stylesheet" href="app/css/libs/videojs/5.11.7/video-js.min.css">
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
			font-size:14px;
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
        .content {
            
        }
        .content .tab-content .details-box p{
            margin-bottom: 30px;
        }
        .content .tab-content .details-box .row img{
            width: 830px;
        }
        .en-footer {
            padding: 30px;
            text-align: center;
            font-size: 14px;
        }
    </style>

</head>
<body>

<%@include file="header.jsp"%>
<div class="container layout layout-margin-top">

    <div class="row">
        <div class="col-md-9 layout-body">
            
    <div class="content" style="padding:0px">
        <div class="path-description" style="margin:0px">
            <div class="path-desc-top clearfix" style="background: url('img/1471513740139.png') no-repeat;background-size: cover;">
                <div class="name-total-box clearfix">
                    <div class="col-md-6 col-sm-6 col-md-offset-1 path-name">
                        <h4>新手入门</h4>
                    </div>
                </div>
                <div class="col-md-10 col-md-offset-1 path-desc-text">本网站不仅可以学习，还可以通过以下步骤，上传您课程</div>
            </div>
            
        </div>
    </div>
    <div class="content">
 
        <div class="tab-content">
            <div role="tabpanel" class="tab-pane path-details active" id="path-details">
                <div class="details-box">    
       
                    
                        <div class="clearfix text-center path-title-box">
                            <span class="line hidden-xs"></span>
                            <span>第一步</span>
                            <span class="line hidden-xs"></span>
                        </div>
                        <p>*****************************</p>
                        <div class="row">
                        <img src="img/upload.png" style="height:150px ; width:200px">   
                        </div>
                    
                        <div class="clearfix text-center path-title-box">
                            <span class="line hidden-xs"></span>
                            <span>第二步</span>
                            <span class="line hidden-xs"></span>
                        </div>
                        <p>****************************</p>
                        <div class="row">
                        <img src="img/upload.png" style="height:150px ; width:200px">                             
                        </div>
                    
                        <div class="clearfix text-center path-title-box">
                            <span class="line hidden-xs"></span>
                            <span>第三步</span>
                            <span class="line hidden-xs"></span>
                        </div>
                        <p>*****************************</p>
                        <div class="row">
                        <img src="img/upload.png" style="height:150px ; width:200px">                     
                        </div>
                </div>
            </div>
         
        </div>
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