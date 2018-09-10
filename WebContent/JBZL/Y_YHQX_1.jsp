<%@ page language="java" pageEncoding="UTF-8"%>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
    <title>权限管理</title>
<script src="/yuntong/js/rowcolor.js"></script>
	
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
    		<td valign="top" align="center" width="88%">
    			<!-- 中间内容（开始） -->
    				<table border="0" cellpadding="0" cellspacing="0" class="tx" width="100%">
    					<tr>
    						<td>当前位置：>><a href="/yuntong/y_GoIndex">首页</a>>>基本资料>>用户权限</td>
    					</tr>
    				</table>
    				<table border="0" cellpadding="0" cellspacing="0" width="100%" class="tx">
    					<tr>
    						<td background="" align="left">    						
    						<img height="77" width="90" border="0" src="/yuntong/picture/jbzl/user.gif">
    						<font color="#804060" size="3">(选中角色需要的权限即可)</font>													    						
    						</td>
    					</tr>
    				</table>
    				
    				<table width="100%" border="0" cellpadding="0" cellspacing="0">
    					<tr>
    						<td align="left" width="450"><br>
    							<form action="/yuntong/JBZL/y_UpdataRole" method="post">
    				<table border="1" cellpadding="" cellspacing="" width="100%" height="377" class="tx">
    					<tr>
    						<td colspan="8" align="center"><br>
    						<c:if test="${sessionScope.y_upme==null}">
    						<b><font color="#804060" size="4">权限控制台</font></b>
    						</c:if>
    						<c:if test="${sessionScope.y_upme!=null}">
    						<b><font color="#804060" size="4">${sessionScope.y_upme}</font></b>
    						</c:if>
    						<c:remove scope="session" var="y_upme"/>
    						</td>
    					</tr>
    					<tr bgcolor="a0c0c0">
    						<td><b>角色名称</b></td>
    						<td><b>收货管理</b></td>
    						<td><b>票物管理</b></td>
    						<td><b>配送管理</b></td>
    						<td><b>财务管理</b></td>
    						<td><b>市场管理</b></td>
    						<td><b>统计查询</b></td>
    						<td><b>基本资料</b></td>
    					</tr>
    					<c:forEach items="${sessionScope.Y_roinfo}" var="list" varStatus="li">
    					<tr onmouseover="changecolor(this);" onmouseout="changeback(this);">
    						<td bgcolor="a0c0c0">${list.roleName}</td>
    						<td align="center" >
    							<c:if test="${list.roleSHGL==1}">
    								<input class="txt1" name="${li.count}" type="checkbox" value="1" checked/>
    							</c:if>
    							<c:if test="${list.roleSHGL!=1}">
    								<input class="txt1" name="${li.count}" type="checkbox" value="1"/>
    							</c:if>
    						</td>
    						<td align="center">
    							<c:if test="${list.rolePWGL==1}">
    								<input class="txt1" name="${li.count}" type="checkbox" value="2" checked>
    							</c:if>
    							<c:if test="${list.rolePWGL!=1}">
    								<input class="txt1" name="${li.count}" type="checkbox" value="2">
    							</c:if>
    						</td>
    						
    						<td align="center">
    							<c:if test="${list.rolePSGL==1}">
    								<input class="txt1" name="${li.count}" type="checkbox" value="3" checked>
    							</c:if>
    							<c:if test="${list.rolePSGL!=1}">
    								<input class="txt1" name="${li.count}" type="checkbox" value="3">
    							</c:if>
							</td>
    						<td align="center">
    							<c:if test="${list.roleCWGL==1}">
    								<input class="txt1" name="${li.count}" type="checkbox" value="4" checked>
    							</c:if>
    							<c:if test="${list.roleCWGL!=1}">
    								<input class="txt1" name="${li.count}" type="checkbox" value="4">
    							</c:if>
							</td>
    						<td align="center">
    							<c:if test="${list.roleSCGL==1}">
    								<input class="txt1" name="${li.count}" type="checkbox" value="5" checked>
    							</c:if>
    							<c:if test="${list.roleSCGL!=1}">
    								<input class="txt1" name="${li.count}" type="checkbox" value="5">
    							</c:if>
							</td>
    						<td align="center">
    							<c:if test="${list.roleTJCX==1}">
    								<input class="txt1" name="${li.count}" type="checkbox" value="6" checked>
    							</c:if>
    							<c:if test="${list.roleTJCX!=1}">
    								<input class="txt1" name="${li.count}" type="checkbox" value="6">
    							</c:if>
							</td>
    						<td align="center">
    							<c:if test="${list.roleJBZL==1}">
    								<input class="txt1" name="${li.count}" type="checkbox" value="7" checked>
    							</c:if>
    							<c:if test="${list.roleJBZL!=1}">
    								<input class="txt1" name="${li.count}" type="checkbox" value="7">
    							</c:if>
							</td>
    					</tr>
    					</c:forEach>
    					<tr>
    						<td colspan="4" align="center"><br><input type="submit" value="修改权限" class="tx"></td>
    						<td colspan="4" align="center"><br><input type="reset" value="取消操作" class="tx"></td>
    					</tr>    				
    				</table>
    				
    				</form>
    						</td>
    						<td width=""  valign="middle" class="">
    							<table border="0" cellpadding="0" width="100%" height="377" cellspacing="0" class="tx">
    								<tr>
    									<td>
    										<div align="center">   
   											<img src="<%=session.getAttribute("image_urqx")%>" width=410 height=372 border=0 usemap="#<%=session.getAttribute("image_urqx") %>" alt="">      
  					 							</div>    									
										</td>
    								</tr>
    							</table>
    						</td>
    					</tr>
    				</table>
    				
    				<hr width="100%" size="1">
    				
    				
    		</td>
    	</tr>
    </table>    
  </body>
</html>

