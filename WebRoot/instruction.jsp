<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'MyJsp.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body topmargin=30>
  	<center>
  	<table cellspacing=20>
  		<tr><th>ϵͳʹ��˵��</th></tr>
  		<tr><td>&nbsp;</td></tr>
   		<tr><td>1�� ����Ա������Ȩ�������ÿ�������Ա</td></tr>
		<tr><td>2������Ա���ÿ�����Ŀ�Լ�����Ŀ������ֹ��򡢷�ֵ������ʱ�䣬 �����˿ɷ��ϴ��ĵ��Ȼ�����Ϣ��</td></tr>
		<tr><td>3��ѡ��ÿ�����ĿҪ��������Ա���š�</td></tr>		
		<tr><td>4�����ÿ��Խ��п������ˣ����������֣�ȫ����Ա����������ͬ������Ա�������ˡ�<p/>		
		<tr><td>5����¼ϵͳ��ͶƱ��ԱͶƱ��֣���ݲ�ȡ�޼�����ʽ���У�û���κ�;������֪����Щ�������ĸ��˴�ģ�<br/>&nbsp;&nbsp;���Ǽ�¼���û��ѽ������ۡ�</td></tr>	
		<tr><td>6���û����д�ֺ�ſ��Բ鿴���εĿ�����������ͼ��</td></tr>	
		<tr><td>7���Կ�������ͼ����Դ�ӡ���浵��</td></tr>	
	</table>
	</center>	
  </body>
</html>
