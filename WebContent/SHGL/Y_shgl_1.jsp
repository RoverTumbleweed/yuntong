<%@ page language="java" pageEncoding="UTF-8"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
    <title>收货登记</title>

	<%-------------------------------------------查询厂商-----------------------------------%>

  </head>
   <script type="text/javascript" src="/yuntong/js/prototype1.js"></script>
<script type="text/javascript" src="/yuntong/js/autocomplete1.js"></script>
    <link rel="stylesheet" type="text/css" href="/yuntong/css/autocomplete1.css" /> 
  <link rel="stylesheet" type="text/css" href="/yuntong/css/maple.css" />
   <body background="/yuntong/picture/bk3.jpg" topmargin="0" marginheight="0" leftmargin="0" rightmargin="0" marginwidth="0" onload="MyReset();">
  	<%@include file="/Y_Top.jsp" %>
	 <table width="984" BORDER=0 CELLSPACING=0 CELLPADDING=0>    	
    	<tr>
    		<td width="12%" valign="top" >
    		<!-- 左菜单 -->
    		<%@include file="/Y_Left.jsp" %>
    		</td>
    		<td valign="top" align="left" width="88%">
    			<!-- 中间内容（开始） -->
    				<table border="0" cellpadding="0" cellspacing="0" class="tx" width="100%">
    					<tr>
    						<td>当前位置：>><a href="/yuntong/y_GoIndex">首页</a>>>收货管理>>收货登记</td>
    					</tr>
    				</table>
    				<table border="0" cellpadding="0" cellspacing="0" width="100%" class="tx">
    					<tr>
    						<td background="" align="left">    						
    						<img height="68" width="90" border="0" src="/yuntong/picture/shdj/dhdj.gif">													    						
    						</td>
    					</tr>
    				</table>
    				<table border="0" width="100%">
    					<tr>
    						<td rowspan="2" valign="top">
    							<!-- 管理部分(开始) -->
    								<form action="#" method="get" name="form2">
    							    <table id="shdj1001" onmousemove="myInfoXmlHttpDoRequest(this.id);" border="0" class="tx" cellpadding="0" cellspacing="0" width="100%">
    							    	<tr>
    							    		<td  bgcolor="a0c0c0"><b>发货厂商登记：</b></td>
    							    	</tr>
    							    	<tr>
    							    		<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<b>已登记厂商：</b><br>
    							    			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;厂商编号：<input class="tx" type="text" id="ffi"   name="findFactoryID" value="">
    							    			
    							    			
    							    			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    							    			<input  class="tx" type="button" onclick="doRequest();" name="Find" value="查找信息"><br>&nbsp;
    							    		</td>
    							    	</tr>
    							    </table>
    							    </form>    							    
    							    <form action="/yuntong/SHGL/y_SHGLFactroy" method="post" name="form1" onsubmit="">
    							    <table id="shdj1002" onmousemove="myInfoXmlHttpDoRequest(this.id);" width="100%" border="0" class="tx"  cellpadding="0" cellspacing="0">
    							    	<tr>
    							    		<td colspan="2" bgcolor="">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<b><span id="ts2" style="">未登记厂商：</span><span id="ts" style="display:none">查询结果：</span></b></td>    							    		
    							    	</tr>
    							    	<tr>
    							    		<td >
												&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;厂商编号：<input type="hidden" name="factoryID" value="9999"><input class="tx" type="text" name="MyfactoryID" disabled="disabled" value="系统生成"><br>
												&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;公司名称：<input  class="tx" type="text" name="factoryName">&nbsp;<font color="red">*</font><br>
												&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;联系人：&nbsp;&nbsp;&nbsp;<input class="tx" type="text" name="factoryLinkman">&nbsp;<font color="red">*</font><br>
												&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;所属地区：
 
												<select class="tx" name="factoryArea">
												<c:forEach items="${sessionScope.cityinfo}" var="list">												
													<option value="${list.areaID}">${list.areaCity}</option>													
												</c:forEach>
												</select><br>
												&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;联系电话：<input class="tx" type="text" name="factoryPhone" size="15">&nbsp;<font color="red">*</font><br>
												&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;联系传真：<input class="tx" type="text" name="factoryFax" size="15"><br>
												&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;邮政编码：<input class="tx" type="text" name="factoryPostID" size="15">&nbsp;<font color="red">*</font><br>
												&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;电子邮件：<input class="tx" type="text" name="factoryEmail" size="25"><br>
												&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;详细地址：<input class="tx" type="text" name="factoryAddress" size="35">&nbsp;<font color="red">*</font><br>
											</td>
    							    		<td bgcolor="">
    							    			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;其他信息：<br>
    							    			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<textarea class="tx"  name="factoryInfo" rows="7" cols="28"></textarea>
    							    		</td>
    							    	</tr>
    							    	<tr bgcolor="">
    							    		<td colspan="2" align="center"><br><input name="" class="tx" type="button" onclick="MyReset();" value="重新填写" >
    							    		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    							    		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    							    		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    							    		<input class="tx" name="submit" type="submit" value="下一步" ><br>&nbsp;
    							    		</td>    							    	
    							    	</tr>
    							    </table>
    							    </form>
    							<!-- 管理部分(结束) -->
    						</td>
    						<td valign="top" width="20%">
    							<!-- 操作步骤 -->
    							<table width="100%" border="0" cellpadding="0" cellspacing="0">
    							<tr>
    								<td background="/yuntong/picture/loginpage.gif" align="center"><br><font color="red">操作步骤</font></td>
    							</tr>
    							<tr>
    								<td background="/yuntong/picture/bg1.jpg">
    									&nbsp;&nbsp;&nbsp;--><font color="red">1.填写厂商信息</font>
    						<br><br>
    						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2.录入收货人信息
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
    						</td><br>
    					</tr>
    					<tr>
    						<td>
    							<!-- 提示信息 -->
    							<table width="100%" border="0" cellpadding="0" cellspacing="0">
    							<tr>
    								<td background="/yuntong/picture/loginpage.gif" align="center"><br><font color="red">提示信息</font></td>
    							</tr>
    							<tr>
    								<td align="center" background="/yuntong/picture/bg1.jpg">
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

