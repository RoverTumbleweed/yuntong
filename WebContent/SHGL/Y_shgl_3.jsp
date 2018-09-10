<%@ page language="java" pageEncoding="UTF-8"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
    <title>货物信息登记</title>

	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  <link rel="stylesheet" type="text/css" href="/yuntong/css/maple.css" />
   <body background="/yuntong/picture/bk3.jpg" topmargin="0" marginheight="0" leftmargin="0" rightmargin="0" marginwidth="0">
  	<%@include file="/Y_Top.jsp" %>
	 <table width="984" BORDER=0 CELLSPACING=0 CELLPADDING=0>    	
    	<tr>
    		<td width="12%" valign="top" >
    		<!-- 左菜单 -->
    		<%@include file="/Y_Left.jsp" %>
    		</td>
    		<td valign="top" align="left" width="88%">
    			<!-- 中间内容（开始） -->
    				<table border="0" class="tx" width="100%">
    					<tr>
    						<td>当前位置：>><a href="/yuntong/y_GoIndex">首页</a>>>收货管理>>收货登记</td>
    					</tr>
    				</table>
    				<table border="0" width="100%" class="tx">
    					<tr>
    						<td background="" align="left">    						
    						<img height="68" width="90" border="0" src="/yuntong/picture/shdj/cg2.bmp">													    						
    						</td>
    					</tr>
    				</table><br>
    				<table border="0" cellpadding="0" cellspacing="0" width="100%">
    					<tr valign="top">
    						<td rowspan="2">
    							<!-- 货物信息登记（开始） -->
    							<form action="/yuntong/SHGL/y_SHDJGoods" name="goodsform" method="post">	    						    						    						    						
    								<table width="100%" border="0" cellpadding="0" cellspacing="0" class="tx" >
    									<tr>
    										<td colspan="2" bgcolor="b0c0c0">&nbsp;&nbsp;&nbsp;&nbsp;<b>货物信息登记：</b><br>&nbsp;</td>    										
    									</tr>
    									<tr bgcolor="">
    										<td>
    											<br>&nbsp;&nbsp;&nbsp;&nbsp;货物名称：<input class="tx" type="text" name="goodsName">&nbsp;<font color="red">*</font>
    										</td>
    										<td>
    											<br>&nbsp;&nbsp;&nbsp;&nbsp;货物价值：<input  class="tx" value="0" type="text" name="goodsValue">&nbsp;<font color="red">*</font>
    										</td>
    									</tr>
    									<tr bgcolor="">
    										<td>
    											&nbsp;&nbsp;&nbsp;&nbsp;重量：&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" value="0"  class="tx" name="goodsHeft" size="10">&nbsp;吨&nbsp;<font color="red">*</font>    											
    										</td>
    										<td>
    											&nbsp;&nbsp;&nbsp;&nbsp;方量：&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" value="0"  class="tx" name="goodsBulk" size="10">&nbsp;立方米&nbsp;<font color="red">*</font>
    										</td>
    									</tr>
    									<tr bgcolor="">
    										<td>
    											&nbsp;&nbsp;&nbsp;&nbsp;数量单位：<input type="text" name="goodsNumberUnit" class="tx"  size="10">
    										</td>
    										<td>
    											&nbsp;&nbsp;&nbsp;&nbsp;数量：&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="text"  class="tx" value="0" name="goodsNumber" size="10">&nbsp;<font color="red">*</font>
    										</td>
    									</tr>
    									<tr bgcolor="">
    										<td colspan="2">&nbsp;&nbsp;&nbsp;&nbsp;计价方式：
    											<select name="paymentStyle">
    												<c:forEach items="${sessionScope.Y_pinfo}" var="list">
    													<option value="${list.paymentID}">${list.paymentName}</option>
    												</c:forEach>
    											</select>
    											&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;付费方式：
    											<select name="freightStyle">
    												<c:forEach items="${sessionScope.Y_finfo}" var="list">
    													<option value="${list.freightID}">${list.freightName}</option>
    												</c:forEach>
    											</select>    										
    										</td>    										
    									</tr>
    									<tr bgcolor="">
    										<td colspan="2">
    											&nbsp;&nbsp;&nbsp;&nbsp;备注信息：<br>
    											&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    											<textarea  class="tx" name="goodsRemark" rows="4" cols="50"></textarea>
    										</td>
    									</tr>
    									<tr bgcolor="">
    										<td align="center" colspan="2">
    											<br>
    										<a class="tx" href="/yuntong/SHGL/y_Goshdj2.do">上一步</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    										<input class="tx"  type="button" onclick="" name="" value="重新填写">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    										<input class="tx"  type="submit" name="" value="生成货票"><br><br>&nbsp;
    										
    										</td>
    									</tr>
    								</table>
    								</form>
    							<!-- 货物信息登记（结束） -->
    						</td>
    						<td valign="top" width="20%">
    						
    						
    						<!-- 操作步骤 -->
    							<table width="100%" border="0" cellpadding="0" cellspacing="0">
    							<tr>
    								<td background="/yuntong/picture/loginpage.gif" align="center"><br><font color="red">操作步骤</font></td>
    							</tr>
    							<tr>
    								<td background="/yuntong/picture/bg1.jpg">
    									&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;1.填写厂商信息
    						<br><br>
    						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2.录入收货人信息
    						<br><br>
    						&nbsp;&nbsp;&nbsp;--><font color="red">3.登记货物情况</font>
    						<br><br>
    						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;4.生成货票<br>
    								</td>
    							</tr>
    							<tr>
    							<td>
    								<img src="/yuntong/picture/bottom.jpg">
    							</td>
    							</tr>
    							</table>
    							<!-- 操作步骤 -->
    						
    						
    						</td>
    					</tr>
    					<tr>
    						<td valign="top">
    							<!-- 提示信息 -->
    							<table width="100%" border="0" cellpadding="0" cellspacing="0">
    							<tr>
    								<td background="/yuntong/picture/loginpage.gif" align="center"><br><font color="red">提示信息</font></td>
    							</tr>
    							<tr>
    								<td background="/yuntong/picture/bg1.jpg"  align="center">
    									<table border="0" width="80%" height="140">
    										<tr>
    											<td id="Y_tishi">
    												收货登记是对南方厂商准备运送的商品进行登记的页面，其中包含厂商登记，客户登记货物信息登记三个步骤。登记完毕生成未估价货票
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
    							<!-- 提示信息 -->
    						</td>
    					</tr>
    				</table>    			    			    		
    			<!-- 中间内容(结束) -->
    		</td>
    	</tr>
    </table>    
  </body>
</html>

