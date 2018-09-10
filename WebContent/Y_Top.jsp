<%-------------------------------------------鼠标提示信息ajax------------------------------------%>
<script type="text/javascript">
function quanxian(){
	alert('无此权限，如有疑问请和管理员联系');
}
var myInfoXmlHttp;
//创建联接
function myInfocreateXmlHttpRequest(){
	//根据不同浏览器创建
	if(window.ActiveXObject){
		myInfoXmlHttp=new ActiveXObject("Microsoft.XMLHTTP");
	}else if(window.XMLHttpRequest){
		myInfoXmlHttp=new XMLHttpRequest();
	}
}
//拼提交语句
function myInfoXmlHttpCreateQueryString(){
    //防止缓存
	var queryString="timeStamp="+new Date().getTime();
	return queryString;
}
function myInfoXmlHttpDoRequest(id){
	
	myInfocreateXmlHttpRequest();
	var queryString="/yuntong/y_getInfo.do?infoid="+id+"&";
	queryString=queryString+myInfoXmlHttpCreateQueryString();
	//状态改变时
	myInfoXmlHttp.onreadystatechange=myInfoStateChange;
	myInfoXmlHttp.open("get",queryString,true);
	myInfoXmlHttp.send(null);
	
}
function myInfoStateChange(){
	if(myInfoXmlHttp.readyState==4){
	//alert(xmlHttp.status+"");
		if(myInfoXmlHttp.status==200){
			myInfoParseResults();
		}
	}
}
//更新
function myInfoParseResults(){
//如果没有提示信息返回
	if(document.getElementById("Y_tishi")==null){
	
		return;
	}
	var divid=document.getElementById("Y_tishi");
	//如果有子接点
	if(divid.hasChildNodes()){
		divid.removeChild(divid.childNodes[0]);
	}
	//创建新接点
	var text=document.createTextNode(myInfoXmlHttp.responseText);
	divid.appendChild(text);
    //divid.innerHTML=myInfoXmlHttp.responseText;
}
</script>
<%-------------------------------------------鼠标提示信息ajax------------------------------------%>
<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

    <table BORDER=0 CELLSPACING=0 CELLPADDING=0 COLS=1 WIDTH="984" HEIGHT="91" BACKGROUND="/yuntong/picture/topbk.jpg" >
		<tr>
			<td width="733" background="/yuntong/picture/header.jpg" >
								
			</td>
			<td>
				<font style="font-size:x-small" color="#fffaed"><br><br>
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<font color="#804060">当前用户：${sessionScope.userLoginInfo.userName}				</
				</font>
			</td>
		</tr>
	</table>



