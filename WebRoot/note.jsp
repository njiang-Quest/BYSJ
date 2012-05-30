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
    
    <title>My JSP 'note.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<style type="text/css">
	a {
	 text-decoration:none;
	 color:black
	}
	</style>
  </head>
  
  <body>
    
    <table background='image/notice.jpg' align=center>
  	<tr><td width=10%>&nbsp;</td>
  	<td align=center>
  		
	  	<logic:notEmpty name="messages">  
	  	<MARQUEE scrollAmount=2 direction='up' onMouseOver=this.stop(); onMouseOut=this.start();> 
	 	<logic:iterate id="m" name="messages">
				<a href='notice.do?action=currNotice&id=${m.id }'><img src="image/gif-0602.gif">${m.content}</a><p>
	     </logic:iterate>
	     </MARQUEE>
		</logic:notEmpty>
		
	</td>
	</tr>	
	</table>
  </body>
</html>
