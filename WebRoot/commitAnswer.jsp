<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'commitAnswer.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>
    <form name='app' action='appraisal.do?action=commit_appAnswer' method='post'"> 
    	<table background='image/xinzhibg1.jpg' width=850 height=506 align=center>
    		<tr><td>
    			<table align=center>
    				 
    				 <tr><td>您已经填写完考评表,现在可以提交了<input type=submit value="提  交"></td></tr>
    			</table>
    		</td></tr>
    	</table>
    </form>
  </body>
</html>
