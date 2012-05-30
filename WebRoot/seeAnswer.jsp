    <%@ page language="java" contentType="text/html;charset=GBK" pageEncoding="utf-8"%>   
    <%@ page import="org.jfree.chart.*,org.jfree.data.category.*,   
    org.jfree.chart.servlet.*,org.jfree.chart.plot.PlotOrientation,org.jfree.data.general.DatasetUtilities"%>   
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
	</head>
	
	<body> 
		<table background='image/xinzhibg1.jpg' width=850 height=506 align=center>
			<tr><td><table align=center>
	   		<tr>
	   			<td><a href="appraisal.do?action=subShowChart">详细得分图</a><br/>
	   				<a href="appraisal.do?action=showChart">总分情况</a>
	   			</td>
	   			
	   	   </tr>
			</table></td></tr>
		</table>
	</body>
</html>