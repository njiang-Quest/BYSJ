<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'MyJsp.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body topmargin=30>
  	<center>
  	<table cellspacing=20>
  		<tr><th>系统使用说明</th></tr>
  		<tr><td>&nbsp;</td></tr>
   		<tr><td>1、 管理员设置有权进行设置考评的人员</td></tr>
		<tr><td>2、考评员设置考评项目以及具体的考评项、打分规则、分值、考评时间， 被评人可否上传文档等基本信息。</td></tr>
		<tr><td>3、选择该考评项目要考评的人员或部门。</td></tr>		
		<tr><td>4、设置可以进行考评的人，有三种这种：全部人员，被考评人同部门人员，特殊人。<p/>		
		<tr><td>5、登录系统，投票人员投票打分，打份采取无记名方式进行，没有任何途径可以知道哪些个分是哪个人打的，<br/>&nbsp;&nbsp;但是记录该用户已进行评价。</td></tr>	
		<tr><td>6、用户进行打分后才可以查看本次的考评分析报告图表。</td></tr>	
		<tr><td>7、对考评分析图表可以打印、存档。</td></tr>	
	</table>
	</center>	
  </body>
</html>
