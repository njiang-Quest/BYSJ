<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
    <title>go</title>
</head>

<body>
<%
	//out.print("ggggggggggg");
   String url=(String)session.getAttribute("url");//"FtpUserManager.html";
  // out.write("<script>window.top.left.location.href=\\menu.jsp\\;"+"</script>");
   //out.write("<script>window.top.main.location.href=\""+url+"\";</script>");
   
    out.write("<script>window.top.left.location.href=\"menu.jsp\";");
   out.write("window.top.main.location.href=\""+url+"\";</script>");
   
%>
</body>
</html>

