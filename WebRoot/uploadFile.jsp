<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
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
		function uploadf() {
			var file = document.upload.myfile.value;
			var affix = file.substring(file.indexOf(".")+1, file.length);
			if(file==""){
				alert('Please choose a file before click the upload button..');
				return false;
			} else {
				//alert(affix)
				if( !(affix=='doc' || affix =='docx' || affix=='txt' || affix=='pdf' || affix=='sql' || affix=='log') )
				{
					alert('This file type is not allow, please select another one..');
					return false;
				}
			}		
		}
	</script>
  </head>
  
  <body>
  
  <form name='upload' method='post' action='do_upload.jsp' onsubmit='return uploadf()' enctype='multipart/form-data'>
    	<table background='image/xinzhibg1.jpg' width=850 height=506 align=center>
    		<tr><td><table>
    		<tr>
    			<td width=20%>&nbsp;</td>
    			<td>上传文件:<input type='file' name='myfile' size=50/></td>
    		</tr>
    		<tr>
    			<td>&nbsp;</td>
    			<td><font color=gray size=3>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;说明: 只允许上传doc, txt, pdf 等文档.. </td>
    		</tr>
    		<tr><td >&nbsp;</td></tr>
    		<tr>
    			<td>&nbsp;</td>
    			<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type=submit value='上传'/></td>
    		</tr>
    		</table></td></tr>
    	</table>
    </form>
    
   
  </body>
</html>
