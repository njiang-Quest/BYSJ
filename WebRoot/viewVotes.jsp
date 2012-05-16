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
    <a href='javascript:showVotes()'>�鿴ͶƱ</a>
	  	<form name=votesForm action="vote.do?action=getVotes&visit=1" method=post>
		  	<div id=votes >
			  	<logic:notEmpty name="votes">  
			  		<logic:iterate id="vote" name="votes" indexId="id">
				  		<a href="vote.do?action=currVote&voteId=${vote.voteId }" style='text-decoration:none'>${vote.title }</a>
				  		<c:if test="${vote.status>0}">
				  			[<font color=green>${vote.strStatus}</font>]
				  		</c:if>
				  		
				  		<c:if test="${vote.status==0}">
				  			[<font color=red>${vote.strStatus}</font>]
				  		</c:if>
				  		<br/><br/>
				  	</logic:iterate>
			  	</logic:notEmpty>
		  	</div>
	  	</form>
  </body>
</html>
