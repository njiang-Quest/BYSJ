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
	
	<%
		DefaultCategoryDataset dataset = new DefaultCategoryDataset();
		dataset.addValue(300,"dd","111");
		dataset.addValue(500,"dd","222");
		dataset.addValue(160,"dd","333");
		JFreeChart chart = ChartFactory.createBarChart3D("测试","名称","数量", dataset, PlotOrientation.VERTICAL,false,false,false);
		String filename = ServletUtilities.saveChartAsJPEG(chart,550,250,null,session);
		String graphURL = request.getContextPath()+"/servlet/DisplayChart?filename="+filename;
	 %>
	 <img src="<%= graphURL %>" width=500 height=300 border=0 usemap="#<%=filename %>">
	</body>
</html>