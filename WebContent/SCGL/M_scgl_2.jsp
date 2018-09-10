<%@ page language="java" pageEncoding="UTF-8"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<<html>
<head>

	<title>退货登记</title>

	<%-------------------------------------------查询货票信息ajax------------------------------------%>
	<script type="text/javascript">


//主
function doRequest(){
	//得到查询文本
	var myinputid=document.form1.inputID.value;
	if(myinputid==null||myinputid==""){
		document.form1.inputID.focus();
		alert("查询条件不能为空!!");
		return false;
	}
	if(isNaN(myinputid)==true)
		{
			document.form1.inputID.focus();
			alert("编号必须为数字");			
			return false;
		}
	if(myinputid.length>28)
   	{
 		 alert("长度超出限制");
         document.form1.inputID.focus();
         return false;
	}

	return true;
}



<%-------------------------------------------确认信息------------------------------------%>


</script>

</head>
<script type="text/javascript" src="/yuntong/js/prototype1.js"></script>
<script type="text/javascript" src="/yuntong/js/autocomplete1.js"></script>
    <link rel="stylesheet" type="text/css" href="/yuntong/css/autocomplete1.css" /> 
    
<link rel="stylesheet" type="text/css" href="/yuntong/css/maple.css" />
<body background="/yuntong/picture/bk3.jpg" topmargin="0"
	marginheight="0" leftmargin="0" rightmargin="0" marginwidth="0">
	<%@include file="/Y_Top.jsp"%>
	<table width="984" BORDER=0 CELLSPACING=0 CELLPADDING=0>
		<tr>
			<td width="12%" valign="top">
				<!-- 左菜单 -->
				<%@include file="/Y_Left.jsp"%>
			</td>
			<td valign="top" align="left" width="88%">
				<!-- 中间内容（开始） -->
				<table border="0" cellpadding="0" cellspacing="0" class="tx" width="100%">
					<tr>
						<td>
							当前位置：>>
							<a href="/yuntong/y_GoIndex">首页</a>>><b>退货登记</b>>>
							
						</td>
					</tr>
				</table>
				<table border="0" cellpadding="0" cellspacing="0" class="tx" width="100%" class="tx">
					<tr>
						<td background="" align="left">
							<img height="60" width="70" border="0"
								src="/yuntong/picture/shdj/jcxs1.gif">
						</td>
					</tr>
				</table>
				<!-- 到货确认（开始） -->
			
				<table border="0" cellpadding="0" cellspacing="0" width="100%">
					<tr valign="top">
						<td rowspan="2"><br>
							<form name="form1" action="/yuntong/SCGL/findById" method="post" onsubmit="return doRequest();">
								<table width="100%" border="0" cellpadding="0" cellspacing="0" class="tx">
									<tr>
										<td bgcolor="a0c0c0">
											<span id="rid"><b>请输入货票编号</b>
											</span><span id="cid" style="display:none"><b>请输入运输编号</b>
											</span>
											<input class="tx" type="text" name="inputID">
											
										</td>
										<td bgcolor="a0c0c0">
											<b>查询条件</b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;货票编号：
											<input
												onclick="javascript:cid.style.display='none';rid.style.display=''"
												checked="checked" type="radio" name="seltype" value="RegisterGlideID" />
											运输编号：
											<input type="radio" name="seltype" value="RegisterConveyanceID"
												onclick="javascript:rid.style.display='none';cid.style.display=''" />
											&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
											<input class="tx" type="submit" name="" value="查询">
										</td>
									</tr>
								</table>
							</form>
							制单时间：
							<span id="strdate">&nbsp;</span>
							<!--迭代开始 -->
							
							<table width="100%" class="tx" border="1" cellpadding="0" cellspacing="0" align="center">
								<tr>
									<td width="90" bgcolor="c0c0c0">
										货票ID
									</td>
									<td width="90">
										<font color="#c06040"><span id="registerID" ><bean:write name="info" property="registerId" /></span>
										<input type="hidden" id="piaoid" name="piaoid" value="<bean:write name="info" property="registerId" />">
										</font>
									</td>
									<td width="90" bgcolor="c0c0c0">
										运输线路
									</td>
									<td width="90">
										<font color="#c06040"><span id="registerLine"><bean:write name="info" property="registerLine" />&nbsp;</span>
										</font>
									</td>
									<td width="100" bgcolor="c0c0c0">
										运输编号
									</td>
									<td>
										<font color="#c06040"><span id="registerConveyanceID"><bean:write name="info" property="registerConveyanceId" />&nbsp;</span>
										</font>
									</td>
								</tr>
								<tr>
									<td bgcolor="c0c0c0">
										收货单位
									</td>
									<td colspan="2">
										<font color="#c06040"><span id="registerClientName"><bean:write name="info" property="TClientInfo.clientName" />&nbsp;</span>
										</font>
									</td>
									<td bgcolor="c0c0c0">
										电话
									</td>
									<td colspan="2">
										<font color="#c06040"><span id="registerClientPhone"><bean:write name="info" property="TClientInfo.clientPhone" />&nbsp;</span>
										</font>
									</td>
								</tr>
								<tr>
									<td bgcolor="c0c0c0">
										发货厂商
									</td>
									<td colspan="2">
										<font color="#c06040"><span id="registerFactoryName"><bean:write name="info" property="TFactoryInfo.factoryName" />&nbsp;</span>
										</font>
									</td>
									<td bgcolor="c0c0c0">
										电话
									</td>
									<td colspan="2">
										<font color="#c06040"><span id="registerFactoryphone"><bean:write name="info" property="TFactoryInfo.factoryPhone" />&nbsp;</span>
										</font>
									</td>
								</tr>
								<tr>
									<td bgcolor="c0c0c0">
										货物名称
									</td>
									<td bgcolor="c0c0c0">
										件数
									</td>
									<td bgcolor="c0c0c0">
										重量
									</td>
									<td bgcolor="c0c0c0">
										方量
									</td>
									<td bgcolor="c0c0c0">
										付款方式
									</td>
									<td bgcolor="c0c0c0">
										计价方式
									</td>
								</tr>
								<tr>
									<td>
										<font color="#c06040"><span id="goodsName"><bean:write name="info" property="TGoodsInfo.goodsName" />&nbsp;</span>
										</font>
									</td>
									<td>
										<font color="#c06040"><span id="goodsNumber"><bean:write name="info" property="TGoodsInfo.goodsNumber" />&nbsp;</span>
										</font>
									</td>
									<td>
										<font color="#c06040"><span id="goodsHeft"><bean:write name="info" property="TGoodsInfo.goodsHeft" />&nbsp;</span>
										</font>
									</td>
									<td>
										<font color="#c06040"><span id="goodsBulk"><bean:write name="info" property="TGoodsInfo.goodsBulk" />&nbsp;</span>
										</font>
									</td>
									<td>
										<font color="#c06040"><span id="registerFreightName"><bean:write name="info" property="TFreightStyle.freightName" />&nbsp;</span>
										</font>
									</td>
									<td>
										<font color="#c06040"><span id="goodsPaymentModeName"><bean:write name="info" property="TFreightStyle.freightRemark" />&nbsp;</span>
										</font>
									</td>
								</tr>
								<tr>
									<td bgcolor="c0c0c0">
										运费
									</td>
									<td>
										<font color="#c06040"><span id="goodsFreight"><bean:write name="info" property="TGoodsInfo.goodsFreight" />&nbsp;</span>
										</font>
									</td>
									<td bgcolor="c0c0c0">
										保费
									</td>
									<td>
										<font color="#c06040"><span id="goodsInsuranceValue"><bean:write name="info" property="TGoodsInfo.goodsInsuranceValue" />&nbsp;</span>
										</font>
									</td>
									<td bgcolor="c0c0c0">
										货票状态
									</td>
									<td>
										<font color="#c06040"><span id="goodsAllValue"><bean:write name="info" property="TRegisterState.rstateName" />&nbsp;</span>
										</font>
									</td>
								</tr>
								<tr>
    										<td rowspan="" bgcolor="c0c0c0" height="60">备注</td>
    										<td rowspan="" colspan="5"><font color="#c06040"><span id="goodsRemarkInfo"><bean:write name="info" property="TGoodsInfo.goodsRemarkInfo" />&nbsp;</span></font></td>    										
    							</tr>
								
							
						
							
							
							</table>
							<!-- 迭代结束 -->
							<br>
							<table width="100%" border="0">
							
								<tr>
									<td align="right">
									
										<br>
										<input onclick="doRequestUpdate();" class="tx" type="button"
											value="退货确认">
										&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
										&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
									</td>
								</tr>
							</table><br>
							<hr size="1" width="100%"></hr>
							<!-- 到货确认（结束） -->
						</td>
						<td valign="top" width="20%">
							<!-- 操作步骤 -->
    							<table width="100%" border="0" cellpadding="0" cellspacing="0">
    							<tr>
    								<td background="/yuntong/picture/loginpage.gif" align="center"><br><font color="red">操作步骤</font></td>
    							</tr>
    							<tr>
    								<td background="/yuntong/picture/bg1.jpg"><font color="#804060">
    						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;1.选择查询条件
    						<br><br>
    						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2.输入查询信息查询
    						<br><br>
    						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;3.检查无误后选择确定<br>
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
						<td valign="top">
							<!-- 提示信息 -->
							<table width="100%" border="0" cellpadding="0" cellspacing="0">
								<tr>
									<td background="/yuntong/picture/loginpage.gif" align="center">
										<br>
										<font color="red">提示信息</font>
									</td>
								</tr>
								<tr>
									<td background="/yuntong/picture/bg1.jpg">
										<br>
										<br>
										<br>
										<br>
										<br>
										<br>
										<br>
										<br>
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

