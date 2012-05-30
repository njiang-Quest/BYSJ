<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'menu.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

 <style type="text/css">
<!--
a {
 text-decoration:none;
 color:black
}
body {
	margin-left: 0px;
	margin-top: 0px;
	margin-right: 0px;
	margin-bottom: 0px;
}
#content{
overflow:auto;
		 height:100%;
		 float:left;
		height:600px;
		 width:190px;
		 background:url(images1/menu2.1.gif) repeat-y top left;
			}


#menu{
	width:190px;
	height:100%;
	float:left;
	background:url(images1/menu2.1.gif) repeat-y top left;
}
#menu1{
	width:190px;
	height:100px;
	position: absolute;
 bottom: 0px;
	
	background:url(images1/menu3.gif) no-repeat bottom left;
}
#menu2{
	width:190px;
	height:300px;
	
 top: 0px;
	float:left;
	background:url(images1/menu1.gif) no-repeat top ;
}
#menu3{
	width:190px;
	height:300px;
	
    top: 0px;
	float:left;
	
}
.STYLE1 {font-size: 14px}
-->
</style>
<script>
	function signout(){
	
	window.top.parent.location.href="Login.jsp";
	
	}
</script>
</head>
<body><div id=content><div id="menu2"><table width="100%" height="174" border="0" cellpadding="0" cellspacing="0">
  
  <tr>
    <td width="41%" height="52">&nbsp;</td>
    <td width="59%" valign="bottom"><span class="STYLE1"><a href='AddVote.jsp' target="main">设置投票</a></span></td>
  </tr>
   <tr>
    <td height="27">&nbsp;</td>
    <td valign="bottom"><span class="STYLE1"><a href="vote.do?action=getVotes">查看投票</a></span></td>
  </tr>
  
  <tr>
    <td height="29">&nbsp;</td>
    <td valign="bottom"><span class="STYLE1"><a href="addAppraisal.jsp" target="main">设置考评</a></span></td>
  </tr>
  <tr>
    <td height="29">&nbsp;</td>
    <td valign="bottom"><span class="STYLE1"><a href="appraisal.do?action=getApps">查看考评</a></span></td>
  </tr>
  
  <tr>
    <td height="27">&nbsp;</td>
    <td valign="bottom"><span class="STYLE1" onclick="signout()">退出登录</span></td>
  </tr>
</table>
</div>
</div>
</body>
</html>
