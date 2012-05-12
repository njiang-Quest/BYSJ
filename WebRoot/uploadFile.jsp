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
				alert(affix)
				if( !(affix=='doc' || affix =='docx' || affix=='txt' || affix=='pdf' || affix=='sql') )
				{
					alert('This file type is not allow, please select another one..');
					return false;
				}
			}		
		}
	</script>
  </head>
  
  <body topmargin=100>
    <form name='upload' method='post' action='do_upload.jsp' onsubmit='return uploadf()' enctype='multipart/form-data'>
    	<table align=center>
    		
    		<tr>
    			<td>上传文件<input type='file' name='myfile' size=50/></td>
    		</tr>
    		<tr><td><input type=submit value='上传'/></td></tr>
    		<tr><td>&nbsp;</td></tr>
    		<tr><td><font color=gray size=3>说明: 只允许上传doc, txt, pdf 等文档, 原则上要求上传的文档应该有助于拉票.. </td></tr>
    		
    	</table>
    </form>
  </body>
</html>
