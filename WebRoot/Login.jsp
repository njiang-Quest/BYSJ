<%@ page language="java" import="java.util.*" pageEncoding="GB2312"%>
<html>

<head>
	<title>sign in</title>
	<link rel="shortcut icon" href="image/gif-0146.gif" type="image/x-icon"/>  
	<script>
		function mycheck(){
			//1.获取文本框的值
			var username = document.myform.username.value;
			var mypwd = document.myform.password.value;
			//2.判断文本框是否为空
			
			var flag = true;
			if(username==""){
				//为空给出提示
				document.myform.username.style.borderColor ='red';
				flag = false;
			}

			if(mypwd==""){
				document.myform.password.style.borderColor ='red';
				flag = false;
			}
			
			return flag;

		}

		function clearColor(op) {
			if('1'==op) {
				document.myform.username.style.borderColor ='';
			}
			if('2'==op) {
				document.myform.password.style.borderColor ='';
			}
			if('0'==op) {
				document.myform.username.style.borderColor ='';
				document.myform.password.style.borderColor ='';
			}
		}

	</script>
</head>

<body topmargin=200>
	<form name="myform" onsubmit="return mycheck()" method="post" action="loginAction.do">
		<table align=center BACKGROUND ='image/login_logo.gif' width=381 height=200>
			<tr>
				<td align=right>用户名</td>
				<td><input type="text" name="username" onfocus=" clearColor('1')" /></td>
			</tr>

			<tr>
				<td align=right>密&nbsp;&nbsp;码</td>
				<td><input type="password" name="password" onfocus=" clearColor('2')"/></td>
			</tr>
			
			<tr>
				<td/>
				<td><input type="submit" value="登陆">
				<input type="reset" value="取消" onClick='clearColor("0")'></td>
			</tr>

		</table>
	</form>

</body>
</html>