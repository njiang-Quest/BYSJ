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
    
    <title>网络考评</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<link rel="shortcut icon" href="image/gif-0146.gif" type="image/x-icon"/>  

	<style type="text/css">
		body{
			margin-right:200px;
			margin-left:200px;
		}
		
		.sss{
			 margin-left:200px; 
			 margin-top:400px; 
			 padding-left:30px;
			 padding-top:40px;
			 padding-right:30px;
			 padding-bottom:40px;
			 border-width:20px;
	    }
	</style>
	
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
			%>
					window.open( 'uploadFile.jsp','_self');
			<%
				} 
				else {
			%>
				alert("The upload time was over, you couldn't upload any files now..");
			<%}%>
		}
	</script>
  </head>
  
  <body >
  
	  	<table width=100% background='image/lightblue.jpg'>
	  		  <tr><td align = right> Welcome ${currUser.name }(${currUser.id})&nbsp;&nbsp;<a href='Login.jsp'>sign out</a>&nbsp;&nbsp;</td></tr>
	  	</table>
	  	<p/>&nbsp;
	  <table  border="2" align=center width=860><tr><td class='sss'>	
	  	<table align=center>
	  		<tr><td>参与考评人:</td></tr>
	  		<c:forEach var='kaoping' items="${currApp.beipings}">
		  		<tr>
		  			<td>&nbsp;</td>
						<td><c:if test="${kaoping==currUser.name}">
    						<img src="image/gif-0146.gif" width=15 onclick="upload()">
    					</c:if>
    					<c:if test="${kaoping!=currUser.name}">
    						&nbsp;&nbsp;
    					</c:if>
		  				${kaoping }
		  				</td>
		  		</tr>
		  	</c:forEach>
	  	</table>
    	 
    	<form name='app' action='appraisal.do?action=do_apps' method='post' > 
    	<input type=hidden value=${currApp.id } id='appId'> 
    	<table align=center border=1>
    		<tr ><td colspan=2 align=center  width='600'><font size=5 face='楷体_GB2312'>考&nbsp;&nbsp;评&nbsp;&nbsp;表</font></td></tr>
    		<tr><td colspan=2><hr/></td></tr>
    		<tr><td colspan=2>&nbsp;&nbsp;&nbsp;&nbsp;${currApp.context }</td></tr>
    		<tr><td colspan=2>&nbsp;</td></tr>
    		<tr>
    			<td>考评方案:${currApp.title }</td>
    			<td>考评类型:${currApp.type}</td>
    		</tr>
    		
    		<tr><td colspan=2>考评内容</td></tr>
    		
    		<c:forEach var='option' items="${currApp.options}">
    		<tr>
    			<td colspan=2>${option.option }:&nbsp;&nbsp;
    			<c:forEach var='e' items="${option.es}">
    				<input type=radio name="score${option}">${e}&nbsp;
    			</c:forEach></td>
    		</tr>
    		</c:forEach>
    		
    		<tr><td colspan=2>综合评价:
    			<input type=text name='zonghe' size=80></td>
    		</tr>	
    	    <tr><td></td></tr>
   		</table></form>
   	</td></tr></table>
  </body>
</html>
