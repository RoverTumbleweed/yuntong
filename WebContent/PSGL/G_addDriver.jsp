<%@ page language="java" pageEncoding="UTF-8"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
    <title>司机信息登记</title>

	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
 	<link href="../css/lnroad.css" rel="stylesheet" type="text/css">
    <link href="../css/maple.css" rel="stylesheet" type="text/css">

  </head>
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
    						<td>当前位置:>><a href="/yuntong/y_GoIndex">首页</a>>>司机信息登记</td>
    					</tr>
    					
    				</table>
    				<table border="0" cellpadding="0" cellspacing="0" class="tx" width="100%">
    					<tr>
    						<td background="" align="left">
								<img height="77" width="90" border="0" src="/yuntong/picture/psgl/jl3.bmp">
    						</td>
    					</tr>
    				</table>
    				<table>
    					<tr><td height="20"></td></tr>
    				</table>
    				<!-- 添加司机信息(开始) -->
    				<table border="0" cellpadding="0" cellspacing="0"  width="100%">
    				<tr><td rowspan="2">
    				  <table border="0" cellpadding="0" cellspacing="0" class="tx" width="100%">
    							    	<tr><td bgcolor="a0c0c0"><font color="#804060" size="3">司机信息登记</font></tr>
    							    	<tr>
    							    		<td bgcolor="a0c0c0">
    							    		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;司机信息查询<br>
    							    		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;输入司机姓名
    							    		<input class="tx" type="text" id="findDriverName" name="findDriverName" value="">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    							    			<input class="tx" type="button" onClick="findDriverInfo();" name="Find" value="查  询">
    							    			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    							    			<input type="button" name="carList" onclick="getDriverNameList(1);" value="显示司机列表" class=tx>    							    			
    							    			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    							    			<input type="button" id="continueAdd" name="continueAdd" onclick="continueAdd();" value="继续添加" class=tx disabled="disabled">
    							    		</td>
    							    	</tr>
				      </table>
				      <form action="#" method="post" name="driverFrm">
    				<table width="100%" border="0" cellpadding="0" cellspacing="0" class="tx">
    				 <tr>
        <td width="138"><div align="left">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;姓&nbsp;&nbsp;&nbsp;&nbsp;名:</div></td>
        <td width="350">
        	<div align="left">
              <input class=tx name="driverName" type="text" id="driverName" size="40">
            </div></td>
            
      </tr>
      <tr>
        <td><div align="left">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;年&nbsp;&nbsp;&nbsp;&nbsp;龄:</div></td>
        <td><div align="left">
              <input class=tx name="driverAge" type="text" id="driverAge" size="40">
        </div></td>
        
      </tr>
      <tr>
        <td><div align="left">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;性&nbsp;&nbsp;&nbsp;&nbsp;别:</div></td>
        <td><div align="left">
		 	<input type="radio" id="driverSex" name="driverSex" value="0" checked="checked">男
		 	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
         	 <input type="radio" id="driverSex" name="driverSex" value="1">女
          </div></td>
      </tr>
      <tr>
        <td><div align="left">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;上传照片:</div></td>
        <td><div align="left">
              <input class=tx name="driverPhoto" type="file" id="driverPhoto" size="15">
			  <input class="tx" name="upload" type="button" id="upload" value="上   传" onclick="uploadpic();">
        </div></td>
      </tr>
      <tr>
        <td><div align="left">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;驾驶证号:</div></td>
        <td><div align="left">
              <input name="driverDriverCardID" type="text" class=tx id="driverDriverCardID" size="40">
          </div></td>
      </tr>
      <tr>
        <td><div align="left">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;身份证号:</div></td>
        <td><div align="left">
              <input class=tx name="driverCardID" type="text" id="driverCardID" size="40">
        </div></td>
      </tr>
      <tr>
        <td><div align="left">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;联系电话:</div></td>
        <td><div align="left">
          <input class=tx name="driverPhoneNum" type="text" id="driverPhoneNum" size="40">
        </div></td>
       
      </tr>
      <tr>
        <td><div align="left">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;隶属分公司:</div></td>
        <td><div align="left">
              <select name="driverCompanyID" class="tx" id="driverCompanyID">
             <c:forEach items="${filialeList}" var="filialeList">
        	<option value="${filialeList.filialeId}">${filialeList.filialeName}</option>
        </c:forEach>
              </select>
          </div></td>
      </tr>
      <tr>
        <td><div align="left">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;备&nbsp;&nbsp;&nbsp;&nbsp;注:</div></td>
        <td><div align="left">
              <textarea name="driverRemarkInfo" cols="40" rows="5" class="tx" id="driverRemarkInfo"></textarea>
        </div></td>
      </tr>
      
      
      <tr>
        <td colspan="2"><div align="center">
          <input class="tx" name="submit" type="button" id="submit" value="提交" onClick="doRequest();">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
          <input class="tx" name="reset" type="reset" id="reset" value="重置" onclick="clear();">        
        </div></td>
      </tr>
    				</table></form>
    					<!-- 添加司信息（结束） -->    	    						    						    						
    						</td>
    					<td valign="top" width="20%" id=carList> 					
  							<!-- 操作步骤 -->
    							<table width="100%" border="0" cellpadding="0" cellspacing="0">
    							<tbody id=tb>
    							<tr>
    								<td background="/yuntong/picture/loginpage.gif" align="center"><br><font color="red">操作步骤</font></td>
    							</tr>
    							<tr>
    								<td background="/yuntong/picture/bg1.jpg"><font color="#804060">
    						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;1.选择查询条件
    						<br><br>
    						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2.输入查询信息查询
    						<br><br>
    						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;3.检查无误后选择确定<br>
    						</font>
    						<br>
    								</td>
    							</tr>
    							<tr>
    							<td>
    								<img src="/yuntong/picture/bottom.jpg">
    							</td>
    							</tr>
    							</tbody>
    							</table>
    							<!-- 操作步骤 -->
						</td>
    					</tr>
    					<tr>
    						<td valign="top">
    							<!-- 提示信息 -->
    							<table width="100%" border="0" cellpadding="0" cellspacing="0">
    							<tr>
    								<td background="/yuntong/picture/loginpage.gif" align="center"><br><font color="red">提示信息</font></td>
    							</tr>
    							<tr>
    								<td background="/yuntong/picture/bg1.jpg">
    									
    									<table border="0" width="80%" height="140" align="center">
    										<tr>
    											<td>
    												登记新加入的司机信息
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
