<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'AddVote.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<link rel="shortcut icon" href="image/gif-0146.gif" type="image/x-icon"/>  
	
	<script language=javascript src="js/wpCalendar.js"></script>
	<style type="text/css">
		body{
			margin-right:200px;
			margin-left:200px;
		}
		
	 .sss{
		 margin-left:400px; 
		 margin-top:400px; 
		 padding-left:40px;
		 padding-top:40px;
		 padding-right:40px;
		 padding-bottom:40px;
		 border-width:20px;
	 }
	</style>
	<script>
		function addVoteContext() {
			if(document.getElementById('voteContext1').style.display=='none') {
				document.getElementById('voteContext1').style.display='block';
				document.getElementById('voteContext2').style.display='block';
				document.getElementById('voteContext3').style.display='block';
			} else {
				document.getElementById('voteContext1').style.display='none';
				document.getElementById('voteContext2').style.display='none';
				document.getElementById('voteContext3').style.display='none';
			}
		}

		function voteOptions() {
			var options = document.getElementsByName("options");
			var index = 0;
			var optionCount = 0;
			while(index < options.length && optionCount < 2) {
				//alert("index:"+index);
				if(trim(options[index].value) !=" "){
					optionCount++;
				}
				index++;
				//alert("optionCount:" +optionCount);
			}
			
			var flag = true;
			var message = "";
			
			var title = trim(document.addVoteForm.title.value);
			if(title==" "){
				flag = false;
				message+='New vote have to fill in title.\r\n'
				document.addVoteForm.title.style.borderColor ='red';
			}
			
			var beginTime = trim(document.addVoteForm.beginTime.value);
			alert(beginTime)
			if(beginTime==" "){
					flag = false;
					message+='New vote have to fill in begin time.\r\n'
					document.addVoteForm.beginTime.style.borderColor ='red';
			}
			
			if(optionCount < 2) {
				document.getElementById('least').innerHTML ="<font id=least color=red size=2>(������д����)</font>";
				message+='New vote have to fill in at least two options.\r\n';
				flag= false;
			} else {
				document.getElementById('least').innerHTML ="<font id=least color=gray size=2>(������д����)</font>";
			}
			if(!flag)
				alert(message)
			return flag;
			//return false;
			
		}
		
		function checkNull(type){
			var flag = true;
			if('title' == type) {
				var title = trim(document.addVoteForm.title.value);
				if(title==" "){
					document.addVoteForm.title.style.borderColor ='red';
				}
			}
			
			if('beginTime' == type) {
				var beginTime = trim(document.addVoteForm.beginTime.value);
				if(beginTime==" "){
					document.addVoteForm.beginTime.style.borderColor ='red';
				}
			}
		}
		
		function clearStyle(type){
			if('title' == type) {
				document.addVoteForm.title.style.borderColor ='';
			}
			
			if('beginTime' == type) {
				document.addVoteForm.beginTime.style.borderColor ='';
				var beginTime = trim(document.addVoteForm.beginTime.value);
				if(beginTime != " "){
					document.getElementById('time').innerHTML ='<font color=gray>ע�⣺ʱ���ʽҪ����Ҫ�����磬2012-05-01</font>';
				}
			}
		}
		
		function trim(mystr){
			var length = mystr.length;
			if(length > 0) {
				 while((mystr.indexOf(" ")==0)&&(mystr.length> 1)){
				 	mystr=mystr.substring(1,mystr.length);
				 }//ȥ��ǰ��ո�
				 
				 while((mystr.lastIndexOf(" ")==mystr.length-1)&&(mystr.length> 1)){
				 	mystr=mystr.substring(0,mystr.length-1);
				 }//ȥ������ո�
				 
				
			} else {
				mystr= " ";
			}
			//alert("mystr:"+mystr);
			return mystr;
	     }
	     
	     function addVote() {
	     	voteOptions()
	     	
	     }

		function insertrow(){
			var mytable=document.getElementById("addoptiontable");
			var myrow=document.getElementById("troption");
			if(navigator.userAgent.indexOf("Firefox") != - 1)
			{
			 	mytable.tBodies[0].appendChild(myrow.cloneNode(true));
			 	mytable.tBodies[0].appendChild(myrow.cloneNode(true));
			 	mytable.tBodies[0].appendChild(myrow.cloneNode(true));
			}else{
			 	mytable.tBodies[0].insertBefore(myrow.cloneNode(true));
			 	mytable.tBodies[0].appendChild(myrow.cloneNode(true));
			 	mytable.tBodies[0].insertBefore(myrow.cloneNode(true));
			}
		}	  
		
	</script>
	
  </head>
  
  <body leftmargin=200 rightmargin=200>
	  	<table width=100% background='image/lightblue.jpg'>
	  		  <tr><td align = right> Welcome ${currUser.name }(${currUser.id})&nbsp;&nbsp;<a href='Login.jsp'>sign out</a>&nbsp;&nbsp;</td></tr>
	  	</table>
	  	<p/>
  	<form action="vote.do?action=addVote" method = post name=addVoteForm onsubmit="return voteOptions()">
     <table  border="2" align=center width=870><tr><td class='sss'>
    	<table id=addVoteTable align=center>
    		<tr>
    			<td>
    				<font>���⣺</font>
    				<input type=text name=title id=title size=52 onfocus = 'clearStyle("title")' onblur ='checkNull("title")'/>
    				<a href='javascript:addVoteContext()'>�������</a>
    			</td>
    		</tr>
    		
    		<tr><td>&nbsp;</td></tr>
    		<tr>
    			<td><span id=voteContext1 style='display:none'>ͶƱ������</span></td>    			
    		</tr>
    		<tr>
    			<td><span id=voteContext2 style='display:none'><textarea name=context rows=5 cols=50></textarea></span></td>
    		</tr>
    		
    		<tr><td><span id=voteContext3 style='display:none'>&nbsp;</span></td></tr>
    		
    		<tr>
    			<td>
    				����ͶƱ���ڣ�						
					<input type=text id=beginTime name=beginTime onfocus="showCalendar(this)" readonly>  
    				---&nbsp;<input type=text id=endTime name=endTime onfocus="showCalendar(this)" readonly>  
    			</td>
    		</tr>
    		
    		<tr><td>&nbsp;</td></tr>
    		
    		<tr>
    			<td>
    				ѡ�����ã� 
    				<input type=radio id=optional name=optional checked value=0>��ѡ
    				<input type=radio id=optional name=optional value=1>��ѡ
    			</td>
    		</tr>
    		
    		<tr><td>&nbsp;</td></tr>
    		
    		<tr>
    			<td>ͶƱѡ�<span id=least><font color=gray size=2>(������д����)</font></span></td>
    		</tr>
    		
    		<tr><td>
    			<table id = addoptiontable>
    				<tr><td><input type=text id=options name=options size=50/></td></tr>
    				<tr><td><input type=text id=options name=options size=50/></td></tr>
    				<tr id = troption><td><input type=text id=options name=options size=50/></td></tr>
    			</table>
    		</td></tr>
	
			<tr>
    			<td align=left><a href='javascript:insertrow()' style='text-decoration:none'><img src='image/gif-0888.gif' width=15 height=15>����ѡ��</a></td>
    		</tr>
    		
			<tr height=20><td>&nbsp;</td></tr>
    		<tr align=left>
    			<td>
    				&nbsp;&nbsp;
    				<input type=submit value="����ͶƱ" />
    				&nbsp;&nbsp;&nbsp;
    				<input type='reset' value="��    ��"/>
    				&nbsp;&nbsp;&nbsp;
    				<input type=button value="ȡ    ��" onclick="javescript:window.open('index.jsp','_shif')"/>
    				&nbsp;&nbsp;&nbsp;
    				&nbsp;&nbsp;&nbsp;
    				&nbsp;&nbsp;&nbsp;
    				&nbsp;&nbsp;&nbsp;
    				&nbsp;&nbsp;&nbsp;
    				&nbsp;&nbsp;&nbsp;
    				&nbsp;&nbsp;&nbsp;
    			</td>
    		</tr>
    	 </table>
    	</td></tr></table>
      </form>
  </body>
</html>
