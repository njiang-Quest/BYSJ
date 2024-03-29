<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@page import="com.bysj.bean.VoteBean;"%>
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
    
    <title>My JSP 'VoteDetail.jsp' starting page</title>
    
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
		var xmlhttpresponse = false;
		//创建XMLHttpRequest对象
		function createxmlhttpresponse(){
			if(window.XMLHttpRequest){
				//非ie浏览器
				xmlhttpresponse = new XMLHttpRequest();
			}else if(window.ActiveXObject){
				//ie浏览器
				try{
					xmlhttpresponse = new window.ActiveXObject("Msxml2.XMLHTTP");
				}catch(e){
					xmlhttpresponse = new window.ActiveXObject("Microsoft.XMLHTTP");
				}
			}
		}

		//响应函数
		function processRequest(){
			if(xmlhttpresponse.readyState==4){			
				if(xmlhttpresponse.status==200){
					var returnStr = xmlhttpresponse.responseText;
					//alert(returnStr);
					window.location.reload();
				}else{
					alert("请求有异常..");
				}
			}
		
		}
		
		function v(){
			var options = document.getElementsByName("vote_option");
			var option="";
			var j= 0;			
			for(i=0;i<options.length;i++)
		   	{
		     	if(options[i].checked){
		     		j++;
		     		option=option+options[i].value+",";
		  			//break;
		 		}
		    }
		    
		    if(j<1){
		    	alert('please select one before you can vote..' );
		    } else {
		    	option = option.substring(0,option.lastIndexOf(","));
		    	var url = "vote.do?action=do_vote&option="+option+"&voteId="+document.getElementById("voteId").value;
		    	//alert(url);
		    	createxmlhttpresponse();
				xmlhttpresponse.open("POST",url,true);
				xmlhttpresponse.onreadystatechange=processRequest;
				xmlhttpresponse.send(null);
		    	//document.vote.action="vote.do?action=do_vote&option="+option+"&voteId="+document.getElementById("voteId").value;
		    	//document.vote.submit();
		    }
		}
			
		
		function upload() {
			<% 
				VoteBean vote = (VoteBean)session.getAttribute("currVote");
				int status = vote.getStatus();
				if(status == 1){
					session.setAttribute("affixType", "vote");
			%>
					window.open( 'uploadFile.jsp','_self');
			<%
				} 
				if(status == 0) {
			%>
				alert("The voting is over, you couldn't upload any files now..");
			<%}%>
		}
		
		function download() {
			/*var affix = document.getElementById("path").value;
			var affixs = affix.split(",");
			for(i=0;i<affixs.length;i++){
				alert(affixs[i]);
			}
			
			var key = document.getElementById("key").value;
			var keys = key.split(",");
			for(i=0;i<keys.length;i++){
				alert(keys[i]);
			}*/
			document.downloadfile.submit();
		}
	</script>
  </head>
  
  <body >
	 

    <form name='vote' action='vote.do?action=do_vote' method='post' > 
    <table background='image/xinzhibg1.jpg' width=850 height=506 align=center>
    	<input type=hidden value=${currVote.voteId } id='voteId'> 
    	<tr><td>
    	<table align=center>
    		<tr ><td colspan=3 align=center  width='600'><font size=5 face='楷体_GB2312'>${currVote.title }</font></td></tr>
    		<tr><td colspan=3><hr/></td></tr>
    		<tr><td colspan=3>&nbsp;&nbsp;&nbsp;&nbsp;${currVote.context }</td></tr>
    		<tr><td colspan=2>&nbsp;</td></tr>
    	 
    		<logic:iterate id="option" name="optionList" indexId="id">
    			<tr>
    				
    				<td width=25%>
    					<c:if test="${option==currUser.name}">
    						<img src="image/gif-0146.gif" width=15 onclick="upload()">
    					</c:if>
    					<c:if test="${option!=currUser.name}">
    						&nbsp;&nbsp;
    					</c:if>
    					
    					<c:if test="${currVote.optional == 0}">
    						<input type='radio' name='vote_option' value="${option}"/>${option }
    					</c:if>
    					
    					<c:if test="${currVote.optional == 1}">
    						<input type='checkbox' name="vote_option" value="${option}"/>${option }
    					</c:if>
    				</td>
    				    					
    				<td><img src="image/blue.jpg" width="${3+currVote.voteDetail[id].cont*10}" height=14>${currVote.voteDetail[id].percentage}%
    					<logic:iterate id="affix" name="affixs" indexId="id">
		 				<c:if test="${affix.value != 'none' && affix.key==option}">
		 					<a href="do_download.jsp?filename=${affix.value }"><img src="image/gif-0160.gif" width=15 height=15> </a>
		 				</c:if>
    					</logic:iterate>
    				</td>
    				
    				
    			</tr>
    		</logic:iterate>
    		
    		<tr><td colspan=3>&nbsp;</td></tr>
    		<tr><td colspan=3>
    			<c:if test="${currVote.status == 1 && currUser.already_vote=='false'}">
    				&nbsp;&nbsp;&nbsp;&nbsp;<input type=button value='投票' onclick="v()" />
    			</c:if>
    			
    			<c:if test="${currVote.status == 0}">
    				&nbsp;&nbsp;&nbsp;&nbsp;<input type=button value='投票' disabled/>
    				<font color=gray size=2>(The voting is over)</font>
    			</c:if>
    	
    			
    			<c:if test="${currVote.status == 1 && currUser.already_vote}">
    				&nbsp;&nbsp;&nbsp;&nbsp;<input type=button value='投票' disabled/>
    				<font color=gray size=2>(You have already vote)</font>
    			</c:if>
    			 
    		</td></tr>
    	</table>  	
    	</td></tr></table>
    </form>
  </body>
</html>
