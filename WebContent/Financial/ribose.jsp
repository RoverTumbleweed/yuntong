<%@ page language="java" pageEncoding="UTF-8"%>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
    <title>收货登记</title>

	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<script type="text/javascript">
		function day1(){
			day.style.display='';
			quar.style.display='none';
			year.style.display='none';
		}
		function quar1(){
			day.style.display='none';
			quar.style.display='';
			year.style.display='none';
		}
		function year1(){
			day.style.display='none';
			quar.style.display='none';
			year.style.display='';			
		}
		
		function ok(){
			showPer.style.display='none';
			per.style.display='';
			
		}
		function count(){
			showPer.style.display='none';
			per.style.display='none';
			
		}
		
		function total(){
			showPer.style.display='none';
			per.style.display='none';
		
			
		
			ribose.style.display='';
		}
		
		function okk(){
			ribose.style.display='none';
		}
	</script>
  </head>
  <link rel="stylesheet" type="text/css" href="/yuntong/css/maple.css" />
   <body background="/yuntong/picture/bk3.jpg" topmargin="0" marginheight="0" leftmargin="0" rightmargin="0" marginwidth="0">
  	<%@include file="/Y_Top.jsp" %>
	 <table width="984" BORDER=0 CELLSPACING=0 CELLPADDING=0 >    	
    	<tr>
    		<td width="12%" valign="top" >
    		<!-- 左菜单 -->
    		<%@include file="/Y_Left.jsp" %>
    		</td>
    		<td valign="top" align="left" width="88%">
    			<!-- 中间内容（开始） -->
    				<table border="1" width="100%" class="tx">
    					<tr>
    						<td>当前位置：>><a href="/yuntong/y_GoIndex.do">首页</a>>>财务管理>>核算</td>
    					</tr>
    				</table>
    				<table border="1" width="100%" class="tx">
    					<tr>
    						<td background="" align="left">
						<img height="66" width="82" border="0" src="/yuntong/picture/shdj/jcxs33.gif">
							
						</td>
    					</tr>
    				</table>
    				<table border="0" width="100%" cellpadding="0" cellspacing="0" class="">
    					<tr>
    						<td rowspan="2" align="center">
    						<form action="x_Ribose.do" method="post">
    							<table border="0" width="50%" align="center">
    								<tr align="center">
    									<td ><a onclick="day1();"><br><h3>日核算</h3></a></td>
    									
    								</tr>    								
    							</table>
    							<hr width="100%" size="1">
		<!--**********************************day*****************************-->
    							<span id="day" style="" >
    							<br>
    							<table width="100%" border="1" cellpadding="0" cellspacing="0" class="tx">
    								
    								<tr>
    						     		<td align="center">
    										<a href="/yuntong/Financial/x_Ribose.do?ribose=showPer" class="tx">收乞核算</a>
    									</td>
    									<td align="center">
    										<a href="/yuntong/Financial/x_Ribose.do?ribose=showPick" class="tx">提付核算</a>
    									</td>
    									
    									<td align="center">
    										<a onclick="total();" class="tx">核&nbsp;&nbsp;算</a>
    									</td>
    								</tr>
    								<tr>
    									<td colspan="3">
    									<!-- 提付or收乞核算 -->
    										<span id="showPer" style="">
    										<logic:present scope="request" name="show">
    											<table border="1" width="80%" cellpadding="0" cellspacing="0" class="tx" align="center">
    											<caption><h5><br>货票信息</h5></caption>
    												<tr>
    													<td align="center" class="tx">货票编号</td>
    													<td align="center" class="tx">货物名称</td>
    													<td align="center" class="tx">厂商</td>
    													<td align="center" class="tx">客户</td>
    													<td align="center" class="tx">货物价值</td>   									
    													<td align="center" class="tx">运费</td> 
    													<td align="center" class="tx">保价费</td>
    													<td align="center" class="tx">状态</td>      									
    												</tr>
    											
    												<tr>
    													<td align="center">${list.registerGlideId}</td>
    													<td align="center">${list.TGoodsInfo.goodsName}</td>
    													<td align="center">${list.TFactoryInfo.factoryName}</td>
    													<td align="center">${list.TClientInfo.clientCompany}</td>    											
    													<td align="center">${list.TGoodsInfo.goodsValue}</td>    											    											
    													<td align="center">${list.TGoodsInfo.goodsFreight}</td>
														<td align="center">${list.TGoodsInfo.goodsInsuranceValue}</td>
														<td align="center">${list.TRegisterState.rstateName}</td>	
    												</tr>
    										
    												<tfoot>
    												
    												<tr>
    												
    													<th width="100%" colspan="9">
    														<a href="/yuntong/Financial/x_Ribose?ribose=showPer&currentPage=1">[首页]&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a>
    														<a href="/yuntong/Financial/x_Ribose?ribose=showPer&currentPage=<%=Integer.parseInt((String)request.getAttribute("currentPage"))+1 +""%>">[下一页]&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a>
    														<a href="/yuntong/Financial/x_Ribose?ribose=showPer&currentPage=<%=Integer.parseInt((String)request.getAttribute("currentPage"))-1+""%>">[上一页]&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a>
    														<a href="/yuntong/Financial/x_Ribose?ribose=showPer&currentPage=<%=Integer.parseInt((String)request.getAttribute("totalpage"))%>">[尾页]&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a>
    													</th>
    												
    													<td  align="right"><input type="button" onclick="return ok();" value="确定"/></td>
    												</tr>
    													
    												</tfoot>
    												
    											</table>
    										</logic:present>
    										</span>
    									
    										<span id="per" style="display: none;">
    										<!--<form action="#" method="post" onsubmit="return count();">-->
    											<table align="center" border="1">
    												<tr>
    													<td>未付款:<input type="text" name="nothavePer" disabled="disabled" value="${nothave}"/></td>
    													<td align="right">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;已付款:<input type="text" name="havePer" disabled="disabled" value="${have}"/></td>
    												</tr>
    												<tr>
    													<td colspan="2" align="right">完成率：<input type="text" name="rate" value="${rate}" disabled="disabled"/></td>
    												</tr>
    												<tr>
    													<td colspan="2" align="right"><input type="button" value="ok" name="ribose" onclick="count();"/></td>
    												</tr>
    											</table>
    										<!--</form>-->
    										</span>
    							
    										<!--少核算 -->
    										<span id="few">
    											
    											<logic:present scope="request" name="few">
    											<font color="red">${message }</font>
    											<table border="1" align="center">
    											<caption><h3>少收货票信息</h3></caption>
    												<tr>
    													<th>货单编号</th>
    													<th>少收类型</th>
    													<th>少收金额</th>
    													<th>客户</th>
    																						
    												</tr>
    												
    												<logic:iterate id="list" name="listfew" offset="<%=(String)request.getAttribute("offset") %>" length="<%=(String)request.getAttribute("PageSixze") %>">
    												<tr>
    													<td  align="center">${list.TRegisterInfo.registerGlideId}</td>
		    											<td  align="center">${list.TAgioType.atypeName}</td>
		    											<td  align="center">${list.agioMoney}</td>
		    											<td  align="center">${list.TRegisterInfo.TClientInfo.clientName}</td>
		    											
		    													
    												</tr>
    												</logic:iterate>
    												<tfoot>
    												<tr>
    													<logic:present name="fenye" scope="request">
    													<th width="100%" colspan="9">
    														<a href="/yuntong/Financial/x_Ribose.do?ribose=showFew&currentPage=1">首页&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a>
    														<a href="/yuntong/Financial/x_Ribose.do?ribose=showFew&currentPage=<%=Integer.parseInt((String)request.getAttribute("currentPage"))+1 +""%>">下一页&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a>
    														<a href="/yuntong/Financial/x_Ribose.do?ribose=showFew&currentPage=<%=Integer.parseInt((String)request.getAttribute("currentPage"))-1+""%>">上一页&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a>
    														<a href="/yuntong/Financial/x_Ribose.do?ribose=showFew&currentPage=<%=Integer.parseInt((String)request.getAttribute("totalpage"))%>">尾页&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a>
    													</th>
    												</logic:present>
    												</tr>	
    												<tr>
    													<td colspan="5" align="right"><input type="button" onclick="few();" value="okk"/></td>
    												</tr>						
    												</tfoot>    												
    											</table>
    										</logic:present>
    										
    										</span> 

    										
    										<!-- 核算 -->
    										<span id="ribose" style="display: none;">
    											<table align="center" width="70%">
    				
    												<tr>
    													<td colspan="2">&nbsp;&nbsp;&nbsp;&nbsp;<B>收乞</B></td>
    												</tr>
    												<tr>
    													<td align="center">付款额:<input type="text" name="perR" disabled="disabled" value="${Perhave}"/></td>
    													<td align="center">未付额:<input type="text" name="perNR" disabled="disabled" value="${Pernothave}"/></td>
    												</tr>
    												<tr>
    													<td colspan="2">&nbsp;&nbsp;&nbsp;&nbsp;<b>提付</b></td>
    												</tr>
    												<tr>
    													<td align="center">付款额:<input type="text" name="pickR" disabled="disabled" value="${Pickhave}"/></td>
    													<td align="center">未付额:<input type="text" name="pickNR" disabled="disabled" value="${Picknothave}"/></td>
    												</tr>
    												<tr>
    													<td align="center"><b>损失额</b></td>
    													<td align="center">损失额:<input type="text" name="lose" disabled="disabled" value="${lose}"/></td>
    												</tr>
    												<tr>
    													<td align="center"><b>少收款</b></td>
    													<td align="center">少收款:<input type="text" name="few" disabled="disabled" value="${few}"/></td>
    												</tr>
    												<tr>
    													<td colspan="2" align="right"><input type="button" value="确定" onclick="okk();"/> </td>
    												</tr>
    											</table>
    										</span>
    									</td>
    								</tr>
    							</table>
    							</span>
    						</form>
    						
    						</td>
    						<td valign="top" width="100">
    						<!-- 操作步骤 -->
    							<table width="100%" border="0" cellpadding="0" cellspacing="0">
    							<tr>
    								<td background="/yuntong/picture/loginpage.gif" align="center"><br><font color="red">操作</font></td>
    							</tr>
    							<tr>
    								<td background="/yuntong/picture/bg1.jpg">
    									<br>
    						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<font color="" id="c">选择核算类型</font>
    						<br><br><br>
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
    						<td valign="top"><!-- 提示信息 -->
    							<table width="100%" border="0" cellpadding="0" cellspacing="0">
    							<tr>
    								<td background="/yuntong/picture/loginpage.gif" align="center"><br><font color="red">提示信息</font></td>
    							</tr>
    							<tr>
    								<td background="/yuntong/picture/bg1.jpg">
    									<br>
    								&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;收乞/提付核算为当日的<br>
    								&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;收乞货票情况，当点击时<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;先显示所有货票<br>
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
    			<!-- 中间内容(结束) -->
    		</td>
    	</tr>
    </table>    
  </body>
</html>

