<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'uploadSuccess.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<link rel="shortcut icon" href="image/gif-0146.gif" type="image/x-icon"/>  
  </head>
  
  <body>
  <table background='image/xinzhibg1.jpg' width=850 height=508 >
  		<tr><td><table align=center>
  			<tr><td>�ļ�&nbsp; <font face="����">${file }</font> &nbsp; �ϴ��ɹ� 
  				<a href="uploadFile.jsp" target="main">�����ϴ�</a>
  			</td></tr>
  		</table></td></tr>
   </table>
  </body>
</html>
