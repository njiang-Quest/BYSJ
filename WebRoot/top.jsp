<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'top.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  <style type="text/css">
div,h1,h2,h3,h4,p,form,label,input,textarea,img,span{margin:0;padding:0;}ul,li{list-style:none;padding:0;margin:0;}img{border:none;}
.csc_top{width:100%;height:45px;margin:0 auto;position:relative;z-index:101;}
.slideMenu{height:38px;}
li.current a{color:#00b5f7;cursor:pointer;}
li.current a:hover{color:#00b5f7;cursor:pointer;}
.lavaLampWithImage3 li a:hover,.lavaLampWithImage3 li a:active{border:none;color:#00B5F7;text-decoration:none;}
.lavaLampWithImage3 .sep{padding-top:13px;font-size:10px;color:#aeadad;float:left;height:20px;border-top:none;}
.lavaLampWithImage3{
	position:relative;
	height:28px;
	float:left;
	width:500px;
}
.lavaLampWithImage3 .current{color:#008ace;}
.lavaLampWithImage3 .current a{color:#008ace;}
.lavaLampWithImage3 li{float:left;list-style:none;padding-bottom:11px;}
.lavaLampWithImage3 li.back{background:url(images1/b_slider.gif) center bottom no-repeat;width:120px;height:28px;z-index:8;position:absolute;}
.lavaLampWithImage3 li a{font:bold 14px arial;text-decoration:none;color:#303030;outline:none;text-align:center;top:6px;letter-spacing:0;z-index:10;display:block;float:left;height:28px;position:relative;overflow:hidden;padding:5px 20px 0 17px;font-family:"Microsoft Yahei",Arial,Helvetica,sans-serif,"微软雅黑";font-weight:normal;font-size:13px;}
body{
	margin:0;
	width:100%;
	height:90px;
	background:#3a6592 url(images/top_bg.png) repeat-x bottom;
	background-image: url();
	background-color: #31529C;
}
img{
	border:none;
}
#logo{
	width:265px;
	height:34px;


	float:left;
}
#title{
	width:100%;
	height:34px;
	
	float:right;
	background:url(images1/management_r1_c2.gif) repeat-x;
}
#topbar{
	width:100%;
	overflow-x:hidden;
	overflow-y:hidden;
	height:121px;
	float:left;
	background:url(images1/logobg.gif) repeat-x;
}
#topbar0{
	width:100%;
	height:34px;
	float:left;
	
}
#topbarl{
	width:100%;
	height:121px;
	float:left;
	background:url(images1/logo.gif) no-repeat top left;
}
#topbarm{ bottom: 0px;
			width:100%;
	height:50px;
}
#topbarr1{
	margin-left:190px;
	width:25%;
	height:20px;
	float:left;
margin-top:100px;
	bottom:0px;
	
}
#topbarr{

	width:56%;
	height:121px;
	float:right;
	padding-right:10px;
	background:url(images1/logoright.gif) no-repeat top right;
}
a.barrbut{
	width:60px;
	height:30px;
	line-height:30px;
	padding-top:70px;
	font-size:24px;
	text-align:center;
	text-decoration:none;
	color:#3a6592;
	float:left;
	cursor:pointer;
}
a.barrbut:hover{
	color:#fff;
}
#t{
	width:265px;
	height:34px;
	float:left;
	padding-top:6px;
	font-family: "黑体";
	font-style: italic;
	font-weight: bold;
	color: #FFFFFF;
	font-size: 14px;
}
#body{width:1366px;
height:auto;
overflow-x:hidden;
}
#t1{
		width:265px;
	height:34px;
	float:right;
	padding-top:6px;
	font-family: "黑体";
	color: #FFFFFF;
	font-size: 14px;
}
#t2{width:300px;
	height:auto;
	float:right;
	padding-top:62px;
	color: #FFFFFF;
	
	font-size:12px;
}
.STYLE2 {
	font-size: 14px;
	color: #FFFFFF;
}
.STYLE3 {color: #FF0000}
</style>
</head>

<body id="body">

<div id="topbar">
	<div id="topbarl"> <div class="STYLE2" id="topbarr1" >Welcome ${currUser.name }(${currUser.id})</div>
	  <div id="topbarr">
		
	</div>
  </div>
</div>
</body>
</html>
