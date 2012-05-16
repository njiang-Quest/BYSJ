<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'viewApps.jsp' starting page</title>
    
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
    <a href='appraisal.do?action=getApps'>²é¿´¿¼ÆÀ</a>
	  	<form name=appsForm action="appraisal.do?action=getApps" method=post>
		  	<div id=apps>
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
		  	</div>
	  	</form>
  </body>
</html>
