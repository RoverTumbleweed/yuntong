<%@ page language="java" pageEncoding="UTF-8"%>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
    <title>预收货款</title>

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
		document.all.select.style.display='';
	}
	function show1(){
		document.all.c.color='red';
		document.all.c1.color='';
		document.all.show.style.display='';
		document.all.select.style.display='none';
	}
  </script>  
  
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
    				<table border="0" cellpadding="0" cellspacing="0" width="100%" class="tx">
    					<tr>
    						<td>当前位置：>><a href="/yuntong/y_GoIndex">首页>></a>财务管理>>预收货款</td>
    					</tr>
    				</table>
    				<table border="0" cellpadding="0" cellspacing="0" width="100%"  class="tx">
    					<tr>
    						<td background="" align="left">
						<img height="66" width="82" border="0" src="/yuntong/picture/shdj/jcxs33.gif">
							
						</td>
    					</tr>
    				</table>
    				<table border="0" cellpadding="0" cellspacing="0" width="100%" >
    					<tr>
    						<td rowspan="2">
    						
    						<table border="1" cellpadding="0" cellspacing="0" class="tx" width="100%" align="center" id="m" onmousemove="show1();">
    						
    							<caption><h3>收讫信息</h3></caption>
    							
    								<tr>
    									<th width="10%">货票编号</th>
    									<th width="10%">货物名称</th>
    									<th width="10%">厂商</th>
    									<th width="10%">客户</th>
    									<th width="10%">货物价值</th>   									
    									<th width="10%">运费</th> 
    									<th width="10%">保价费</th>  
    									<th width="10%">状态</th>
    									<th width="10%">交款</th>    									
    								</tr>
    									<tr onmouseover="changecolor(this);" onmouseout="changeback(this);">
    											<td align="center">${list.registerGlideId}</td>
    											<td align="center"><font color="#804060">${list.TGoodsInfo.goodsName}</font></td>
    											<td align="center">${list.TFactoryInfo.factoryName}</td>
    											<td align="center"><font color="#804060">${list.TClientInfo.clientCompany}</font></td>    											
    											<td align="center">${list.TGoodsInfo.goodsValue}</td>    											    											
    											<td align="center"><font color="#804060">${list.TGoodsInfo.goodsFreight}</font></td>
												<td align="center">${list.TGoodsInfo.goodsInsuranceValue}</td>	
												<td align="center"><font color="#804060">${list.TRegisterState.rstateName}</font></td>												    											
    											<td><a href="/yuntong/Financial/x_per.do?test=select&id=${list.registerGlideId}"/>[交款]</td>
    										</tr>
    									
    									<tfoot>
    									<tr>
    									<logic:present scope="request" name="uqiun">
    										<td colspan="9" align="right"><a href="/yuntong/Financial/x_Financial.do?test=per">显示所有</a></td>
    									</logic:present>
    									<logic:present name="fenye" scope="request">
    												<td width="100%" colspan="9" align="center">
    													<a href="/yuntong/Financial/x_Financial.do?test=per&currentPage=1">[首页]&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a>
    													<a href="/yuntong/Financial/x_Financial.do?test=per&currentPage=<%=Integer.parseInt((String)request.getAttribute("currentPage"))+1 +""%>">[下一页]&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a>
    													<a href="/yuntong/Financial/x_Financial.do?test=per&currentPage=<%=Integer.parseInt((String)request.getAttribute("currentPage"))-1+""%>">[上一页]&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a>
    													<a class="" href="/yuntong/Financial/x_Financial.do?test=per&currentPage=<%=Integer.parseInt((String)request.getAttribute("totalpage"))%>">[尾页]&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a>
    												</td>
    									</logic:present>
    									<logic:present name="Selectfenye" scope="request">
    												<td width="100%" colspan="9">
    													<a href="/yuntong/Financial/x_per.do?test=test&currentPage=1">[首页]&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a>
    													<a href="/yuntong/Financial/x_per.do?test=test&currentPage=<%=Integer.parseInt((String)request.getAttribute("currentPage"))+1 +""%>">[下一页]&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a>
    													<a href="/yuntong/Financial/x_per.do?test=test&currentPage=<%=Integer.parseInt((String)request.getAttribute("currentPage"))-1+""%>">[上一页]&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a>
    													<a href="/yuntong/Financial/x_per.do?test=test&currentPage=<%=Integer.parseInt((String)request.getAttribute("totalpage"))%>">[尾页]&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a>
    												</td>
    									</logic:present>
    										<logic:present scope="request" name="notnull">
    										<tr>
    										<td colspan="9">
    											<h5 align="right"><a href="/yuntong/Financial/x_Financial.do?test=per">显示所有</a></h5>
    										</td>
    										</tr>
    										</logic:present>
    									
    									</tr>	
    									</tfoot>
    							</table>
    							<br>
    								<table align="right">
    									<tr>
    										<td>
    											<!-- <img src="/servlet/X_Image">-->
    										</td>
    									</tr>
    								</table>
    							<br>
    							<hr width="100%" size="1">
    							<form id="f" action="#" method="post" onsubmit="return check();">
    							<table onmousemove="show();" border="0" cellpadding="0" cellspacing="0" class="tx" width="50%" align="center">
    								<caption align="left"><h3>查询</h3></caption>
    								<tr>
    									<td align="center"><br>货票编号：
    									<td><br><input class="tx" type="text" name="perID" onfocusout="checkNum();" onfocus="show();"/></td>    										    									
    								</tr>
    								<tr>
    									<td align="center">货物名称：</td>
    									<td><input class="tx" type="text" name="perName" onfocus="show();"/></td>
    								</tr>
    								
    								<tr>
    									<td colspan="2" align="right">
    										<input class="tx" type="submit" name="test" value="查找"/>&nbsp;&nbsp;&nbsp;
    									</td>
    								</tr>
    							</table>  
    							</form>
    							<br>
    							<hr width="100%" size="1">
    							<%--wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww --%>
    						</td>
    						<td valign="top" width="100" ><!-- 操作步骤 -->
    							<table width="100%" border="0" cellpadding="0" cellspacing="0">
    							<tr>
    								<td background="/yuntong/picture/loginpage.gif" align="center"><br><font color="red">操作步骤</font></td>
    							</tr>
    							<tr>
    								<td background="/yuntong/picture/bg1.jpg">
    									<br>
    						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<font color="red" id="c">1.显示所有'收讫'货票</font>
    						<br><br>
    						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<font color="" id="c1">2.'收讫'货票详细查询
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
    								<span id="select" style="display: none;">
    									<br>
    									&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;可根据货票编号或
    									<br>
    									&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;货物名称来查询
    									<br><br><br></span>
    									<span id="show" style="">
    						<br><br><br>
    						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;显示所有'收讫'货票
    						<br><br><br><br></span>
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

