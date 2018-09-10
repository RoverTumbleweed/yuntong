<%@ page language="java" pageEncoding="UTF-8"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
    <title>收货登记</title>

	<%-------------------------------------------客户查询-----------------------------------%>
	<script type="text/javascript" src="/yuntong/js/prototype1.js"></script>
<script type="text/javascript" src="/yuntong/js/autocomplete1.js"></script>
    <link rel="stylesheet" type="text/css" href="/yuntong/css/autocomplete1.css" />

  </head>
  <link rel="stylesheet" type="text/css" href="/yuntong/css/maple.css" />
   <body background="/yuntong/picture/bk3.jpg" topmargin="0" marginheight="0" leftmargin="0" rightmargin="0" marginwidth="0" onload="doRequest(document.cinfo.areavalue.options[document.cinfo.areavalue.selectedIndex].value);MyReset();">
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
    						<td>当前位置：>><a href="/yuntong/y_GoIndex.do">首页</a>>>收货管理>>收货登记</td>
    					</tr>
    				</table>
    				<table border="0" width="100%" class="tx">
    					<tr>
    						<td background="" align="left">    						
    						<img height="68" width="90" border="0" src="/yuntong/picture/shdj/dhdj.gif">													    						
    						</td>
    					</tr>
    				</table><br>
    				<table border="0" width="100%" cellpadding="0" cellspacing="0">
    					<tr valign="top">
    						<td rowspan="2">
    							<!--================ 客户登记  ===================-->
    							<form action="" method="post" name="select">
    							<table width="100%" border="0" cellpadding="0" cellspacing="0" class="tx" align="center">
    								<tr>
    									<td bgcolor="a0c0c0">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<b>客户信息登记：</b></td>
    								</tr>
    								<tr>
    									<td bgcolor=""><br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<b>已登记客户：</b><br>
    									&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;客户编号：<input class="tx"  type="text" name="clientID">
										&nbsp;&nbsp;&nbsp;&nbsp;
    									<input class="tx"  type="button" onclick="doRequestSelect();" value="查找信息"><br>&nbsp;
    									</td>
    								</tr>
    							</table>
    							</form>
    							<form action="/yuntong/SHGL/y_SHDJClientAction" method="post" name="cinfo">
    							<table width="100%" border="0" cellpadding="0" cellspacing="0" class="tx" align="center">
    								<tr>
    									<td colspan="2" bgcolor="">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<b><span id="ts2" style="">未登记客户：</span><span id="ts" style="display:none">查询结果：</span></b></td>    									
    								</tr>
    								<tr>
    									<td bgcolor="">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;客户编号：
    									<input type="hidden" name="mycid" value="9">
    									<input type="text" class="tx" name="cid" disabled="disabled" value="系统生成" >
    									<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;地区：&nbsp;&nbsp;&nbsp;&nbsp;
    										<select id="areavalue" name="areavalue" class="tx" onchange="doRequest(areavalue.options[areavalue.selectedIndex].value);">
    										<c:forEach items="${sessionScope.areainfo}" var="ainfo">
    										<option value="${ainfo.areaID}">${ainfo.areaCity}</option>
    										</c:forEach>
    										</select>
    									市场：
    									<select id="marketvalue" name="marketvalue" class="tx">
    									<c:forEach items="${sessionScope.marketinfo}" var="minfo">
    										<option>${minfo.marketName}</option>
    										</c:forEach>
    									</select><br>
    									
    									&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;公司名称：<input type="text" class="tx" name="cname">&nbsp;<font color="red">*</font><br>
    									&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;联系人&nbsp;&nbsp;&nbsp;：<input class="tx"  type="text" name="cman">&nbsp;<font color="red">*</font><br>
    									&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;客户电话：<input type="text"  class="tx" name="cphone">&nbsp;<font color="red">*</font><br>
    									&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;电子邮件：<input type="text" class="tx"  name="cemail">&nbsp;<font color="red">*</font><br>
    									&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;邮政编码：<input type="text"  class="tx" name="cpostid"><br>
    									</td>
    									<td width="260" bgcolor="">
    										<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;场内地址：<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<textarea  class="tx" name="caddress" rows="7" cols="28"></textarea>
    									</td>
    									 									
    								</tr>
    								<tr>
    									<td colspan="2" align="center" bgcolor=""><br>
    										<a href="/yuntong/SHGL/y_SHDJbuck1.do" class="tx">上一步</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    										<input class="tx"  type="button" onclick="MyReset();" name="" value="重新填写">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    										<input class="tx"  type="submit" name="" value="下一步"><br>&nbsp;
    									</td>   
    								</tr>
    							</table>
							</form>    							    						    						    						    						
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
    						&nbsp;&nbsp;&nbsp;-->2.<font color="red">录入收货人信息</font>
    						<br><br>
    						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;3.登记货物情况
    						<br><br>
    						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;4.生成货票
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
    						<td >
								<!-- 提示信息 -->
    							<table width="100%" border="0" cellpadding="0" cellspacing="0">
    							<tr>
    								<td background="/yuntong/picture/loginpage.gif" align="center"><br><font color="red">提示信息</font></td>
    							</tr>
    							<tr>
    								<td background="/yuntong/picture/bg1.jpg" align="center">
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

