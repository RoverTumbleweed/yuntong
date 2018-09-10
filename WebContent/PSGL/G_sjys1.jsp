<%@ page language="java" pageEncoding="UTF-8"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
    <title>省际运输</title>

	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link href="../css/lnroad.css" rel="stylesheet" type="text/css">
    <link href="../css/maple.css" rel="stylesheet" type="text/css">
    
  </head>
<body>
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
    			  
    				<table border="0" cellpadding="0" cellspacing="0" class="tx" width="100%">
    					<tr>
    						<td>当前位置:>><a href="/yuntong/y_GoIndex">首页</a>>>省际运输</td>
    					</tr>
    					
    				</table>
    				<table border="0" cellpadding="0" cellspacing="0" class="tx" width="100%">
    					<tr>
    						<td background="" align="left">
    						<img height="66" width="84" border="0" src="/yuntong/picture/psgl/cx1.gif">
    						</td>
    					</tr>
    				</table>
    				<table>
    					<tr><td height="20"></td></tr>
    				</table>
			<!-- 内容  -->
			<table width="100%" border="0" cellpadding="0" cellspacing="0">
			<tr>
			<td valign="top"><br>
			<table width="100%" border="0" cellpadding="0" cellspacing="0" class="tx" height="" align="top">
				<tr>
					<td bgcolor="a0c0c0">
						<table width="100%" border="0">
							<tr>
								<td><strong>车辆和司机选择</strong></td>
							</tr>
							<tr>
							<td colspan="2">选择车辆&nbsp;&nbsp;:&nbsp;&nbsp;
								<select class="tx" name="truck" id="truck">
										<option value="没有选择车辆">选择空闲车辆</option>
										<c:forEach items="${truckInfoList}" var="truckInfoList">
								        	<option value="${truckInfoList.truckNum}.${truckInfoList.truckId}">${truckInfoList.truckNum}</option>
								     	</c:forEach>
							         </select>&nbsp;&nbsp;(空闲车辆车牌)</td>
							</tr>
							<tr>
								<td colspan="2">选择司机&nbsp;&nbsp;:&nbsp;&nbsp;
								<select class="tx" name="driver">
										<option value="没有选择司机">选择空闲司机</option>
								       <c:forEach items="${driverInfoList}" var="driverInfoList">
								        	<option value="${driverInfoList.driverName}.${driverInfoList.driverId}">${driverInfoList.driverName}</option>
								     	</c:forEach>
							         </select>&nbsp;&nbsp;(空闲司机姓名)<br></td>
							</tr>
							<tr>
								<td>
									选择配送地区&nbsp;&nbsp;:&nbsp;&nbsp;
									<select class="tx" name="province" id="province" onchange="doRequest();">
										<option value="没有选择省">选择省</option>
								      	<c:forEach items="${areaInfoList}" var="areaInfoList">
								      		<option value="${areaInfoList.areaProvince}">${areaInfoList.areaProvince}</option>
								      	</c:forEach>
							         </select>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							         <select class="tx" name="city" id="city">
										<option value="没有选择城市">选择城市</option>
							         </select>
							         <input type="button" value="确定" class="tx" onclick="getParticularInfo();">
								</td>
							</tr>
						</table>
				      				     
				    </td>
				</tr>
				<tr>
					<td>
						<table border="0" width="100%">
    						<tr><td height="20"></td></tr>
    					</table>				
					</td>
				</tr>
				<tr>
				  <td>
				  <div id="tempdiv">
				  	<table border="0" height="200">
				  		<tr>
				  			<td></td>
				  		</tr>
				  	</table>
				  </div>
				  <div style="display:none;"  id="particularInfo">
				  
	              <table border="1" cellpadding="0" cellspacing="0" width="100%">
	              	<tr>
	              		<td colspan="2" bgcolor="a0c0c0">车辆司机详细信息</td>
	              	</tr>
	              	<tr>
	              		<td rowspan="5" id="img" align="center"></td>
	              		<td id="driverName">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;司机姓名：</td>
	              	</tr>
	              	<tr>
	              		<td id="truckNum">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;牌号码&nbsp;&nbsp;&nbsp;：</td>            		
	              	</tr>
	              	<tr>
	              		<td id="truckStyleName">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;车辆型号：</td>	              		
	              	</tr>
	              	<tr>
	              		<td id="truckStyleTonnage">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;最大载重：</td>	              		
	              	</tr>
	              	<tr>
	              		<td id="truckStyleCubage">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;货舱容积：</td>	              		
	              	</tr>
	              	<tr>
	              		<td colspan="2" id="next" align="center">
	              			<form action="/yuntong/PSGL/g_GoSJYS2" method="post">
	              <input type="hidden" name="hdName" id="hdName">
	              <input type="hidden" name="hdId" id="hdId">
	              <input type="hidden" name="htNum" id="htNum">
	              <input type="hidden" name="htId" id=""htId"">
	              <input type="hidden" name="hheft" id="hheft">
	              <input type="hidden" name="hbulk" id=""hbulk"">
	              	<a href="#" onclick="javascript:submit();" class="tx">下一步</a>
	              	</form>
						</td> 
	              	</tr>
	              </table>
	              </div>
	             </td>
			  </tr>
				</table>
			</td>
			<td width="100">
			<table width="100%" border="0" cellpadding="0" cellspacing="0">
				<tr>
					<td>
					<!-- 操作步骤 -->
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
    							<!-- 操作步骤 -->
					
					
					</td>
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
    												省际运输管理是对各个分公司之间的运输车次，车辆货物人员安排进行管理的模块。可以自动判断车辆和司机是否空闲。车辆是否满载等信息 
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
		</td>
	</tr>
</table>
</body>
</html>

