<%@ page language="java" import="java.util.*" pageEncoding="GB2312"%><%@ page import='com.jspsmart.upload.*' %><%
	  		//request.setCharacterEncoding("GB2312");
	  		//response.setCharacterEncoding("GB2312");
	  		SmartUpload su = new SmartUpload();	
	  		su.initialize(pageContext);
	  	    su.setContentDisposition(null);
	  	    String fileName = request.getParameter("affix");
	  	    System.out.println("fileName:"+fileName);
	  	    //fileName = new String(fileName.getBytes("ISO-8859-1"),"GBK");
	  	    //System.out.println("fileName2:"+fileName);
	  	    su.downloadFile("upload/"+fileName);
%>