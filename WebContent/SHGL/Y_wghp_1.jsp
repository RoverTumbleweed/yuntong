<%@ page language="java" pageEncoding="UTF-8"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
    <title>未估价货票管理</title>

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
    						<td>当前位置：>><a href="/yuntong/y_GoIndex">首页</a>>>收货部>><a href="/yuntong/SHGL/y_GoWGHP.do">未估价货票</a></td>
    					</tr>
    				</table>
    			    <table border="0" cellpadding="0" cellspacing="0" width="100%" height="60" class="tx">
    			    	<tr>
    			    		<td width="20%" height="32"   bgcolor="a0c0c0">
    			    		精确查询：<input onclick="javascript:div1.style.display='none';div2.style.display=''" checked="checked" type="radio" name="seltype" value="1"  />
    			    		范围查询：<input onclick="javascript:div2.style.display='none';div1.style.display=''" type="radio" name="seltype" value="2"  />
    			    		</td>
    			    		<td  bgcolor="a0c0c0" valign="middle">
    			    		<!-- 范围查询 -->
    			    		<span id="div1" style="display:none">
    			    		<form action="/yuntong/SHGL/y_FindR2" method="post">
    			    		     &nbsp;发货厂商
    			    		    <select class="tx" name="factroyID">
    			    		    	<option value="0" selected="selected">--------</option>
    			    		    	<c:forEach items="${sessionScope.Y_fselect}" var="list">
    			    		    	   <option value="${list.factoryID}">${list.factoryName}</option>
    			    		    	</c:forEach>
    			    		    </select>
    			    		     &nbsp;收货客户
    			    		    <select class="tx" name="clientID">
    			    		    	<option value="0" selected="selected">--------</option>
    			    		    	<c:forEach items="${sessionScope.Y_cselect}" var="list">
    			    		    	   <option value="${list.clientID}">${list.clientName}</option>
    			    		    	</c:forEach>
    			    		    </select>
    			    		     &nbsp;结算方式
    			    		    <select class="tx" name="freightID">
    			    		    	<option value="0" selected="selected">-----</option>
    			    		    	<option value="1">收讫</option>
    			    		    	<option value="2">提付</option>
    			    		    </select>    			    		  
    			    		     &nbsp;启始日期
    			    		    <object class="tx" name="insertDate" classid="clsid:20DD1B9E-87C4-11D1-8BE3-0000F8754DA1" id="dtpicker" height="20" width="130">
											<param name="_ExtentX" value="2000">
											<param name="_ExtentY" value="400">
											<param name="_Version" value="393216">
											<param name="MousePointer" value="0">
											<param name="Enabled" value="1">
											<param name="OLEDropMode" value="0">
											<param name="CalendarBackColor" value="-2147483643">
											<param name="CalendarForeColor" value="-2147483630">
											<param name="CalendarTitleBackColor" value="-2147483633">
											<param name="CalendarTitleForeColor" value="-2147483630">
											<param name="CalendarTrailingForeColor" value="-2147483631">
											<param name="CheckBox" value="0">
											<param name="CustomFormat" value>
											<param name="DateIsNull" value="0">
											<param name="Format" value="662831105">
											<param name="UpDown" value="0">
											<param name="CurrentDate" value="--------------">
											<param name="MaxDate" value="2958465">
											<param name="MinDate" value="-109205">
								 </object>&nbsp;&nbsp;
								 
    			    		    <input type="submit" class="tx" name="" value="查询">
    			    		    </form>
    			    		</span>
    			    		<!-- 精确查询 -->
    			    		<span id="div2">
    			    		<form action="/yuntong/SHGL/y_findR1" method="post">
    			    		<table width="553" height="22" style="">
    			    			<tr>
    			    				<td valign="baseline">
    			    		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;查询信息：
    			    		<input type="text" name="inputID" class="tx">
    			    		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;查询条件：
    			    		<select name="inputType" class="tx">
    			    			<option value="1" selected="selected">货票编号</option>
    			    			<option value="2">运输编号</option>
    			    		</select>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    			    		<input type="submit" class="tx" name="" value="查询">
    			    				</td>
    			    			</tr>
    			    		</table>
    			    		</form>
    			    		</span>
    			    		</td>
    			    	</tr>
    			    </table>
    				<!-- 查询结果表格 -->
    				<table width="100%" border="1" cellpadding="0" cellspacing="0" class="tx">
    				<tbody id="tab">
    					<tr>
    						<td bgcolor="#CCCCCC"><b>货票编号</b></td>
    						<td bgcolor="#CCCCCC"><b>运输编号</b></td>
    						<td bgcolor="#CCCCCC"><b>运输线路</b></td>
    						<td bgcolor="#CCCCCC"><b>发货厂商</b></td>    						
    						<td bgcolor="#CCCCCC"><b>结算方式</b></td>
    						<td bgcolor="#CCCCCC"><b>货物名称</b></td>
    						<td bgcolor="#CCCCCC"><b>计价方式</b></td>
    						<td bgcolor="#CCCCCC"><b>制单时间</b></td>    						
    						<td bgcolor="#CCCCCC"><b>删除</b></td>
    					</tr>
    					<c:forEach items="${sessionScope.Y_pageinfo}" var="list">
    					<tr id="${list.registerID}" onmouseover="changecolor(this);" onmouseout="changeback(this);">
    						<td><font color="#804060">&nbsp;${list.registerGlideID}</font></td>
    						<td>${list.registerConveyanceID}</td>
    						<td><font color="#804060">${list.registerLine}</font></td>
    						<td>${list.registerFactoryName}</td>    						
    						<td><font color="#804060">${list.registerFreightName}</font></td>
    						<td>${list.goodsName}</td>
    						<td><font color="#804060">${list.goodsPaymentModeName}</font></td>
    						<td>${list.strDate}</td>    						
    						<td><a id="${list.registerGlideID}" name="${list.registerID}" href="#" onclick="doRequest(this.name,this.id);"><font color="#804060">[删除]</font></a></td>
    					</tr>    					
    					</c:forEach>
    					</tbody>
    				</table>
    				<form action="/yuntong/SHGL/y_SplitWGHP.do?pageNum=E" method="post">
    				<table width="100%" border="0" cellpadding="0" cellspacing="0" align="center" class="tx">
    					<tr bgcolor="#CCCCCC">
    					<td><br>&nbsp;</td>
    					<td align="center"><a href="/yuntong/SHGL/y_GoSHGL" class="tx">添加记录</a></td>
    						<td align="center"><a href="/yuntong/SHGL/y_SplitWGHP?pageNum=A">[首页]</a></td>
    						<td align="center"><a href="/yuntong/SHGL/y_SplitWGHP?pageNum=B">[上一页]</a></td>
    						<td align="center"><a href="/yuntong/SHGL/y_SplitWGHP?pageNum=C">[下一页]</a></td>
    						<td align="center"><a href="/yuntong/SHGL/y_SplitWGHP?pageNum=D">[末页]</a></td>
    						<td align="center">${sessionScope.Y_spInfo.curPage}/${sessionScope.Y_spInfo.pageNum-1}</td>
    						<td align="left" width="20%">
    						
    						<input class="tx" type="text" name="page" size="4">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    						<input type="submit" class="tx" value="转到">    						    						
    						</td>
    						<td align="center"><a href="/yuntong/SHGL/y_GoWGHP" class="tx">显示所有</a></td>
    					</tr>
    					
    				</table>
    				</form>
    			
    			
    			<!-- 中间内容(结束) -->
    		</td>
    	</tr>
    </table>    
  </body>
</html>

