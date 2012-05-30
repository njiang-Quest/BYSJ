<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%> 
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"> 
<html> 
  <head> 
    <title></title> 
    
    <script>
	
		var xmlhttpresponse = false;
		function createxmlhttpresponse(){
			if(window.XMLHttpRequest){
				xmlhttpresponse = new XMLHttpRequest();
			}else if(window.ActiveXObject){
				try{
					xmlhttpresponse = new window.ActiveXObject("Msxml2.XMLHTTP");
				}catch(e){
					xmlhttpresponse = new window.ActiveXObject("Microsoft.XMLHTTP");
				}
			}
		}

		//updatesal 响应函数
		function exportChart(){
			if(xmlhttpresponse.readyState==4){	
			alert(xmlhttpresponse.status)		
				if(xmlhttpresponse.status==200){
					var returnStr = xmlhttpresponse.responseText;
					alert(returnStr);
				}else{
					alert("请求有异常..");
				}
			}
		
		}
		
		function outp(){
			var filename = window.showModalDialog("exportFileName.jsp","","dialogWidth=500;dialogHeight=200;dialogLeft=400;dialogTop=300");
			
			if(filename!="" && filename!=null){
				createxmlhttpresponse();
				xmlhttpresponse.open("POST","exportChart.do?action=exportC&path="+filename,true);
				xmlhttpresponse.onreadystatechange=exportChart;
				xmlhttpresponse.send(null);
			}
		}
		</script>
  </head> 
    
  <body> 
    <center> 
       		<table width=850 height=506 align=center>
			<tr><td><table align=center>
       			<tr> <td>
	   		   	    <img src="${chartUrl }">
	   		    </td></tr>
	   		</table>
	   		
	   		</td></tr>
	   		<tr><td align=center><a href="javascript:outp()">导出</a></td></tr>
	   		</table>
    </center> 
  </body> 
</html> 