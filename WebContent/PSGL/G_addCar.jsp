<%@ page language="java" pageEncoding="UTF-8"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
    <title>车辆信息登记</title>

	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">

	

    <link href="../css/lnroad.css" rel="stylesheet" type="text/css">
    <link href="../css/maple.css" rel="stylesheet" type="text/css">
   
    <script type="text/javascript" language="javascript"> 
	function continueAdd(){
		clear();
		document.truckFrm.truckNum.disabled=false;
		document.truckFrm.truckEngineNum.disabled=false;
		document.truckFrm.truckRunNum.disabled=false;
		document.truckFrm.truckStyleID.disabled=false
		document.truckFrm.truckColor.disabled=false;
		document.truckFrm.truckPhoto.disabled=false;
		document.truckFrm.truckBuyDate.disabled=false;
		document.truckFrm.truckFixed.disabled=false;
		document.truckFrm.truckCompanyID.disabled=false;
		document.truckFrm.truckInsuranceNum.disabled=false;
		document.truckFrm.upload.disabled=false;
		document.truckFrm.submit.disabled=false;
		document.truckFrm.reset.disabled=false;
		document.getElementById("continueAdd").disabled=true;
	}
	//车牌号码列表开始
	
	function showcalendar(obj){
  		dv=window.showModalDialog("calendar.htm","44","center:1;help:no;status:no;dialogHeight:246px;dialogWidth:216px;scroll:no")
  		if (dv) {if (dv=="null") obj.value='';else obj.value=dv;}
	}
    </script>
     <!-- 提交表单ajax结束 -->

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
    			  
    				<table border="0" width="100%" class="tx" cellpadding="0" cellspacing="0">
    					<tr>
    						<td>当前位置：>><a href="/yuntong/y_GoIndex">首页</a>>>车辆信息登记</td>
    					</tr>
    					
    				</table>
    				<table border="0" class="tx" cellpadding="0" cellspacing="0" width="100%">
    					<tr>
    						<td background="" align="left">
    						<img height="77" width="90" border="0" src="/yuntong/picture/psgl/car.gif">
    						</td>
    					</tr>
    				</table>
    				<table>
    					<tr><td height="20"></td></tr>
    				</table>
    				<!-- 添加车辆信息(开始) -->
    				<table border="0" width="100%" cellpadding="0" cellspacing="0">
    				<tr><td rowspan="2">
    				  <table border="0" class="tx" cellpadding="0" cellspacing="0" width="100%">
    							    	<tr>
    							    		<td  bgcolor="a0c0c0"><font color="#804060" size="3">车辆信息登记：</font></td>
    							    	</tr>
    							    	<tr>
    							    		<td bgcolor="a0c0c0">
    							    		
    							    		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;已登记车辆查询：<br>
    							    			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;车牌号码：<input class="tx" type="text" id="findTruckNum" name="findTruckNum">
    							    			
    							    			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    							    			<input class="tx" type="button" onclick="findTruckInfo();" name="Find" value="查找信息">
    							    			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    							    			<input type="button" name="carList" onclick="getTruckNumList(1);" value="显示车牌列表" class=tx>    							    			
    							    			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    							    			<input type="button" id="continueAdd" name="continueAdd" onclick="continueAdd();" value="继续添加" class=tx disabled="disabled">  
    							    		</td>
    							    	</tr>
    							    </table>
    		<form action="#" method="post" name="truckFrm">
    				<table width="100%" border="0" cellpadding="0" cellspacing="0" class=tx>
    				 <tr>
        <td width="138" align="left"><div>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;车牌号码:</div></td>
        <td width="350" align="left">
		
            <div align="left">
              <input class=tx name="truckNum" type="text" id="truckNum" size="40">&nbsp;&nbsp;<font color="red">*</font>
            </div></td>
            
      </tr>
      <tr>
        <td><div  align="left">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;发动机号:</div></td>
        <td><div  align="left">
              <input class=tx name="truckEngineNum" type="text" id="truckEngineNum" size="40">&nbsp;&nbsp;<font color="red">*</font>
        </div></td>
      </tr>
      <tr>
        <td><div align="left">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;行驶证号:</div></td>
        <td><div align="left">
              <input class=tx name="truckRunNum" type="text" id="truckRunNum" size="40">&nbsp;&nbsp;<font color="red">*</font>
        </div></td>
      </tr>
      <tr>
        <td><div align="left">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;保 险 号:</div></td>
        <td><div align="left">
              <input class=tx name="truckInsuranceNum" type="text" id="truckInsuranceNum" size="40">&nbsp;&nbsp;<font color="red">*</font>
        </div></td>
      </tr>
      <tr>
        <td><div align="left">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;车 型 号:</div></td>
        <td><div align="left">
        <select class=tx name="truckStyleID" id="truckStyleID">
        <c:forEach items="${truckStyleList}" var="styleList">
        	<option value="${styleList.truckStyleID}">${styleList.truckStyleName}</option>
        </c:forEach>
        </select>
        </div></td>
      </tr>
      <tr>
        <td><div align="left">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;颜&nbsp;&nbsp;&nbsp;色:</div></td>
        <td><div align="left">
              <input class=tx name="truckColor" type="text" id="truckColor" size="40">&nbsp;&nbsp;<font color="red">*</font>
        </div></td>
      </tr>
      <tr>
        <td><div align="left">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;上传照片:</div></td>
        <td><div align="left">
              <input class=tx name="truckPhoto" type="file" id="truckPhoto" size="15">
			  <input class="txt1" name="upload" type="button" id="upload" value="上   传" onclick="uploadpic();">&nbsp;&nbsp;<font color="red">*</font>
        </div></td>
      </tr>
      <tr>
        <td><div align="left">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;购买日期:</div></td>
        <td><div align="left">
              <input  class=tx name="truckBuyDate" type="text" id="truckBuyDate" size="40" style="CURSOR: hand" onclick=showcalendar(this,this) readOnly>&nbsp;&nbsp;<font color="red">*</font>
        </div></td>
      </tr>
      <tr>
        <td><div align="left">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;使用年限:</div></td>
        <td><div align="left">
              <input class=tx name="truckFixed" type="text" id="truckFixed" size="40">&nbsp;&nbsp;<font color="red">*</font>
        </div></td>
      </tr>
      <tr>
        <td><div align="left">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;隶属分公司:</div></td>
        <td><div align="left">
            <select class=tx name="truckCompanyID" id="truckCompanyID">
        <c:forEach items="${filialeList}" var="filialeList">
        	<option value="${filialeList.filialeId}">${filialeList.filialeName}</option>
        </c:forEach>
        </select>
        </div></td>
      </tr>
      <tr>
        <td colspan="2"><div align="center">
          <input class="tx" name="submit" type="button" id="submit" value="提  交" onclick="doRequest();">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
          <input class="tx" name="reset" type="button" id="reset" value="重  置" onclick="clear();">        
        </div></td>
      </tr>
    				</table>
    				</form>
    				
    				<!-- 添加车辆信息（结束） -->  
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
    						<td valign="top" height="80%">
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
    												登记新购买的车辆信息
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

