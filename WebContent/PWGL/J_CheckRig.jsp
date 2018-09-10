<%@ page language="java" pageEncoding="UTF-8"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
    <title>票务冲减</title>

	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<script type="text/javascript">

</script>
<script type="text/javascript" src="/yuntong/js/prototype1.js"></script>
<script type="text/javascript" src="/yuntong/js/autocomplete1.js"></script>
    <link rel="stylesheet" type="text/css" href="/yuntong/css/autocomplete1.css" />
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
    						<td>当前位置：>><a href="/yuntong/y_GoIndex">首页</a>>>票务冲减</td>
    					</tr>
    				</table>
    				<table border="0" cellpadding="0" cellspacing="0" class="tx" width="100%">
					<tr>
						<td background="">
						<img height="70" width="90" border="0" src="/yuntong/picture/shdj/cg1.bmp">							
						</td>
					</tr>
					</table>
    				<table border="0" width="100%" cellpadding="" cellspacing="">
    					<tr>
    						<td>
    										<form  method="get" name="form2">
    							    <table border="0" cellpadding="0" cellspacing="0" class="tx" width="100%">
    							    	<tr>
    							    		<td align="center">充检已交货票</td>
    							    	</tr>
    							    	<tr>
    							    		<td><br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    							    			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;请您输入货票编号：<input class="tx" type="text" id="RegisterId" name="RegisterID">   							    			
    							    			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    							    			<input class="tx" type="button" onclick="doRequest();" name="Find" value="查找">
    							    		</td>
    							    	</tr>
    							    </table>
    							    </form>
    				 <form action="/yuntong/PWGL/j_CheckRigAction" method="post" name="form1">
    							   <table width="100%" border="0" cellpadding="0" cellspacing="0" class="tx">
					<tr><td>&nbsp;&nbsp;货票编号:<input class="tx" type="text" name="RegisterID" size="20"></td>
						<td>&nbsp;&nbsp;流水号:&nbsp;&nbsp;&nbsp;<input class="tx" type="text" name="RegisterGlideID" size="20"></td>	
						<td>&nbsp;&nbsp;货物编号:<input class="tx" type="text" name="RegisterGoodsID" size="20"><font color="red">*</font></td>
						</tr>
				   <tr>
				       <td>&nbsp;&nbsp;厂家编号:<input class="tx" type="text" name="RegisterFactoryID" size="20"><font color="red"></font></td>
					   <td>&nbsp;&nbsp;客户编号:<input class="tx" type="text" name="RegisterClientID" size="20" disabled="disabled"><font color="red"></font></td>
					   <td>&nbsp;&nbsp;运输编号:<input class="tx" type="text" name="RegisterConveyanceID"size="20"></td>
			       </tr>
					<tr><td>&nbsp;&nbsp;运输线路:<input class="tx" type="text" name="RegisterLine" size="20"><font color="red">*</font></td>
					    <td>&nbsp;&nbsp;结算方式:<input class="tx" type="text" name="RegisterFreightID" size="20"></td>
					    <td>&nbsp;&nbsp;付款人:&nbsp;&nbsp;&nbsp;<input class="tx" type="text" name="RegisterPayerName"size="20"><font color="red"></font></td>
					</tr>
					<tr><td>&nbsp;&nbsp;操作员:&nbsp;&nbsp;&nbsp;<input class="tx" type="text" name="RegisterUserID" size="20"><font color="red">*</font></td>
						<td>&nbsp;&nbsp;制单时间:<input class="tx" type="text" name="RegisterDate" size="20"><font color="red">*</font></td>
						<td>&nbsp;&nbsp;状态:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<select class="tx" name="RegisterState"><c:forEach items="${sessionScope.list}" var="li"><option value="${li.rstateId}">${li.rstateName}</option>	</c:forEach></select></td>
    				 </tr>
				   <tr>	
    					 <td align="center" colspan="3">备注：<textarea name="RegisterRemark" class="tx" rows="5" cols="44"></textarea></td>
    			</tr>
    			<tr>
    						           <td colspan="3" align="center">	    	<br>	
    							    		<input class="tx" align="right" name="submit" type="submit" value="开始充减" ><br>&nbsp;
    							    		</td>    							    	
    							    	</tr>
    							    </table>
    							    
    							    </form>
    						</td>
    						<td width="100">
    							<!-- 操作步骤 -->
    							<table width="100%" border="0" cellpadding="0" cellspacing="0">
    							<tr>
    								<td background="/yuntong/picture/loginpage.gif" align="center"><br><font color="red">操作步骤</font></td>
    							</tr>
    							<tr>
    								<td background="/yuntong/picture/bg1.jpg"><font color="#804060">
    						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;1.车辆和司机选择
    						<br><br>
    						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2.货物装填
    						<br><br>
    						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;3.生成车次<br>
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
    							<br>
    							<!-- 提示信息 -->
    							<table width="100%" border="0" cellpadding="0" cellspacing="0">
    							<tr>
    								<td background="/yuntong/picture/loginpage.gif" align="center"><br><font color="red">提示信息</font></td>
    							</tr>
    							<tr>
    								<td background="/yuntong/picture/bg1.jpg"  align="center">
    									<table border="0" width="80%" height="140">
    										<tr>
    											<td id="Y_tishi">
    												已送冲减是对已经完成整个业务流程的货票进行状态的改变，结束此货票的使命
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

