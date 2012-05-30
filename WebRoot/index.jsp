<%@ page language="java" import="java.util.*" pageEncoding="GB2312"%>
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
    
    <title>网络考评系统---首页</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<link rel="shortcut icon" href="image/gif-0146.gif" type="image/x-icon"/>  
	<script language="javascript" type="text/javascript">
		function showVotes() {			
			if(document.getElementById('votes').style.display=='none') {
				//document.getElementById('votes').style.display='block';
				//document.votesForm.action="vote.do?action=getVotes&visit=1";
				//alert(document.votesForm.action)
 			    document.votesForm.submit();
 			    document.getElementById('votes').style.display='block';
			} else {
				document.getElementById('votes').style.display='none';
			}
		}
		
		/*function divStyle() {
			var str='<%=session.getAttribute("showDiv")%>';
    		//alert(str);
    		if(str == "1"){
    			document.getElementById('votes').style.display='block';
    		} else {
    			document.getElementById('votes').style.display='none';
    		}
		}*/
	</script>
  </head>
  
  <body leftmargin=200 rightmargin=200>
	  
	  	<p/>
	  	
	  	<a href='AddVote.jsp'>发起投票</a><p/>
	  	<a href="appraisal.jsp">设置考评</a><p/>
	  	
	  	<a href='javascript:showVotes()'>查看投票</a>
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
	  	<p/>
	  	
	  	<a href='appraisal.do?action=getApps'>查看考评</a>
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
	  	<a href="exportChart.do">图</a>
	  
  </body>
</html>
