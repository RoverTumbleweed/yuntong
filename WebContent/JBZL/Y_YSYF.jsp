<%@ page language="java" pageEncoding="UTF-8"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
    <title>运时运费调整</title>

	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<script src="/yuntong/js/rowcolor.js"></script>
	<%-------------------------------------------删除ajax------------------------------------%>
<script type="text/javascript">

//添加选定项信息
function updataForm(iiid,stid,enid,pjtime,zhong,fang){

	var info=document.yqy;
	//编号
	info.iid.value=iiid;
	//alert(info.iid.value);
	//开始地
	for(i=0;i<info.strat.options.length;i++){
		if(info.strat.options[i].value==stid){
			info.strat.options[i].selected="selected";
		}
	}
	//目的地
	for(i=0;i<info.end.options.length;i++){
		if(info.end.options[i].value==enid){
			info.end.options[i].selected="selected";
		}
	}
	//时间
	info.pjtime.value=pjtime;
	//重量
	info.zhongliang.value=zhong;
	//放量
	info.fangliang.value=fang;
	//按钮
	 info.submit.value="修改";
	 //提示
	 document.getElementById("tianjia").style.display="none";
	 document.getElementById("xiugai").style.display="";
}
function myReset(){
	document.yqy.reset();
	 document.getElementById("tianjia").style.display="";
	 document.getElementById("xiugai").style.display="none";
	 document.yqy.submit.value="添加";
}
</script>
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
    				<table border="0" cellpadding="0" cellspacing="0" class="tx" width="100%">
    					<tr>
    						<td>当前位置：>><a href="/yuntong/y_GoIndex">首页</a>>>基本资料>>运时运费调整</td>
    					</tr>
    				</table>
    				<table border="0"  cellpadding="0" cellspacing="0" width="100%">
    					<tr>
    						<td rowspan="2" valign="top">
    								<!-- 正式内容（开始） -->
    									<table width="100%" border="0" cellpadding="0" cellspacing="0" class="tx">
											<tr>
												<td bgcolor="a0c0c0"><form action="/yuntong/JBZL/y_selectYSYF" method="post">
													&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<font  color="#804060">线路查询</font>
													&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;起始地：
													<select name="strat" class="tx">
														<option selected="selected" value="0">--------</option>
														<c:forEach items="${sessionScope.Y_Afinfo}" var="list">
																<option value="${list.areaInfoId}">${list.areaCity}</option>
														</c:forEach>
													</select>
													&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;目的地：
													<select name="end" class="tx">
														<option selected="selected" value="0">--------</option>
														<c:forEach items="${sessionScope.Y_Afinfo}" var="list2">
																<option value="${list2.areaInfoId}">${list2.areaCity}</option>
														</c:forEach>
													</select>
													&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
													<input type="submit" name="submit" value="查询" class="tx">
													&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
													<a href="/yuntong/JBZL/y_GoYsyf" class="tx">显示所有</a>
													</form>
												</td>
											</tr>    									
    									</table>
										<table  width="100%" border="1" cellpadding="0" cellspacing="0" class="tx">
										<tbody id="tab">
											<tr id="0" bgcolor="#CCCCCC">
												<td align="center">其始地</td>
												<td align="center">目的地</td>
												<td align="center">平均时间（小时）</td>
												<td align="center">方量标准（方/元）</td>
												<td align="center">重量标准（吨/元）</td>
												<td align="center">修改</td>
												<td align="center">删除</td>
											</tr>
											<c:forEach var="pageinfo" items="${sessionScope.Y_ysyfinfo}">
											<tr id="${pageinfo.afrerghtID}" onmouseover="changecolor(this);" onmouseout="changeback(this);">
												<td><font color="#804060">&nbsp;&nbsp;&nbsp;&nbsp;${pageinfo.afBeginName}</font></td>
												<td>&nbsp;&nbsp;&nbsp;&nbsp;${pageinfo.afrerghtEndName}</td>
												<td><font color="#804060">&nbsp;&nbsp;&nbsp;&nbsp;${pageinfo.afrerghtTime}</font></td>
												<td>&nbsp;&nbsp;&nbsp;&nbsp;${pageinfo.afrerghtBulk}&nbsp;￥</td>
												<td><font color="#804060">&nbsp;&nbsp;&nbsp;&nbsp;${pageinfo.afrerghtHeft}&nbsp;￥</font></td>
												<td align="center"><a onclick="updataForm('${pageinfo.afrerghtID}','${pageinfo.afrerghtBegin}','${pageinfo.afrerghtEnd}','${pageinfo.afrerghtTime}','${pageinfo.afrerghtHeft}','${pageinfo.afrerghtBulk}')" style="cursor:hand">[修改]</a></td>
												<td align="center"><a style="cursor:hand" id="${pageinfo.afrerghtID}" onclick="doRequest(this.id);" >[删除]</a></td>
											</tr>
											
											</c:forEach>
											</tbody>
										</table>
										<form action="/yuntong/JBZL/y_spysyf.do" method="post">
										<table class="tx" width="100%" border="0" cellpadding="0" cellspacing="0">
											<tr  bgcolor="#CCCCCC" >
												<td align="center"><a href="/yuntong/JBZL/y_spysyf?p=a">[首页]</a></td>
												<td align="center"><a href="/yuntong/JBZL/y_spysyf?p=b">[上一页]</td>
												<td align="center"><a href="/yuntong/JBZL/y_spysyf?p=c">[下一页]</td>
												<td align="center"><a href="/yuntong/JBZL/y_spysyf?p=d">[末页]</a></td>
												<td>${sessionScope.Y_ysyfc}/${sessionScope.Y_ysyfs}</td>
												<td align="center"><input type="text" name="mp" class="tx" size="4">
												<input type="hidden" name="p" value="e">
												</td>
												<td align="center"><input type="submit" value="转到" class="tx"></td>
											</tr>
										</table>
										</form>
    								<!-- 正式内容（结束） -->
    						</td>
    						<td width="100">
    							<!-- 操作步骤 -->
    							<table width="100%" border="0" cellpadding="0" cellspacing="0">
    							<tr>
    								<td background="/yuntong/picture/loginpage.gif" align="center"><br><font color="red">注意事项</font></td>
    							</tr>
    							<tr>
    								<td background="/yuntong/picture/bg1.jpg" align="center">
    									<table width="83%" border="0">
    										<tr>
    											<td><br>
    												<font color="#804060">错误的删除和修改会使某些线路货票无法估价
    												
    												</font><br>&nbsp;
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
    							<!-- 操作步骤 --> 
    						</td>
    					</tr>
    					<tr>
    						<td width="100" align="center">
    									<!-- 提示信息 -->
    							<table width="100%" border="0" cellpadding="0" cellspacing="0">
    							<tr>
    								<td background="/yuntong/picture/loginpage.gif" align="center"><br><font color="red">提示信息</font></td>
    							</tr>
    							<tr>
    								<td align="center" background="/yuntong/picture/bg1.jpg">
    									<table border="0" width="83%" height="130">
    										<tr>
    											<td id="Y_tishi">
    												运时运费管理是对公司的运费计算方式，运费价格进行控制的页面。本系统货票的运费就是依据此页面信息进行估价
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
    				<table border="0" cellpadding="0" cellspacing="0" class="tx" width="100%">
    					<tr>
    						<td width="14%"><img src="/yuntong/picture/jbzl/clock.gif"></td>
    						<td>
    						<form name="yqy" action="/yuntong/JBZL/y_addAFinfo" method="post">
    							<table width="100%">
    								<tr>
    									<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span id="tianjia"><font color="#804060">添加运时运费信息</font></span>
    									<span id="xiugai" style="display:none"><font color="#804060">修改运时运费信息</font>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a style="cursor:hand" onclick="myReset();" class="tx">返回添加</a></span><br>
    									<input type="hidden" name="iid" value="0">
    										&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;起始地：
													<select name="strat" class="tx">
														
														<c:forEach items="${sessionScope.Y_Afinfo}" var="list">
																<option value="${list.areaInfoId}">${list.areaCity}</option>
														</c:forEach>
													</select>
													&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;目的地：
													<select name="end" class="tx">
														
														<c:forEach items="${sessionScope.Y_Afinfo}" var="list2">
																<option value="${list2.areaInfoId}">${list2.areaCity}</option>
														</c:forEach>
													</select>
													&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;平均时间：
													<input type="text" name="pjtime" class="tx" size="10">
    									</td>
    								</tr>
    								<tr>
    									<td>
    										&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;方量标准（方/元）:
    										<input type="text" size="10" name="fangliang" class="tx">
    										&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    										&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;重量标准（吨/元）:
    										<input type="text" size="10" class="tx" name="zhongliang">
    										&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
    										<input type="submit" size="10" name="submit" value="添加" class="tx">
    										&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    										<input type="button" onclick="myReset();" size="10" value="取消" class="tx">
    										<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    										&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    										&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    										&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    										&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    										<font color="#804060" size="3">${sessionScope.Y_aftag}</font>
    										
    										 <c:remove scope="session" var="Y_aftag"/>
    									</td>
    								</tr>
    							</table>
    							</form>    						
    						</td>
    					</tr>
    				</table>
    			<!-- 中间内容(结束) -->
    		</td>
    	</tr>
    </table>    
  </body>
</html>

