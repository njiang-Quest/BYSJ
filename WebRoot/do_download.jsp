<%@ page language="java" import="java.util.*" pageEncoding="GB2312"%><%@ page import='com.jspsmart.upload.*' %><%
	  		SmartUpload su = new SmartUpload();	
	  		su.initialize(pageContext);
	  	    su.setContentDisposition(null);
 		    String name = request.getParameter("filename");
  	  	    System.out.println("filename:"+name);
	  	    //fileName = new String(fileName.getBytes("ISO-8859-1"),"GBK");
	  	    //System.out.println("fileName2:"+fileName);
	  	    su.downloadFile("upload/"+name);
%>