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
    
    <title>网络考评</title>
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
		body{
			margin-right:200px;
			margin-left:200px;
		}
		
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
		
		/*
		function save_appAnswer() {
			document.app.action = 'appraisal.do?action=save_appAnswer';
			document.app.submit();
		}
		*/
		
		function answer(kaoping) {
			document.getElementById("cuser").value='' +kaoping;
			document.getElementById("answer").style.display="block";
		}
		
	</script>
  </head>
  
  <body >
  
	  	<table width=100% background='image/lightblue.jpg'>
	  		  <tr><td align = right> Welcome ${currUser.name }(${currUser.id})&nbsp;&nbsp;<a href='Login.jsp'>sign out</a>&nbsp;&nbsp;</td></tr>
	  	</table>
	  	<p/>&nbsp;
	  	
	  <table  border="2" align=center width=860><tr><td class='sss'>	
	    <form name='app' action='appraisal.do?action=commit_appAnswer' method='post' onsubmit="return mycheck()"> 
	  	<table align=left>
	  		<tr><td>参与考评人:</td></tr>
	  		<c:forEach var='kaoping' items="${currApp.beipings}">
		  		<tr>
		  			
						<td><c:if test="${kaoping==currUser.name && currApp.allowAffix=='1'}">
    						<img src="image/gif-0146.gif" width=15 onclick="upload()">
    					</c:if>
    					<c:if test="${kaoping!=currUser.name}">
    						&nbsp;&nbsp;
    					</c:if>
		  				<a href = "javascript:answer(${kaoping })">${kaoping }</a>
		  				<logic:iterate id="affix" name="affixs" indexId="id">
		 				<c:if test="${affix.value != 'none' && affix.key==kaoping}">
		 					<a href="do_download.jsp?affix=${affix.value }"><img src="image/gif-0160.gif" width=15 height=15> </a>
		 				</c:if>
    					</logic:iterate>
		  				</td>
		  		</tr>
		  	</c:forEach>
		  	<c:if test="${preAnswerLent == answerListSize}">
		  		<tr><td><input type=submit value="提交"></td></tr>
		  	</c:if>
		  	<tr><td><hr/></td></tr>
		</table>
    	</form>
     <form name='app' action='appraisal.do?action=save_appAnswer' method='post' onsubmit="return mycheck()"> 
    	 <div id='answer' style="display:none">
    	<input type=hidden value=${currApp.id } id='appId'> 
    	<table align=center border=0>
    		<tr ><td colspan=2 align=center  width='600'><font size=5 face='楷体_GB2312'>考&nbsp;&nbsp;评&nbsp;&nbsp;表</font></td></tr>
    		<tr><td colspan=2><hr/></td></tr>
    		<tr><td colspan=2>&nbsp;&nbsp;&nbsp;&nbsp;${currApp.context }</td></tr>
    		<tr><td colspan=2>&nbsp;</td></tr>
    		<tr>
    			<td>考评方案:${currApp.title }</td>
    			<td>考评类型:${currApp.type}</td>
    		</tr>
    		
    		<tr>
    			<td colspan=2>考评人:<input type=text id='cuser' name="beipingren" >
				<!-- 	
				<select  name="beipingren">
					<c:forEach var='kaoping' items="${currApp.beipings}">
						<option value = ${kaoping }>
		  				${kaoping }
		  				</option>
		  			</c:forEach>
					</select>
				-->
				</td>	
    		</tr>
    		
    		<tr><td colspan=2 align=center>考评内容</td></tr>
    		
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
    	    <tr><td><input type=button value="清空">&nbsp;&nbsp;<input type=submit value="保存" >&nbsp;&nbsp; </td></tr>
   		</table>
   		</div>
   		</form>
   		
   		<TABLE>
   		<tr>
   			<td><a href="appraisal.do?action=subShowChart">详细得分图</a><br/>
   				<a href="appraisal.do?action=showChart">总分情况</a>
   			</td>
   			<td>
   			<c:if test="${subChartUrl!=null}">
   				<img src="${subChartUrl }">
   			</c:if>
   			<c:if test="${chartUrl!=null}">
   		   	    <img src="${chartUrl }">
   		   	</c:if>
   		    </td>
   	   </tr>
       </TABLE>
   	</td></tr></table>
   	
  </body>
</html>
