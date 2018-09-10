<%@ page language="java" pageEncoding="UTF-8"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
    <title>提付货款</title>

	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	

  </head>
  
  <link rel="stylesheet" type="text/css" href="/yuntong/css/maple.css" />
  
  <script src="/yuntong/js/rowcolor.js"></script>
  <script type="text/javascript">
  	function show(){
		document.all.c.color='';
		document.all.c1.color='red';
		document.all.show.style.display='none';
		document.all.part.style.display='';
		document.all.pick1.style.display='none';
		document.all.pick.style.display='none';
	}
	function show1(){
		document.all.c.color='red';
		document.all.c1.color='';
		document.all.show.style.display='';
		document.all.part.style.display='none';
		document.all.pick1.style.display='none';
		document.all.pick.style.display='none';
	}
	
	function pick(){
		document.all.show.style.display='none';
		document.all.part.style.display='none';
		document.all.pick1.style.display='none';
		document.all.pick.style.display='';
	}
	
	function pick1(){
		document.all.show.style.display='none';
		document.all.part.style.display='none';
		document.all.pick1.style.display='';
		document.all.pick.style.display='none';
	}
  </script>
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
    				<table border="0" cellpadding="0" cellspacing="0" class="tx" width="100%"  bgcolor="">
    					<tr>
    						<td>当前位置：>><a href="/yuntong/y_GoIndex">首页</a>>>财务管理>>提付货款</td>
    					</tr>
    				</table>
    				<table border="0" cellpadding="0" cellspacing="0" width="100%"  class="tx">
    					<tr>
    						<td background="" align="left">
						<img height="66" width="82" border="0" src="/yuntong/picture/shdj/jcxs33.gif">
							
						</td>
    					</tr>
    				</table>
    				<table border="0" cellpadding="0" cellspacing="0" width="100%">
    					<tr>
    						<td rowspan="2">
    						<br><br>
    							<table border="1" cellpadding="0" cellspacing="0" class="tx" width="90%" align="center"  onmousemove="show1();">
    							<caption><h3>所有提付货票</h3></caption>
    								<tr>
    									<td width="10%" class="tx" align="center">货票编号</td>
    									<td width="10%" class="tx" align="center">货物名称</td>
    									<td width="10%" class="tx" align="center">厂商</td>
    									<td width="10%" class="tx" align="center">客户</td>
    									<td width="10%" class="tx" align="center">货物价值</td>   									
    									<td width="10%" class="tx" align="center">运费</td> 
    									<td width="10%" class="tx" align="center">保价费</td>
    									<td width="10%" class="tx" align="center">当前状态</td>  
    																		
    								</tr>
    								
    									<tr>
    											<td align="center"><a href="/yuntong/Financial/x_pick.do?test=select&id=${list.registerGlideId}&name=pick"/>${list.registerGlideId}</td>
    											<td align="center">${list.TGoodsInfo.goodsName}</td>
    											<td align="center">${list.TFactoryInfo.factoryName}</td>
    											<td align="center">${list.TClientInfo.clientCompany}</td>    											
    											<td align="center">${list.TGoodsInfo.goodsValue}</td>    											    											
    											<td align="center">${list.TGoodsInfo.goodsFreight}</td>
												<td align="center">${list.TGoodsInfo.goodsInsuranceValue}</td>
    											<td align="center">${list.TRegisterState.rstateName}</td>
    											
    										</tr>
    									
    								
    								<tfoot>
    									<td width="100%" align="center" colspan="9">
    										<a href="/yuntong/Financial/x_Financial?test=pick&currentPage=1">[首页]&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a>
    										<a href="/yuntong/Financial/x_Financial?test=pick&currentPage=<%=Integer.parseInt((String)request.getAttribute("currentPage"))+1 +""%>">[下一页]&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a>
    										<a href="/yuntong/Financial/x_Financial?test=pick&currentPage=<%=Integer.parseInt((String)request.getAttribute("currentPage"))-1+""%>">[上一页]&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a>
    										<a href="/yuntong/Financial/x_Financial?test=pick&currentPage=<%=Integer.parseInt((String)request.getAttribute("totalpage"))%>">[尾页]&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a>
    									</td>
    								</tfoot>
    							</table>  
    							<br><br><br>
    							<table width="100%" onmousemove="show();">
    								<tr>
    									<td align="center" style="font: 900;">
    										&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    										<a href="/yuntong/Financial/x_pick?test=have" class="tx"  onmouseover="pick();">所有已收款货票</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    										<a href="/yuntong/Financial/x_pick?test=nothave" class="tx" onmouseover="pick1();">未收款货票</a>
    									</td>
    								</tr>
    							</table>
    							<table width="100%">
    								<tr height="50">
    									<td width="100%" height="50"></td>
    								</tr>
    								<tr height="50">
    									<td width="100%" height="50"></td>
    								</tr>
    								<tr height="30">
    									<td width="100%" height="30"></td>
    								</tr>
    							</table>						
    						</td>
    						<td valign="top" width="100" ><!-- 操作步骤 -->
    							<table width="100%" border="0" cellpadding="0" cellspacing="0">
    							<tr>
    								<td background="/yuntong/picture/loginpage.gif" align="center"><br><font color="red">功能</font></td>
    							</tr>
    							<tr>
    								<td background="/yuntong/picture/bg1.jpg">
    									
    						<br>
    						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<font color="red" id="c">1.显示所有'提付'货票</font>
    						<br><br>
    						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<font color="" id="c1">2.按需显示</font>
    						<br><br>
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
    								<span id="show"><br><br>
    									&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;显示所有'提付'货票
    									<br><br><br><br></span>
									<span id="part" style="display: none;">
										<br><br>
    									&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;按需显示
    									<br><br><br><br>
									</span>  
									<span id="pick" style="display: none;">
										<br><br>
    									&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;显示<b>所有已收款货票</b>
    									<br><br><br><br>
									</span> 
									<span id="pick1" style="display: none;">
										<br><br>
    									&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;显示<b>所有未收款货票</b>
    									<br><br><br><br>
									</span> 							
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

