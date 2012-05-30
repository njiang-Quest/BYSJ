<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'exportFileName.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

	<script>
		function exp(){
			var filename = document.getElementById("filename").value;
			if(filename==""){alert("要填写文件保存的路径")}
			else{
				window.returnValue=document.getElementById("filename").value;
				window.close();
			}
		}
		
	</script>
  </head>
  
  <body topmargin=50>
    <center>
    	<p/><p>
    	导出到:<input type=text id="filename" size=40><input type=button value="导出" onclick = "exp()"><br/>
    	<font color='gray'>要填写完整的path</font>
    </center>
  </body>
</html>
