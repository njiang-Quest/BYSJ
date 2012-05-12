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
	</style>
	
	<script type="text/javascript">
	
		function insertrow(){ //这种方法不支持火狐浏览器
			var table = document.getElementById("optionstable");
			//添加一行
			var newTr = table.insertRow();
			//添加列
			var newTd0 = newTr.insertCell();
			//设置列内容和属性
			newTd0.innerHTML = '<input type=text id=options name=options size=30/>'; 
			
			var newTd1 = newTr.insertCell();
			newTd1.innerHTML = '&nbsp;<select name=escore><option value=1 selected>1&nbsp;&nbsp;</option><option value=2>2</option><option value=3>3</option><option value=5>5</option></select>';
			
			var newTd2 = newTr.insertCell();
			newTd2.innerHTML = '&nbsp;<select name=ascore><option value=10 selected>10&nbsp;&nbsp;</option><option value=15>15</option><option value=20>20</option></select>';
		}
		
		function insertrow1(tableid,trid){
			var mytable=document.getElementById(tableid);
			var myrow=document.getElementById(trid);
			if(navigator.userAgent.indexOf("Firefox") != - 1)
			{
			 	mytable.tBodies[0].appendChild(myrow.cloneNode(true));
			}else{
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
	  	
   	<form method = post>
   	  <table  border="2" align=center width=860><tr><td class='sss'>
   		<table id=addApprisalTable align=center>
   			<tr>
    			<td>
    				考评标题:
    				<input type=text name=title id=title size=52 onfocus = 'clearStyle("title")' onblur ='checkNull("title")'/>
    			</td>
    		</tr>
    		<tr><td>&nbsp;</td></tr>
    		
    		<tr>
    			<td>考评类型:
    				<select name=appType>
    					<option value=0>人员考评</option>
    					<option value=1>部门考评</option>
    				</select>
    			</td>
    		</tr>
    		<tr><td>&nbsp;</td></tr>
    		
    		<tr>
    			<td>
    				<input type=checkbox name=allowAffix/>可上传工作报告&nbsp;&nbsp;
    				文档上传日期：						
					<input type=text id=fbeginTime name=fbeginTime onfocus="showCalendar(this)" readonly>  
    				---&nbsp;<input type=text id=fendTime name=fendTime onfocus="showCalendar(this)" readonly>  
    			</td>
    		</tr>
    		<tr><td>&nbsp;</td></tr>
    		
    		<tr>
    			<td>
    				考评起止日期：						
					<input type=text id=beginTime name=beginTime onfocus="showCalendar(this)" readonly>  
    				---&nbsp;<input type=text id=endTime name=endTime onfocus="showCalendar(this)" readonly>  
    			</td>
    		</tr>
    		<tr><td><hr/></td></tr>

			<tr><td>&nbsp;</td></tr>
			<tr><td>考评说明:</td></tr>
    		<tr>
    			<td><textarea name=context rows=5 cols=50></textarea></td>
    		</tr> 		
    		<tr><td>&nbsp;</td></tr>
    		
    		<tr>
    			<td>考评选项：<span id=least><font color=gray size=2>(至少填写两项)</font></span></td>
    		</tr>
    		
    		<tr><td>
				<table id='optionstable'>
				<tbody>
					<tr>
						<td width=68%>考评项</td>
						<td>&nbsp;&nbsp;分值</td>
						<td>&nbsp;&nbsp;最大分</td>
					</tr>	
					<tr>
						<td><input type=text id=options name=options size=40/></td>
						<td>&nbsp;
							<select name=escore>
	    						<option value=1 selected>1&nbsp;&nbsp;</option>
	    						<option value=2>2</option>
	    						<option value=3>3</option>
	    						<option value=5>5</option>
	    					</select>
	    				</td>
						<td>&nbsp;
							<select name=ascore>
	    						<option value=10 selected>10&nbsp;&nbsp;</option>
	    						<option value=15>15</option>
	    						<option value=20>20</option>
	    					</select>
						</td>
					</tr>
					
					<tr>
						<td><input type=text id=options name=options size=40/></td>
						<td>&nbsp;
							<select name=escore>
	    						<option value=1 selected>1&nbsp;&nbsp;</option>
	    						<option value=2>2</option>
	    						<option value=3>3</option>
	    						<option value=5>5</option>
	    					</select>
	    				</td>
						<td>&nbsp;
							<select name=ascore>
	    						<option value=10 selected>10&nbsp;&nbsp;</option>
	    						<option value=15>15</option>
	    						<option value=20>20</option>
	    					</select>
						</td>
					</tr>
					
					<tr id=troption>
						<td><input type=text id=options name=options size=40/></td>
						<td>&nbsp;
							<select name=escore>
	    						<option value=1 selected>1&nbsp;&nbsp;</option>
	    						<option value=2>2</option>
	    						<option value=3>3</option>
	    						<option value=5>5</option>
	    					</select>
	    				</td>
						<td>&nbsp;
							<select name=ascore>
	    						<option value=10 selected>10&nbsp;&nbsp;</option>
	    						<option value=15>15</option>
	    						<option value=20>20</option>
	    					</select>
						</td>
					</tr>
					</tbody>
				</table>
		    </td></tr>
    		
    		<tr>
    			<td align=left ><a href = "javascript:insertrow1('optionstable','troption')" style='text-decoration:none'><img src='image/gif-0888.gif' width=15 height=15>增加选项</a></td>
    		</tr>
    		<tr><td><hr/></td></tr>
    		<tr><td>&nbsp;</td></tr>
    		
    		<tr><td>被考评对象:</td></tr>
    		<tr><td><table id='beiping'>
					<tr>
						<td><input type=text name=beiping size=40/></td>
					</tr>
					<tr>
						<td><input type=text name=beiping size=40/></td>
					</tr>
					<tr id=trbp>
						<td><input type=text name=beiping size=40/></td>
					</tr>
				</table>	
    		</td></tr>
    		<tr>
    			<td align=left><a href='javascript:insertrow1("beiping","trbp")' style='text-decoration:none'><img src='image/gif-0888.gif' width=15 height=15>增加选项</a></td>
    		</tr>
    		<tr><td>&nbsp;</td></tr>
    		
    		<tr><td>参与人:<input type=checkbox value=0 name=can>所有人</td></tr>
    		<tr><td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    			<input type=checkbox value=1 name=can checked/>被考评对象的部门
    		</td></tr>
   		</table>
   	  </td></tr></table>
   	</form>
  </body>
  
  
</html>
