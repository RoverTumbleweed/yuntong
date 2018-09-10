<%@ page language="java" pageEncoding="UTF-8"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
    <title>货票详细信息</title>

	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	
  </head>
  
  <link rel="stylesheet" type="text/css" href="/yuntong/css/maple.css" />
  
   <body background="/yuntong/picture/bk3.jpg" topmargin="0" marginheight="0" leftmargin="0" rightmargin="0" marginwidth="0">
  	<%@include file="/Y_Top.jsp" %>
	 <table width="984" BORDER=0 CELLSPACING=0 CELLPADDING=0 height="100%">    	
    	<tr>
    		<td width="12%" valign="top" >
    		<!-- 左菜单 -->
    		<%@include file="/Y_Left.jsp" %>
    		</td>
    		<td valign="top" align="left" width="88%">
    			<!-- 中间内容（开始） -->
    				<table border="0" cellpadding="0" cellspacing="0" width="100%" class="tx">
    					<tr>
    						<td>当前位置：>><a href="">首页</a>>>财务管理>>预收货款>>货票详细信息</td>
    					</tr>
    				</table>
    				<table border="0" cellpadding="0" cellspacing="0" width="100%"  class="tx">
    					<tr>
    						<td background="" align="left">
						<img height="66" width="82" border="0" src="/yuntong/picture/shdj/jcxs33.gif">
							
						</td>
    					</tr>
    				</table>
    				<br><br><br><br>
    				<table border="0" width="100%" height="300" class="tx">
    					<tr>
    						<td rowspan="2" valign="middle">
    						
    						<form action="" method="post">
    							<table border="0" width="80%" cellpadding="0" cellspacing="0" class="tx" align="center">
    							<caption>货票基本信息</caption>
    								<tr align="center">
    									<td align="center" colspan="4">货票编号:<input  class="tx"  type="text" disabled="disabled" name="Registerid" value="${good.registerGlideId }"/></td>
    								</tr>
    								<tr>
    									<td align="center">运输编号：</td>
    									<td><input  class="tx"  type="text" disabled="disabled" name="runid" value="${good.registerConveyanceId }"/></td>
    									<td align="right">运输线路：</td>
    									<td align="center"><input  class="tx"  type="text" disabled="disabled" name="runline" value="${good.registerLine }"/></td>
    								</tr>
    								<tr>
    								<!-- 操作员应为外键，最终应改正 -->
    									<td align="center">操作员:</td>
    									<td><input  class="tx"  type="text" disabled="disabled" name="maketime" value="${good.registerPayerName }"/></td>
    									<td align="right">制单时间：</td>
    									<td align="center"><input  class="tx"  type="text" disabled="disabled" name="arrivetime" value="${good.registerDate }"/></td>
    								</tr>    								
    								<tr>
    									<td colspan="4" align="center"><input  class="tx"  type="submit" name="submit" value="确定"/></td>
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

