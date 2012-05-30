<%@ page language="java" import="java.util.*,java.text.SimpleDateFormat" pageEncoding="GB2312"%>
<%@page import="com.bysj.bean.AppraisalBean;"%>
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
    
    <title>My JSP 'appBeipingren.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<script type="text/javascript">
		function upload() {
			<% 
				AppraisalBean app = (AppraisalBean)session.getAttribute("currApp");
				String aendDate = app.getAEndDate()	;
				SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");  
				Date date = new Date();
				String dateStr = sdf.format(date); 
				//System.out.println(aendDate);    
				//System.out.println(dateStr);         
				if(dateStr.compareTo(aendDate) <=0){
					session.setAttribute("affixType", "app");
			%>
					window.open( 'uploadFile.jsp','_self');
			<%
				} 
				else {
			%>
				alert("The upload time was over, you couldn't upload any files now..");
			<%}%>
		}
		
		function downloadpage() {
			window.top.main.location.href="downloadFile.jsp" ;
		}
		
		function seeion() {
			window.top.main.location.href="seeAnswer.jsp";
		}
	</script>
  </head>
  
  <body>
    	<form name='app' action='appraisal.do?action=commit_appAnswer' method='post' onsubmit="return mycheck()"> 
	  	<table background='image/xinzhibg1.jpg' width=850 height=506 align=center>
	  		<tr><td><table  align=center width=500>
	  		<tr><th colspan=5>参与考评人</th></tr>
	  		<tr><td>&nbsp;</td>
	  		<tr><th>&nbsp;</th>
	  		<th align=left>姓名</th>
		  	<th align=left>部门</th>
		  	<th align=left>职位</th>
		 	<th align=left>性别</th></tr>
		  	
		  	<c:forEach var='kaoping' items="${beipings}">
		  		<tr>
					<td>
						<c:if test="${kaoping.name==currUser.name && currApp.allowAffix=='1'}">
    						<img src="image/gif-0146.gif" width=15 onclick="upload()">
    					</c:if>
    					<c:if test="${kaoping.name!=currUser.name}">
    						&nbsp;&nbsp;
    					</c:if>
		  			</td>
		  			<td>${kaoping.name }</td>
		  			<td>${kaoping.dept }</td>
		  			<td>${kaoping.obligtion }</td>
		  			<td>${kaoping.gerder }</td>
		  		</tr>
		  		
		  		
		  		
		  	</c:forEach>
		  	
		  	
		  	<tr><td>&nbsp;</td></tr>
		  	<tr><td colspan=5><input type=button value="进入文件下载页面" onclick="downloadpage()">
		  		<c:if test="${yiping=='true'}">
		  			<input type=button value="查看结果" onclick='seeion()'>
		  		</c:if>
		  		
		  		<c:if test="${yiping==null || yiping==''}">
		  			<input type=button value="查看结果" disabled/>
		  		</c:if>
		  		<c:if test="${(yiping==null || yiping=='') && currApp.status==1}">
		  			<input type=button value="进行考评" onclick='anser()'>
		  		</c:if>
		  	
		  		<c:if test="${(yiping=='true') || currApp.status==0}">
		  			<input type=button value="进行考评" disabled>
		  		</c:if>
		  	
		  	</td></tr>
		  	
		  </table>
		 </td></tr></table>
		 
		 
		</form>
  </body>
  <script>
  	function anser() {
  		window.top.main.location.href="do_appraisal.jsp";
  	}
  </script>
</html>
