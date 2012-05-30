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
    
    <title>My JSP 'uploadFile.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<link rel="shortcut icon" href="image/gif-0146.gif" type="image/x-icon"/>  
	<script>
		function downloadf() {
			
		}
	</script>
  </head>
  
  <body>
  <center>
  		
    	<table background='image/xinzhibg1.jpg' width=850 height=508 >
    		
    		<tr><td><table align=center width=450>
    		<tr><td colspan=3 align=center><font face="黑体" size=5>下载文件列表</font></td></tr>
    		  		
    		<logic:notEmpty name="files"> 
	    		<tr><td>&nbsp;</td></tr>
	    		<tr>
	    			<th>文件</th>
	    			<th>上传者</th>
	    			<th>下载</th>
	    		</tr>   
		  		<logic:iterate id="file" name="files" indexId="id">
			  		<tr>
			  			<td align=center>${file.fname }</td>
			  			<td align=center>${file.owner }</td>
			  			<td align=center><a href = "do_download.jsp?filename=${file.fname }">下载</a></td>
			  		</tr>
			  	</logic:iterate>
			</logic:notEmpty>
    		
    		<logic:empty name="files">
    			<tr><td colspan=3>还没有被评人上传文件</td></tr>
    		</logic:empty>
    		</table></td></tr>
    	</table>
    </center>
  </body>
</html>
