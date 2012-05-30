<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib uri="http://struts.apache.org/tags-logic" prefix="logic" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'appraisals.jsp' starting page</title>
    
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
    <center>
    	<form name=appsForm action="appraisal.do?action=getApps" method=post>
    	<table background='image/xinzhibg1.jpg' width=850 height=506 align=center>
    		<tr><td><table align=center>
    			<tr><th>考评列表</th></tr>
    			<tr><td>&nbsp;</td></tr>
    			<tr><td>
			  	<logic:notEmpty name="apps">  
			  		<logic:iterate id="app" name="apps" indexId="id">
				  		<a href="appraisal.do?action=getCurrApp&appid=${app.id }"style='text-decoration:none' >${app.title }</a>
				  		<c:if test="${app.status>0}">
				  			[<font color=green>${app.statusStr}</font>]
				  		</c:if>
				  		
				  		<c:if test="${app.status==0}">
				  			[<font color=red>${app.statusStr}</font>]
				  		</c:if>
				  		<br/><br/>
				  	</logic:iterate>
			  	</logic:notEmpty>
			  	</td></tr>
			  </table></td></tr>
			  
			  <tr><td>
			  		<logic:empty name="apps"> 
			  			没有考评信息
			  		</logic:empty>
			  </td></tr>
	  	</form>
    </center>
  </body>
</html>
