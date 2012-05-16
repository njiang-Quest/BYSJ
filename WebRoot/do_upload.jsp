<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@ page import='com.jspsmart.upload.*' %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>do_upload page</title>
    
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
	  <%
	  		SmartUpload su = new SmartUpload();	
	  		su.initialize(pageContext);
	  		su.setAllowedFilesList("doc,docx,pdf,txt,sql,log");
	  	    su.upload();
	  		int count = su.save("/upload",su.SAVE_VIRTUAL);
	  		String file = su.getFiles().getFile(0).getFileName();
	  		session.setAttribute("file",file);
	   %>
	   <jsp:forward page='vote.do?action=add_vote_affix&path=${file}&affixType=${affixType }'></jsp:forward>
	  
  </body>
</html>
