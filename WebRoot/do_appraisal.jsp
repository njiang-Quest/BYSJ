<%@ page language="java" import="java.util.*,java.text.SimpleDateFormat" pageEncoding="GB2312"%>
<%@page import="com.bysj.bean.AppraisalBean;"%>
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
    
    <title>���翼��</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<link rel="shortcut icon" href="image/gif-0146.gif" type="image/x-icon"/>  

	<style type="text/css">

		
		.sss{
			 margin-left:200px; 
			 margin-top:400px; 
			 padding-left:30px;
			 padding-top:40px;
			 padding-right:30px;
			 padding-bottom:40px;
			 border-width:20px;
	    }
	</style>
	
	<script type="text/javascript">
		function upload() {
			<% 
				AppraisalBean app = (AppraisalBean)session.getAttribute("currApp");
				String aendDate = app.getAEndDate()	;
				SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");  
				Date date = new Date();
				String dateStr = sdf.format(date); 
				//System.out.println(aendDate);    
				//System.out.println(dateStr);         
				if(dateStr.compareTo(aendDate) <=0){
					session.setAttribute("affixType", "app");
			%>
					window.open( 'uploadFile.jsp','_self');
			<%
				} 
				else {
			%>
				alert("The upload time was over, you couldn't upload any files now..");
			<%}%>
		}
		
		function mycheck() {
			//return false;
		}
		
		function checkOption(name) {
			var scores = document.getElementsByName(name);
			var score;
			for(i=0;i<scores.length;i++) {
				if(scores[i].checked) {
					//alert(scores[i].value);
					score = scores[i].value
					document.getElementById(name).value = score;
					//alert("score:"+score);
				}
			}
			
		}
		
		
		var xmlhttpresponse = false;
		//����XMLHttpRequest����
		function createxmlhttpresponse(){
			if(window.XMLHttpRequest){
				//��ie�����
				xmlhttpresponse = new XMLHttpRequest();
			}else if(window.ActiveXObject){
				//ie�����
				try{
					xmlhttpresponse = new window.ActiveXObject("Msxml2.XMLHTTP");
				}catch(e){
					xmlhttpresponse = new window.ActiveXObject("Microsoft.XMLHTTP");
				}
			}
		}

		//��Ӧ����
		function processRequest(){
			if(xmlhttpresponse.readyState==4){			
				if(xmlhttpresponse.status==200){
					var returnStr = xmlhttpresponse.responseText;
					//alert(returnStr);
					window.location.reload();
				}else{
					alert("�������쳣..");
				}
			}
		
		}
		
		function v(){
				
		    	createxmlhttpresponse();
				xmlhttpresponse.open("POST",url,true);
				xmlhttpresponse.onreadystatechange=processRequest;
				xmlhttpresponse.send(null);
		    }
		}
	</script>
  </head>
  
  <body >
     <form name='app' action='appraisal.do?action=save_appAnswer' method='post' onsubmit="return mycheck()"> 
    	<table background='image/xinzhibg1.jpg' width=850 height=506 align=center>
    	<tr><td>
    	<input type=hidden value=${currApp.id } id='appId'> 
    	<table align=center border=0>
    		<tr ><td colspan=2 align=center  width='600'><font size=5 face='����_GB2312'>��&nbsp;&nbsp;��&nbsp;&nbsp;��</font></td></tr>
    		<tr><td colspan=2><hr/></td></tr>
    		<tr><td colspan=2>&nbsp;&nbsp;&nbsp;&nbsp;${currApp.context }</td></tr>
    		<tr><td colspan=2>&nbsp;</td></tr>
    		<tr>
    			<td>��������:${currApp.title }</td>
    			<td>��������:${currApp.type}</td>
    		</tr>
    		
    		<tr>
    			<td colspan=2>��������:
					
				<select  name="beipingren">
					<c:forEach var='kaoping' items="${currApp.beipings}">
						<option value = ${kaoping }>
		  				${kaoping }
		  				</option>
		  			</c:forEach>
					</select>
				
				</td>	
    		</tr>
    		
    		<tr><td colspan=2 align=center>��������</td></tr>
    		
    		<c:forEach var='option' items="${currApp.options}">
    		<c:set var="oid" value="${option.id}"></c:set>
    		<tr>
    			<td colspan=2>${option.option }:&nbsp;&nbsp;
    			<c:forEach var='e' items="${option.es}">
    				<input type=hidden id="score${oid}"/>
    				<input type=radio name="score${oid}" value=${e } onchange='checkOption("score${oid}")'>${e}&nbsp;
    			</c:forEach></td>
    		</tr>
    		</c:forEach>
    		
    		<tr><td>&nbsp;&nbsp;</td></tr>
    	    <tr><td>
	    	    <input type=submit value="����" >&nbsp;&nbsp;
		    </td></tr>
   		</table>
   		</td></tr></table>
   		</form>
   	
  </body>
</html>
