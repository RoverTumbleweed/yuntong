<%@ page language="java" pageEncoding="UTF-8"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>货物信息登记</title>
    
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
    				<table border="0" class="tx" cellpadding="0" cellspacing="0" width="100%">
    					<tr>
    						<td>当前位置：>><a href="/yuntong/y_GoIndex">首页</a>>>收货管理>>收货登记</td>
    					</tr>
    				</table>
    				<table border="0" cellpadding="0" cellspacing="0" width="100%" class="tx">
    					<tr>
    						<td background="" align="left">    						
    						<img height="85" width="110" border="0" src="/yuntong/picture/shdj/sh.gif">													    						
    						</td>
    					</tr>
    				</table>
    				<table border="0" cellpadding="0" cellspacing="0" width="100%">
    					<tr valign="top" bgcolor="ffffff">
    						<td rowspan="2" align="center">
    							<!-- 货票（开始） --><br><br>
    								<b>成功生成货票(未估价)</b>
									<hr size="1" width="90%"></hr>     								
    								&nbsp;&nbsp;&nbsp;&nbsp;开票日期：${Y_rvo.strDate}<br><br>  
    								<table width="95%" border="1" cellpadding="0" cellspacing="0" class="tx">
    									<tr>
    										<td width="100" bgcolor="c0c0c0">货票ID</td>
    										<td><font color="#c06040">${Y_rvo.registerGlideID}</font></td> 
    										<td width="80" bgcolor="c0c0c0">运输线路</td>
    										<td><font color="#c06040">${Y_rvo.registerLine}</font></td>
    										<td width="100" bgcolor="c0c0c0">运输编号</td>
    										<td width="90"><font color="#c06040">${Y_rvo.registerConveyanceID}</font></td>    										   										
    									</tr>
    									<tr>
    										<td bgcolor="c0c0c0">收货单位</td>
    										<td colspan="2"><font color="#c06040">${Y_cvo.clientCompany}</font></td>
    										<td bgcolor="c0c0c0">电话</td>
    										<td colspan="2"><font color="#c06040">${Y_cvo.clientPhone}</font></td>    										
    									</tr>
    									<tr>
    										<td bgcolor="c0c0c0">发货厂商</td>
    										<td colspan="2"><font color="#c06040">${Y_fvo.factoryName}</font></td>
    										<td bgcolor="c0c0c0">电话</td>
    										<td colspan="2"><font color="#c06040">${Y_fvo.factoryPhone}</font></td>    										
    									</tr>
    									<tr>
    										<td bgcolor="c0c0c0">货物名称</td>
    										<td bgcolor="c0c0c0">件数</td>
    										<td bgcolor="c0c0c0">重量</td>
    										<td bgcolor="c0c0c0">方量</td>
    										<td bgcolor="c0c0c0">付款方式</td>
    										<td bgcolor="c0c0c0">计价方式</td>
    									</tr>
    									<tr>
    										<td><font color="#c06040">${Y_gvo.goodsName}</font></td>
    										<td><font color="#c06040">${Y_gvo.goodsNumber}</font></td>
    										<td><font color="#c06040">${Y_gvo.goodsHeft}</font></td>
    										<td><font color="#c06040">${Y_gvo.goodsBulk}</font></td>
    										<td><font color="#c06040">${Y_gvo.buyStyleName}</font></td>
    										<td><font color="#c06040">${Y_gvo.goodsPaymentModeName}</font></td>
    									</tr>    							    							
    								</table><br> 
    								开票人：${sessionScope.userLoginInfo.userName}&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    								收货人：${Y_cvo.clientName}&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    								客户：${Y_fvo.factoryLinkMan}
    								<hr size="1" width="90%"></hr><br> 
    								<a href="/yuntong/y_GoIndex" title="返回系统首页" class="tx">--返回首页--</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    								<a href="/yuntong/SHGL/y_GoWGHP" title="所有已经登记但未估算价格的货票信息" class="tx">--查看所有未估价货票--</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    								<a href="y_SHDJbuck1" title="返回收货登记第一步" class="tx">--继续录入--</a>
    							<!-- 货票（结束） -->
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
    						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;3.登记货物情况
    						<br><br>
    						&nbsp;&nbsp;&nbsp;--><font color="red">4.生成货票</font><br>
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

