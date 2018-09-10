<%@ page language="java" pageEncoding="UTF-8"%>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
    <title>详细信息</title>

	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	
  </head>
  
  <script type="text/javascript">
	
	function show(){
		document.all.c.color='';
		document.all.c1.color='red';
		document.all.show1.style.display='none';
		document.all.select.style.display='';
	}
	function show1(){
		document.all.c.color='red';
		document.all.c1.color='';
		document.all.show1.style.display='';
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
    						<td>当前位置：>><a href="/yuntong/y_GoIndex">首页</a>财务管理>>预收货款>>详细信息</td>
    					</tr>
    				</table>
    				<table border="0" cellpadding="0" cellspacing="0" width="100%"  class="tx">
    					<tr>
    						<td background="" align="left">
						<img height="66" width="82" border="0" src="/yuntong/picture/shdj/jcxs33.gif">
							
						</td>
    					</tr>
    				</table>
    				<table border="0" cellpadding="0" cellspacing="0" class="" width="100%"  bgcolor="">
    					<tr>
    						<td rowspan="2">
    							
    							    							<br>
    							<table onmousemove="show1();" border="0" cellpadding="0" cellspacing="0" class="tx" width="90%" align="center">
    							
    							<logic:present scope="request" name="havepick">    		
    							<caption><h3>已付款货票</h3></caption>
    							</logic:present>
    							<logic:notPresent scope="request" name="havepick">
    							<caption><h3>未付款货票</h3></caption>
    							</logic:notPresent>
    							<tbody>
    								<tr>
    									<td width="10%" class="tx" align="center">货票编号</td>
    									<td width="10%" class="tx" align="center">货物名称</td>
    									<td width="10%" class="tx" align="center">厂商</td>
    									<td width="10%" class="tx" align="center">客户</td>
    									<td width="10%" class="tx" align="center">货物价值</td>
    									<logic:notPresent scope="request" name="havepick">
    									<td width="10%" class="tx" align="center">交款</td>
    									</logic:notPresent>
    								</tr>
    									
    									<logic:iterate id="list" name="listpickinfo" offset="<%=(String)request.getAttribute("offset") %>" length="<%=(String)request.getAttribute("PageSixze") %>">
    										<tr>
    											<td align="center">${list.registerGlideId}</td>
    											<td align="center">${list.TGoodsInfo.goodsName}</td>
    											<td align="center">${list.TFactoryInfo.factoryName}</td>
    											<td align="center">${list.TClientInfo.clientCompany}</td>
    											<td align="center">${list.TGoodsInfo.goodsValue}</td>
    											<logic:notPresent scope="request" name="havepick">
    												<td align="center"><a href="/yuntong/Financial/x_pickinfo?test=detail&id=${list.registerGlideId}">[交款]</a></td>
    											</logic:notPresent>
    										</tr>
    									</logic:iterate> 
    								</tbody>
    								<tfoot>
    									<tr>
    													<th width="100%" colspan="7">
    														<a href="/yuntong/Financial/x_pick.do?test=have&currentPage=1">首页&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a>
    														<a href="/yuntong/Financial/x_pick.do?test=have&currentPage=<%=Integer.parseInt((String)request.getAttribute("currentPage"))+1 +""%>">下一页&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a>
    														<a href="/yuntong/Financial/x_pick.do?test=have&currentPage=<%=Integer.parseInt((String)request.getAttribute("currentPage"))-1+""%>">上一页&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a>
    														<a href="/yuntong/Financial/x_pick.do?test=have&currentPage=<%=Integer.parseInt((String)request.getAttribute("totalpage"))%>">尾页&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a>
    													</th>
    													<th width="100%" colspan="7">
    														<a href="/yuntong/Financial/x_pick.do?test=nothave&currentPage=1">首页&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a>
    														<a href="/yuntong/Financial/x_pick.do?test=nothave&currentPage=<%=Integer.parseInt((String)request.getAttribute("currentPage"))+1 +""%>">下一页&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a>
    														<a href="/yuntong/Financial/x_pick.do?test=nothave&currentPage=<%=Integer.parseInt((String)request.getAttribute("currentPage"))-1+""%>">上一页&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a>
    														<a href="/yuntong/Financial/x_pick.do?test=nothave&currentPage=<%=Integer.parseInt((String)request.getAttribute("totalpage"))%>">尾页&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a>
    													</th>
    									
    									</tr>	
    									</tfoot>									
    							</table> 
    							
    							<form id="f" action="#" method="post" onsubmit="return check();">
    							<table align="center" width="90%">
    								<tr>
    									<td align="right" width="90%">
    									<a href="/yuntong/Financial/x_Financial.do?test=pick" class="tx">返回</a><br>
    									<span id="show" style="display: none;">
    									<logic:notPresent scope="request" name="havepick">
    										<logic:present scope="request" name="havepick1">
    											<td align="right"><a href="/yuntong/Financial/x_pick.do?test=have">显示所有</a></td>
    										</logic:present>
    										<logic:present scope="request" name="havepick2">
    											<td align="right"><a href="/yuntong/Financial/x_pick.do?test=nothave">显示所有</a></td>
    										</logic:present>
    									</logic:notPresent>
    									</span>
    									</td>
    								</tr>
    							</table> 
    							<hr width="100%" size="1"><br>
    							<table onmousemove="show();" border="0" cellpadding="0" cellspacing="0" class="tx" width="50%" align="center">
    							<caption align="left"><h3>查询</h3></caption>
    								<tr>
    									<td>货票编号：</td>
    									<td><input  class="tx"  type="text" name="perID" onfocusout="checkNum();"/></td>    									
    								</tr>
    								<tr>
    									<td>货物名称：</td>
    									<td><input  class="tx"  type="text" name="perName"/></td>
    								</tr>
    								<tr>
    									<td colspan="2" align="right">
    										<input  class="tx"  type="submit" name="test" value="查询"/>&nbsp;&nbsp;&nbsp;
    									</td>
    								</tr>
    							</table> 
    							</form>	
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
    								<td background="/yuntong/picture/loginpage.gif" align="center"><br><font color="red">操作步骤</font></td>
    							</tr>
    							<tr>
    								<td background="/yuntong/picture/bg1.jpg">
    									<br>
    						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<font color="red" id="c">1.显示所有'提付'货票</font>
    						<br><br>
    						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<font color="" id="c1">2.'提付'货票的查询</font>
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
    									<span id="show1" style="">
    										<br><br><br>
    										&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;显示所有'提付'货票
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

