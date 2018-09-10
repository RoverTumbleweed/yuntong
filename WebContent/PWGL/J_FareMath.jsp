<%@ page language="java"  import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>

	<title>费用估算</title>

	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<STYLE type=text/css>.tx {
	BORDER-RIGHT: #006600 1px solid; BORDER-TOP: #006600 1px solid; FONT-SIZE: 9pt; BACKGROUND-IMAGE: url(/yuntong/picture/bj1.gif); BORDER-LEFT: #006600 1px solid; COLOR: #006600; BORDER-BOTTOM: #006600 1px solid; FONT-FAMILY: "宋体"
}
.txt1 {
	BORDER-TOP-WIDTH: 0px; BORDER-LEFT-WIDTH: 0px; BACKGROUND-IMAGE: url(/yuntong/picture/bj1.gif); BORDER-BOTTOM-WIDTH: 0px; FONT: 9pt "宋体"; COLOR: #000000; BORDER-RIGHT-WIDTH: 0px; TEXT-DECORATION: none
}
</STYLE>
	<%-------------------------------------------费用估算------------------------------------%>

<script type="text/javascript">
function bodyonLody(){
if(${!empty pay}){
alert("估算完成!运费为："+${pay});
}
}
</script>
<script type="text/javascript" src="/yuntong/js/prototype1.js"></script>
<script type="text/javascript" src="/yuntong/js/autocomplete1.js"></script>
    <link rel="stylesheet" type="text/css" href="/yuntong/css/autocomplete1.css" />
</head>
<link rel="stylesheet" type="text/css" href="/yuntong/css/maple.css" />
<body background="/yuntong/picture/bk3.jpg" topmargin="0"
	marginheight="0" leftmargin="0" rightmargin="0" marginwidth="0" onload="bodyonLody()">
	<%@include file="/Y_Top.jsp"%>
	<table width="100%" BORDER=0 CELLSPACING=0 CELLPADDING=0>
		<tr>
			<td width="12%" valign="top">
				<!-- 左菜单 -->
				<%@include file="/Y_Left.jsp"%>
			</td>
			<td valign="top" align="left" width="88%">
				<!-- 中间内容（开始） -->
				<table border="0" cellpadding="0" cellspacing="0" class="tx" width="98%">
					<tr>
						<td>
							当前位置：>>
							<a href="/yuntong/y_GoIndex">首页</a>>>市场管理>>
							<a href="/yuntong/PWGL/J_FareMath.jsp">费用估算</a>
						</td>
					</tr>
				</table>
				<table border="0" cellpadding="0" cellspacing="0" class="tx" width="98%">
					<tr>
						<td background="">
						<img height="70" width="90" border="0" src="/yuntong/picture/shdj/cg1.bmp">
							
						</td>
					</tr>
				</table>
				<!-- 管理部分(开始) -->
				     <table width="98%" border="0" cellpadding="0" cellspacing="0">
				     	<tr>
					   		<td>
					   			<form  method="get" name="form2">
					<table border="0" cellpadding="0" cellspacing="0" class="tx" width="100%">
						<tr>
							<td align="center">
								<b>费用估算如下:</b>
							</td>
						</tr>
						<tr>
							<td align="center">请您输入货票编号：
								<input  class="tx" type="text" id="RegisterId" name="RegisterID">
								
								&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
								<input class="tx" type="button" onclick="doRequest();"name="Find" value="查找信息">
							</td>
						</tr>
					</table>
				</form><br>
				<form action="/yuntong/PWGL/jfrareMathAction" method="post" name="form1">
					<table width="100%" border="0" cellpadding="0" cellspacing="0" class="tx">
					<tr><td>&nbsp;&nbsp;货票编号:<input class="tx" type="text" name="RegisterID" size="20"></td>
						<td>&nbsp;&nbsp;流水号:&nbsp;&nbsp;&nbsp;<input class="tx" type="text" name="RegisterGlideID" size="20"></td>	
						<td>&nbsp;&nbsp;货物编号:<input class="tx" type="text" name="RegisterGoodsID" size="20"><font color="red">*</font></td>
				   <tr>
				       <td>&nbsp;&nbsp;厂家编号:<input class="tx" type="text" name="RegisterFactoryID" size="20"><font color="red"></font></td>
					   <td>&nbsp;&nbsp;客户编号:<input class="tx" type="text" name="RegisterClientID" size="20" disabled="disabled"><font color="red"></font></td>
					   <td>&nbsp;&nbsp;运输编号:<input class="tx" type="text" name="RegisterConveyanceID"size="20"></td>
			       </tr>
					<tr><td>&nbsp;&nbsp;运输线路:<input class="tx" type="text" name="RegisterLine" size="20"><font color="red">*</font></td>
					    <td>&nbsp;&nbsp;结算方式:<input class="tx" type="text" name="RegisterFreightID" size="20"></td>
					    <td>&nbsp;&nbsp;付款人:&nbsp;&nbsp;&nbsp;<input class="tx" type="text" name="RegisterPayerName"size="20"><font color="red"></font></td>
					</tr>
					<tr><td>&nbsp;&nbsp;操作员:&nbsp;&nbsp;&nbsp;<input class="tx" type="text" name="RegisterUserID" size="20"><font color="red">*</font></td>
						<td>&nbsp;&nbsp;制单时间:<input class="tx" type="text" name="RegisterDate" size="20"><font color="red">*</font></td>
						<td>&nbsp;&nbsp;状态:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input class="tx" type="text" name="RegisterState" size="20"><font color="red">*</font></td>
				   </tr>
				   <tr>
				   <td colspan="3" align="center"><br>备注：<textarea class="tx" name="RegisterRemark"  rows="5" cols="44"></textarea></td></tr>
				   <tr align="right"><td colspan="3" align="center"><br><input class="tx" align="right" onclick="change();" name="submit" type="submit"  value="开始估算"><br>&nbsp;</td>
					</tr>
				</table></form>
					   		</td>
				     		<td width="100">
				     			<table width="100%" border="0" cellpadding="0" cellspacing="0">
				<tr>
					<td><!-- 操作步骤 -->
    							<table width="100%" border="0" cellpadding="0" cellspacing="0">
    							<tr>
    								<td background="/yuntong/picture/loginpage.gif" align="center"><br><font color="red">操作步骤</font></td>
    							</tr>
    							<tr>
    								<td background="/yuntong/picture/bg1.jpg"><font color="#804060">
    						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;1.车辆和司机选择
    						<br><br>
    						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2.货物装填
    						<br><br>
    						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;3.生成车次<br>
    						</font>
    						<br>
    								</td>
    							</tr>
    							<tr>
    							<td>
    								<img src="/yuntong/picture/bottom.jpg">
    							</td>
    							</tr>
    							</table>
    							<!-- 操作步骤 --></td>
				</tr>
				<tr>
					<td><!-- 提示信息 -->
    							<table width="100%" border="0" cellpadding="0" cellspacing="0">
    							<tr>
    								<td background="/yuntong/picture/loginpage.gif" align="center"><br><font color="red">提示信息</font></td>
    							</tr>
    							<tr>
    								<td background="/yuntong/picture/bg1.jpg"  align="center">
    									<table border="0" width="80%" height="140">
    										<tr>
    											<td id="Y_tishi">
    												费用估算是对未估价状态的货票，根据送货方式和相应的运费计算方式自动进行运费计算的过程。但其中的保价手工填写
    											</td>
    										</tr>
    									</table>
    								</td>
    							</tr>
    							<tr>
    							<td>
    								<img src="/yuntong/picture/bottom.jpg">
    							</td>
    							</tr>
    							</table>
    							<!-- 提示信息 --></td>
				</tr>
				</table>
				     		</td>
				     	</tr>
				     </table>
				<!-- 管理部分(结束) -->

				<!-- 中间内容(结束) -->
			</td>
		</tr>
	</table>
</body>
</html>

