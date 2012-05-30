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
    
    <title>My JSP 'votes.jsp' starting page</title>
    
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
    	<form name=votesForm action="vote.do?action=getVotes&visit=1" method=post>
    	<table background='image/xinzhibg1.jpg' width=850 height=506 align=center>
    		
    		<tr><td><table align=center cellspacing=20>
    		<tr><th>Í¶Æ±ÁÐ±í</th></tr>
    		<tr><td>&nbsp;</td></tr>
			  	<logic:notEmpty name="votes">  
			  		<logic:iterate id="vote" name="votes" indexId="id">
				  		<tr><td>
				  		<a href="vote.do?action=currVote&voteId=${vote.voteId }" style='text-decoration:none'>${vote.title }</a>
				  		<c:if test="${vote.status>0}">
				  			[<font color=green>${vote.strStatus}</font>]
				  		</c:if>
				  	
				  		<c:if test="${vote.status==0}">
				  			[<font color=red>${vote.strStatus}</font>]
				  		</c:if>
				  		</td></tr>
				  	</logic:iterate>
			  	</logic:notEmpty>
			 </table>
			 </td></tr>
			 </table>
	  	</form>
    </center>
  </body>
</html>
