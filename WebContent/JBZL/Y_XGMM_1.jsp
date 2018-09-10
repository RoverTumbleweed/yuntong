<%@ page language="java" pageEncoding="UTF-8"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
    <title>修改密码</title>

	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

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
    						<td>当前位置：>><a href="/yuntong/y_GoIndex">首页</a>>>基本资料>>修改密码</td>
    					</tr>
    				</table>
    			<table border="0" cellpadding="0" cellspacing="0" width="100%" class="tx">
    					<tr>
    						<td background="" align="left">    						
    						<img height="74" width="90" border="0" src="/yuntong/picture/jbzl/user.gif">    																			    						
    						</td>
    					</tr>
    				</table>
    			<table width="100%" border="0" cellpadding="0" cellspacing="0">
    				<tr> 
    					<td align="center">
    					<!-- 修改密码(start) -->
    					<hr width="60%" size="1"><br><br> 
  								<form action="/yuntong/JBZL/y_UpdatePwd" method="post">
    							<table width="45%" border="0" cellpadding="0" cellspacing="0" class="tx">
    							<tr>
    									<td align="center" colspan="2"><b>${Y_pwdinfo}</b>&nbsp;</td>
    								</tr>
    								<tr>
    									<td colspan="2" align="center"><font color="#804060" size="3">修改密码</font><br>&nbsp;</td>
    								</tr>
    								<tr>
    									<td>&nbsp;&nbsp;&nbsp;当前密码：</td>
    									<td><input type="text" name="pwd1" class="tx">&nbsp;<font color="red">*</font></td>
    								</tr>
    								<tr>
    									<td>&nbsp;&nbsp;&nbsp;新密码：</td>
    									<td><input type="text" name="pwd2" class="tx">&nbsp;<font color="red">*</font></td>
    								</tr>
    								<tr>
    									<td>&nbsp;&nbsp;&nbsp;密码确认：</td>
    									<td><input type="text" name="pwd3" class="tx">&nbsp;<font color="red">*</font></td>
    								</tr>
    								<tr>
    									<td align="left" colspan="2">&nbsp;</td>
    								</tr>
    								<tr>
    									<td align="center">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="submit" name="submit" value="提交" class="tx"></td>
    									<td align="center">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="reset" name="reset" value="取消" class="tx"></td>
    								</tr>
    								<tr>
    									<td align="left" colspan="2"><c:remove var="Y_pwdinfo" scope="session"/>&nbsp;</td>
    								</tr>
    							</table>
    							</form>
    							<br>  							
    					<hr width="60%" size="1">					
    					<!-- 修改密码(end) -->
    								
    					</td>
    					<td width="100">
    						<!-- 操作步骤 -->
    							<table width="100%" border="0" cellpadding="0" cellspacing="0">
    							<tr>
    								<td background="/yuntong/picture/loginpage.gif" align="center"><br><font color="red">操作步骤</font></td>
    							</tr>
    							<tr>
    								<td background="/yuntong/picture/bg1.jpg">
    									&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;1.输入当前密码
    						<br><br>
    						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2.输入新密码
    						<br><br>
    						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;3.输入确认密码
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
    							
    							<!-- 提示信息 -->
    							<table width="100%" border="0" cellpadding="0" cellspacing="0">
    							<tr>
    								<td background="/yuntong/picture/loginpage.gif" align="center"><br><font color="red">提示信息</font></td>
    							</tr>
    							<tr>
    								<td align="center" background="/yuntong/picture/bg1.jpg">
    									<table border="0" width="80%" height="140">
    										<tr>
    											<td id="Y_tishi">
    												修改当前用户密码。为安全起见建议您经常修改密码
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
    			
    			
    			
    			<!-- 中间内容(结束) -->
    		</td>
    	</tr>
    </table>    
  </body>
</html>


