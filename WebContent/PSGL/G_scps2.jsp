<%@ page language="java" pageEncoding="UTF-8"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
    <title>市场配送</title>

	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link href="../css/lnroad.css" rel="stylesheet" type="text/css">
    <link href="../css/maple.css" rel="stylesheet" type="text/css">
    <link href="../css/autocomplete.css" rel="stylesheet" type="text/css">
    <link href="../css/autocomplete_custom.css" rel="stylesheet" type="text/css">
	 <script type="text/javascript" src="../js/utils.js"></script>
	  <script type="text/javascript" src="../js/autoComplete.js"></script>
    
  </head>
<body>
 <body background="/yuntong/picture/bk3.jpg" topmargin="0" marginheight="0" leftmargin="0" rightmargin="0" marginwidth="0">
  	<%@include file="/Y_Top.jsp" %>
  	<input type="hidden" id="id" name="id">
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
    						<td>当前位置:>><a href="/yuntong/y_GoIndex">首页</a>>>市场配送</td>
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
			<!-- 内容  --><br>
			<table width="100%" border="0" cellpadding="0" cellspacing="0">
			<tr>
			<td valign="top">
			<table width="100%" border="0" cellpadding="0" cellspacing="0">
				<tr>
					<td bgcolor="">
					<table width="100%" border="0" cellpadding="0" cellspacing="0" class="tx">
						<tr>
							<td>
								车牌号码&nbsp;:&nbsp;&nbsp;&nbsp;${info.truckNum}
							</td>
							<td>
								司机姓名&nbsp;:&nbsp;&nbsp;&nbsp;${info.driverName}
							</td>
						</tr>
						<tr>
							<td colspan="2">
								输入货票编号&nbsp;:&nbsp;&nbsp;&nbsp;
<input type=text class=tx id=registerGlideID name=registerGlideID onkeyup="AjaxHdle(event)" ondblclick="autoComplete.expandAllItem();" size=30>
								&nbsp;&nbsp;&nbsp;<input class=tx type=button name=submit value=添加 onclick="doRequest();">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
								(<span style="color:red">只能装填配送地区相符的货票</span>)
							</td>
						</tr>
					</table>
						
					
					</td>
				</tr>
				<tr>
					<td style="display:" id="infos">
						<table border="1" cellpadding="0" cellspacing="0"  width="100%" class=tx>
							<tr>
								<td width="15%"><div align="center">货票编号</div></td>
								<td width="15%"><div align="center">货物名称</div></td>
								<td width="15%"><div align="center">数量单位</div></td>
								<td width="15%"><div align="center">货物数量</div></td>
								<td width="15%"><div align="center">重&nbsp;&nbsp;量</div></td>
								<td width="15%"><div align="center">方&nbsp;&nbsp;量</div></td>
								<td width="15%"><div align="center">删&nbsp;&nbsp;除</div></td>
							</tr>
						</table>
						<table id="tab" width="100%" border="1" cellpadding="0" cellspacing="0" class="tx">
							<tbody id="tb">
							</tbody>	
						</table>
						<form method="post" action="/yuntong/PSGL/g_GoSNPS3">
						<table border="0" cellpadding="0" cellspacing="0" width="100%" class=tx>
						<tr><td width="17%" align="center">合计</td><td id="heft" align="center">重量:&nbsp;</td>
							<td id="bulk" align="center">方量:&nbsp;</td>
						</tr>
						<tr>
			              <input type="hidden" name="hroadType" id="hroadType" value="2">
			              <input type="hidden" name="hdriverId" id="driverId" value="${info.driverId}">
			              <input type="hidden" name="htruckNum" id="htruckNum" value="${info.truckNum}">
			              <input type="hidden" name="htruckId" id="htruckId" value="${info.truckId}">
			              <input type="hidden" name="hheft" id="hheft" value="${info.truckStyleTonnage}">
			              <input type="hidden" name="hbulk" id="hbulk" value="${info.truckStyleCubage}">
			              <input type="hidden" name="hRGID" id="hRGID">
						<td colspan="3" align="center">
						<a href="#" onclick="javascript:submit();" class="tx">下一步</a></td>
						</tr>
						</table></form>
					</td>
				</tr>
			</table>
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
    								<td align="center" background="/yuntong/picture/bg1.jpg">
    								<table border="0" width="80%" height="140">
    										<tr>
    											<td id="Y_tishi">
    												市场运输管理是对分公司与市场之间的，车辆货物人员安排进行管理的模块。可以自动判断车辆和司机是否空闲。车辆是否满载等信息 
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
</body>
</html>

