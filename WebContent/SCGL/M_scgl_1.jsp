<%@ page language="java" pageEncoding="UTF-8"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">

<html>
	<head>
	<script src="/yuntong/js/rowcolor.js"></script>
	<%-------------------------------------------处理添加------------------------------------%>
	<script type="text/javascript">

function displayDiv(){
	modify.style.display="none";
	add.style.display="";
}
function aaa(){
	var shao=document.addform.shao.value;
	var bei=document.addform.bei.value;
	var shao2=document.addform.shao;
	var bei2=document.addform.bei;
	if(shao==null || shao==''){
		alert("金额不能为空");
		shao2.focus();
		return false;
	}
	if(isNaN(shao)){
		alert("请输入数字");	
		shao2.focus();		
		return false;
	}
	if(bei==null || bei ==''){
		alert("备注不能为空");
		bei2.focus();
		return false;
	}
	alert("添加成功");
		return true;
}
function bbb(){
	var shao=document.modifyform.agioMoney.value;
	var bei=document.modifyform.agioInfo.value;
	var shao2=document.modifyform.agioMoney;
	var bei2=document.modifyform.agioInfo;
	if(shao==null || shao==''){
		alert("金额不能为空");
		shao2.focus();
		return false;
	}
	if(isNaN(shao)){
		alert("请输入数字");	
		shao2.focus();
		return false;
	}
	if(bei==null || bei ==''){
		alert("备注不能为空");
		bei2.focus();
		return false;
	}
	alert("修改成功");
		return true;
}




</script>
	<%-------------------------------------------ajax------------------------------------%>

	<title>少收款登记</title>
</head>

<script type="text/javascript" src="/yuntong/js/prototype1.js"></script>
<script type="text/javascript" src="/yuntong/js/autocomplete1.js"></script>
<link rel="stylesheet" type="text/css"
	href="/yuntong/css/autocomplete1.css" />
<link rel="stylesheet" type="text/css" href="/yuntong/css/maple.css" />
<body background="/yuntong/picture/bk3.jpg" topmargin="0"
	onload="displayDiv();" marginheight="0" leftmargin="0" rightmargin="0"
	marginwidth="0">
	<%@include file="/Y_Top.jsp"%>
	<table width="984" BORDER=0 CELLSPACING=0 CELLPADDING=0>
		<tr>
			<td width="12%" valign="top">
				<!-- 左菜单 -->
				<%@include file="/Y_Left.jsp"%>
			</td>
			<td valign="top" align="left" width="88%">
				<!-- 中间内容（开始） -->
				<table border="0" cellpadding="0" cellspacing="0" class="tx"
					width="100%">
					<tr>
						<td>
							当前位置：>>
							<a href="/yuntong/y_GoIndex.do">首页</a>>>少收款登记
						</td>
					</tr>
				</table>
				<table border="0" cellpadding="0" cellspacing="0" class="tx"
					width="100%">
					<tr>
						<td background="" align="left">
							<img height="66" width="82" border="0"
								src="/yuntong/picture/shdj/jcxs33.gif">

						</td>
					</tr>
				</table>
				<br>
				<table border="0" cellpadding="0" cellspacing="0" width="100%">
					<tr>
						<td height="245" valign="top">
							<!--================ 少收款登记  ===================-->
							<table border="0" cellpadding="0" cellspacing="0" class="tx"
								width="100%">
								<tr>
									<td bgcolor="a0c0c0">
										少收款登记：
									</td>
								</tr>
								<tr>

									<td bgcolor="a0c0c0">

										<form action="/yuntong/SCGL/m_select" method="post">
											&nbsp;&nbsp;&nbsp;&nbsp;
											<select id="areavalue" name="NameOrId" class="tx">
												<option value="TRegisterInfo">
													按货票编号
												</option>
												<option value="TAgioType">
													按类型编号
												</option>

											</select>
											&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
											<input type="text" class="tx" name="leixin" value="请输入关键字"
												onfocus="this.value=''">

											<input class="tx" type="submit" value="查找信息">
										</form>
									</td>
								</tr>
							</table>
							<table height="80" border="0" cellpadding="0" cellspacing="0"
								width="100%">
								<!--DWLayoutTable-->
								<tr>
									<td height="80" valign="top" width="670">
										<b> 以下是根据您的需求的查询的记录 </b>

										<table border="1" cellpadding="0" cellspacing="0" class="tx"
											align="center" width="100%">

											<tr>
												<td>
													记录编号
												</td>
												<td>
													类型编号
												</td>
												<td>
													货票编号
												</td>
												<td>
													少收金额
												</td>
												<td>
													少收备注
												</td>
												<td>
													删除记录
												</td>
												<td>
													修改记录
												</td>
											</tr>


											<!-- 循环迭代 -->
												<form action="" name="frm" method="post">
												<tr onmousemove="" onmouseover="changecolor(this);"
													onmouseout="changeback(this);">
													<td>
														<FONT color="#804060"><bean:write name="info"
																property="agioId" /> </FONT>

														<!-- 隐藏欲 -->
														<input type="hidden" name="agioId"
															value="<bean:write name="info" property="agioId" />">



														<input type="hidden" name="agioMoney"
															value="<bean:write name="info" property="agioMoney" />">
														<input type="hidden" name="agioInfo"
															value="<bean:write name="info" property="agioInfo" />">
														<input type="hidden" name="atypeId"
															value="<bean:write name="info" property="TAgioType.atypeId" />">
														<input type="hidden" name="registerId"
															value="<bean:write name="info" property="TRegisterInfo.registerId" />">
														<!-- 隐藏欲 -->
													</td>
													<td>
														${TAgioType.atypeId}
													</td>
													<td>
														<FONT color="#804060">
														</FONT>
													</td>
													<td>
														
													</td>
													<td>
														<FONT color="#804060"></FONT>
													</td>
													<td>
														<a style="cursor:hand"
															href="m_delteInfo.do?agioId=">[删除]</a>
													</td>


													<td>
														<a name='subA' style="cursor:hand" onclick='getValue();'>[修改]</a>
													</td>


												</tr>

												</form>
							<!-- 迭代结束 -->
										</table>






										<table align="center" width="100%" class="tx">
											<tr bgcolor="ffffff">
												<td>
													&nbsp;&nbsp;&nbsp;
													<a href="m_scgl_1.do?currentPage=1" class="tx">首页</a>
												</td>
												<td>
													<a class="tx"
														href="m_scgl_1?currentPage=<%=Integer.parseInt((String)request.getAttribute("currentPage"))-1+""%>">上一页</a>
												</td>
												<td>
													<a class="tx"
														href="m_scgl_1?currentPage=<%=Integer.parseInt((String)request.getAttribute("currentPage"))+1+""%>">下一页</a>
												</td>
												<td>
													<a class="tx"
														href="m_scgl_1?currentPage=<%=Integer.parseInt((String)request.getAttribute("totalpage"))%>">末页</a>
												</td>
												&nbsp;&nbsp;&nbsp;
												<td>
													<%=Integer.parseInt((String) request
								.getAttribute("currentPage")) + ""%>
													/
													<%=Integer.parseInt((String) request
								.getAttribute("totalpage")) + ""%>
												</td>
											</tr>
										</table>

									</td>
									<td rowspan="2">
										<table cellspacing="0" cellpadding="0" border="0"
											height="100%" bgcolor="a0c0c0" width="100%">
											<tr bgcolor="white">
												<td>
													<!-- 操作步骤 -->
													<table width="100%" border="0" cellpadding="0"
														cellspacing="0">
														<tr>
															<td background="/yuntong/picture/loginpage.gif"
																align="center">
																<br>
																<font color="red">操作步骤</font>
															</td>
														</tr>
														<tr>
															<td background="/yuntong/picture/bg1.jpg">
																<font color="#804060">
																	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;1.选择查询条件
																	<br> <br>
																	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2.输入查询信息查询
																	<br> <br>
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
											<tr bgcolor="white">
												<td>
													<!-- 提示信息 -->
													<table width="100%" border="0" cellpadding="0"
														cellspacing="0">
														<tr>
															<td background="/yuntong/picture/loginpage.gif"
																align="center">
																<br>
																<font color="red">提示信息</font>
															</td>
														</tr>
														<tr>
															<td align="center" background="/yuntong/picture/bg1.jpg">
																<table border="0" width="80%" height="140">
																	<tr>
																		<td id="Y_tishi">
																			少收款项是市场业务员在可户处收费时因某些原因少收的款项，本页面实现了少收款的管理
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
								<tr>
									<td height="200" valign="top">
										<!--修改----------------------------------记录-->
										<div id="modify">
											<b>修改记录</b>
											<center>
												<br>
												<font size="4" color="red">请修改您的数据。</font>

											</center>
											<form name="modifyform" action="/yuntong/SCGL/updateInfo"
												method="post" onsubmit="return bbb();">
												<table cellspacing="1" height="100%" bgcolor="a0c0c0"
													width="100%">
													<tr align="center" bgcolor="white" height="30">
														<td align="left" colspan="3">
															记录编号 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
															<input name="agioIdhiden" disabled="disabled" type="text"
																class="tx" size="10">
															<input name="agioId" type="hidden">
														</td>

													</tr>

													<tr bgcolor="white" height="30">
														<td width="80">
															类型编号
														</td>
														<td width="120">
															<select name="atypeId" class="tx">
																<c:forEach items="${typeid}" var="id">
																	<option value="${id.atypeId}">
																		${id.atypeName}
																	</option>
																</c:forEach>
															</select>
														</td>

														<td colspan="1">
															少收备注
														</td>
													</tr>
													<tr bgcolor="white" height="30">
														<td>
															货票编号
														</td>
														<td>
															<select name="registerId" class="tx">
																<c:forEach items="${registerid}" var="id">
																	<option value="${id.registerId}">
																		${id.registerId}
																	</option>
																</c:forEach>
															</select>
														</td>
														<td rowspan="2">
															<textarea name="agioInfo" rows="3" cols="40" class="tx"></textarea>
														</td>
													</tr>
													<tr bgcolor="white" height="30">
														<td>
															少收金额
														</td>
														<td>
															<input name="agioMoney" type="text" class="tx" value=""
																size="10">
														</td>
													<tr bgcolor="white" valign="top">
														<td align="center" colspan="3" class="txt1">
															<input class="txt1" type="submit" value="修  改">


														</td>
													</tr>
												</table>
											</form>
										</div>
										<!--添加---------------------------------------记录-->
										<div id="add">
											<b>添加记录</b>
											<form action="/yuntong/SCGL/addInfo" name="addform"
												method="post" onsubmit="return aaa();">
												<table cellspacing="0" class="tx" height="100%"
													bgcolor="a0c0c0" width="100%">
													<tr bgcolor="white" height="30">
														<td width="80">
															类型编号
														</td>
														<td width="120">
															<select name="leiId" class="tx">
																<c:forEach items="${typeid}" var="id">
																	<option value="${id.atypeId}">
																		${id.atypeName}
																	</option>
																</c:forEach>
															</select>
														</td>
														<td>
															少收备注
														</td>
													</tr>
													<tr bgcolor="white" height="30">
														<td>
															货票编号
														</td>
														<td>
															<select name="piaoId" class="tx">
																<c:forEach items="${registerid}" var="id">
																	<option value="${id.registerId}">
																		${id.registerId}
																	</option>
																</c:forEach>
															</select>
														</td>
														<td rowspan="2">
															<textarea onfocus="this.value=''" name="bei" rows="3"
																cols="40" class="tx" type="_moz">请输入备注</textarea>
														</td>
													</tr>
													<tr bgcolor="white" height="30">
														<td>
															少收金额
														</td>
														<td>
															<input name="shao" type="text" class="tx" value=""
																size="10">
														</td>

													</tr>

													<tr bgcolor="white" valign="top">
														<td align="center" colspan="3" class="">
															<input class="tx" type="submit" value="添  加">
														</td>
													</tr>
												</table>
											</form>
										</div>



									</td>
								</tr>
							</table>
							<!-- 管理部分(结束) -->
						</td>
					</tr>
				</table>
				<!-- 中间内容(结束) -->
			</td>
		</tr>
	</table>
</body>
</html>

