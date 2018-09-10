<%@ page language="java" pageEncoding="UTF-8"%>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
    <title>物流管理系统</title>

  </head>
<!-- 样式 -->

<LINK href="/yuntong/css/maple.css" type=text/css rel=STYLESHEET>
  <SCRIPT language=javascript>
   function secBoard(n)
  {
    for(i=0;i<secTable.cells.length;i++)
      secTable.cells[i].className="sec1";
    secTable.cells[n].className="sec2";
    for(i=0;i<mainTable.tBodies.length;i++)
      mainTable.tBodies[i].style.display="none";
    mainTable.tBodies[n].style.display="block";
  }
      </SCRIPT>
  <body background="picture/bk3.jpg" topmargin="0" marginheight="0" leftmargin="0" rightmargin="0" marginwidth="0">
  	<%@include file="Y_Top.jsp" %>
	 <table width="984"  BORDER=0 CELLSPACING=0 CELLPADDING=0>    	
    	<tr>
    		<td width="12%" valign="top" >
    		<!-- 左菜单 -->
    		<%@include file="Y_Left.jsp" %>
    		</td>
    		<td valign="top" align="left" width="88%">
    			<!-- 中间内容 -->
    			<table border="0" width="100%"  topmargin="0" marginheight="0" leftmargin="0" rightmargin="0" marginwidth="0">
    				<tr>
    					<td colspan="3" class="tx">当前位置：>><a href="/yuntong/y_GoIndex">首页</a></td>
    				</tr>
    				<tr>
    				
    					<td colspan="3">
    						<table width="100%" border="0" cellpadding="0" cellspacing="0">
    							<tr><td>
   <!--================================================= 图形菜单 ============================-->
<table width="100%" border="0" cellpadding="0" cellspacing="0" class="tx">
	<tr>
		<td>   								
    									<TABLE align="center" id=secTable cellSpacing=0 cellPadding=0 width=100% border=0 class="css3">
  <TBODY> 
  <TR align=middle height=20>
                
    <TD class=sec2 onMouseMove=secBoard(0) width="10%">南方业务</TD>
                
    <TD class=sec1 onMouseMove=secBoard(1) width="10%">北方业务</TD>
                
    <TD class=sec1 onMouseMove=secBoard(2) width="10%">统计查询</TD>
                
    <TD class=sec1 onMouseMove=secBoard(3) width="10%">资料维护</TD>
  </TR>
  </TBODY>
</TABLE>
<!--总表-->     
<TABLE align="center" class=main_tab id=mainTable height=300 cellSpacing=0 
            cellPadding=0 width=100% border=0>
  <!--关于TBODY标记-->
  <TBODY style="DISPLAY: block"> 
  <TR>
                <TD vAlign=top align=middle><BR><BR>
                  
      <TABLE cellSpacing=0 cellPadding=0 width=291 border=0>
        <TBODY> 
        <TR> 
          <TD>
            <img src="picture/tyyw.gif" width="552" height="248" border="0" usemap="#Map1" >
            <map name="Map1" id="Map1">
            <c:if test="${userLoginInfo.roleSHGL==1}">
            <area shape="rect" coords="16,23,101,109" onmousemove="myInfoXmlHttpDoRequest(this.id);" id="index1001" href="/yuntong/SHGL/y_GoSHGL.do" />
            </c:if>
            <c:if test="${userLoginInfo.roleSHGL==0}">
            <area shape="rect" coords="16,23,101,109" onmousemove="myInfoXmlHttpDoRequest(this.id);" id="index1001" style="cursor:hand" onclick="quanxian();" />
            </c:if>
            <c:if test="${userLoginInfo.rolePWGL==1}">
            <area shape="rect" coords="167,18,245,112" href="/yuntong/PWGL/J_FareMath.jsp" id="index1003"  onmousemove="myInfoXmlHttpDoRequest(this.id);"/>
            </c:if>
            <c:if test="${userLoginInfo.rolePWGL==0}">
            <area shape="rect" coords="167,18,245,112"  style="cursor:hand" onclick="quanxian();" id="index1003" onmousemove="myInfoXmlHttpDoRequest(this.id);"/>
            </c:if>
            <c:if test="${userLoginInfo.rolePSGL==1}">
            <area shape="rect" coords="309,22,384,112" href="/yuntong/PSGL/g_GoSJYS.do" id="index1004" onmousemove="myInfoXmlHttpDoRequest(this.id);" />
            <area shape="rect" coords="456,18,529,113" href="/yuntong/PSGL/g_GoSJYS.do" id="index1005"  onmousemove="myInfoXmlHttpDoRequest(this.id);" />
            </c:if>
            <c:if test="${userLoginInfo.rolePSGL==0}">
            <area shape="rect" coords="309,22,384,112" style="cursor:hand" onclick="quanxian();" id="index1004" onmousemove="myInfoXmlHttpDoRequest(this.id);"/>
            <area shape="rect" coords="456,18,529,113"  style="cursor:hand" onclick="quanxian();" id="index1005"  onmousemove="myInfoXmlHttpDoRequest(this.id);"/>
            </c:if>
            <c:if test="${userLoginInfo.roleSHGL==1}">
            <area shape="rect" coords="123,126,202,222" onmousemove="myInfoXmlHttpDoRequest(this.id);" id="index1002" href="/yuntong/SHGL/y_GoWGHP.do" />
            </c:if>
            <c:if test="${userLoginInfo.roleSHGL==0}">
            <area shape="rect" coords="123,126,202,222" onmousemove="myInfoXmlHttpDoRequest(this.id);" id="index1002" style="cursor:hand" onclick="quanxian();"/>
            </c:if>
            <c:if test="${userLoginInfo.roleCWGL==1}">
            <area shape="rect" coords="313,126,386,222" href="/yuntong/Financial/x_Financial.do?test=per" id="index1006"  onmousemove="myInfoXmlHttpDoRequest(this.id);"/>
            </c:if>
            <c:if test="${userLoginInfo.roleCWGL==0}">
            <area shape="rect" coords="313,126,386,222"  style="cursor:hand" onclick="quanxian();"  id="index1006"  onmousemove="myInfoXmlHttpDoRequest(this.id);"/>
            </c:if>
            
            </map>
          </TD>
        </TR>
        </TBODY>
      </TABLE>
    </TD></TR></TBODY><!--关于cells集合-->
              <TBODY style="DISPLAY: none">
              <TR>
                <TD vAlign=top align=middle><BR><BR>
                  
      <TABLE cellSpacing=0 cellPadding=0 width=291 border=0>
        <TBODY> 
        <TR> 
                      <TD>
                        <p><img src="picture/jstj.gif" width="551" height="239" border="0" usemap="#Map2" />
							<map name="Map2" id="Map2">
							<c:if test="${userLoginInfo.roleCWGL==1}">
							<area shape="rect" coords="31,12,120,105" href="/yuntong/Financial/x_Financial.do?test=pick" id="index2006"  onmousemove="myInfoXmlHttpDoRequest(this.id);"/>
							</c:if>
							<c:if test="${userLoginInfo.roleCWGL==0}">
							<area shape="rect" coords="31,12,120,105" style="cursor:hand" onclick="quanxian();" id="index2006"  onmousemove="myInfoXmlHttpDoRequest(this.id);"/>
							</c:if>
							<c:if test="${userLoginInfo.roleSHGL==1}">
							<area shape="rect" coords="232,17,323,104" id="index2001" onmousemove="myInfoXmlHttpDoRequest(this.id);" href="/yuntong/SHGL/y_GoDHQR.do" />
							</c:if>
							<c:if test="${userLoginInfo.roleSHGL==0}">
							<area shape="rect" coords="232,17,323,104" id="index2001" onmousemove="myInfoXmlHttpDoRequest(this.id);"  style="cursor:hand" onclick="quanxian();"/>
							</c:if>
							<c:if test="${userLoginInfo.rolePSGL==1}">
							<area shape="rect" coords="428,13,512,103" href="/yuntong/PSGL/g_GoSNPS.do" id="index2004" onmousemove="myInfoXmlHttpDoRequest(this.id);"  />
							</c:if>
							<c:if test="${userLoginInfo.rolePSGL==0}">
							<area shape="rect" coords="428,13,512,103"  style="cursor:hand" onclick="quanxian();"  id="index2004" onmousemove="myInfoXmlHttpDoRequest(this.id);"/>
							</c:if>
							<c:if test="${userLoginInfo.rolePWGL==1}">
							<area shape="rect" coords="137,114,213,204" href="/yuntong/PWGL/j_GetStateAction.do" id="index2004" onmousemove="myInfoXmlHttpDoRequest(this.id);" />
							</c:if>
							<c:if test="${userLoginInfo.rolePWGL==0}">
							<area shape="rect" coords="137,114,213,204"  style="cursor:hand" onclick="quanxian();" id="index2004" onmousemove="myInfoXmlHttpDoRequest(this.id);"/>
							</c:if>
							<c:if test="${userLoginInfo.roleSCGL==1}">
							<area shape="rect" coords="343,115,426,204" href="/yuntong/SCGL/M_scgll_2.jsp" id="index2008"  onmousemove="myInfoXmlHttpDoRequest(this.id);"/>
							</c:if>
							<c:if test="${userLoginInfo.roleSCGL==0}">
							<area shape="rect" coords="343,115,426,204" style="cursor:hand" onclick="quanxian();"  id="index2008"  onmousemove="myInfoXmlHttpDoRequest(this.id);" />
							</c:if>
							</map></p>
                      </TD>
        </TR>
        </TBODY>
      </TABLE>
    </TD></TR></TBODY><!--关于tBodies集合-->
              <TBODY style="DISPLAY: none">
              <TR>
                <TD vAlign=top align=middle><BR><BR>
                  
      <TABLE cellSpacing=0 cellPadding=0 width=291 border=0>
        <TBODY> 
        <TR> 
                      <TD>
                        <img src="picture/sjcs.gif" width="552" height="231" border="0" usemap="#Map3" >
                        <map name="Map3" id="Map3">
                        <c:if test="${userLoginInfo.roleTJCX==1}">
                        <area shape="rect" coords="115,47,204,149" href="/yuntong/PWGL/j_RigHotLineAction.do" id="index3001"  onmousemove="myInfoXmlHttpDoRequest(this.id);" />
                        <area shape="rect" coords="323,49,405,152" href="/yuntong/CXTJ/G_cxtj.jsp" id="index3002" onmousemove="myInfoXmlHttpDoRequest(this.id);"/>
                        </c:if>
                        <c:if test="${userLoginInfo.roleTJCX==0}">
                        <area shape="rect" coords="115,47,204,149" style="cursor:hand" onclick="quanxian();" id="index3001"  onmousemove="myInfoXmlHttpDoRequest(this.id);"  />
                        <area shape="rect" coords="323,49,405,152" style="cursor:hand" onclick="quanxian();" id="index3002" onmousemove="myInfoXmlHttpDoRequest(this.id);" />
                        </c:if>
                        </map>
                      </TD>
        </TR>
        </TBODY>
      </TABLE>
    </TD></TR></TBODY><!--关于display属性-->
              <TBODY style="DISPLAY: none">
              <TR>
                <TD vAlign=top align=middle><BR><BR>
      <table cellspacing=0 cellpadding=0 width=291 border=0>
        <tbody> 
        <tr> 
                      <td><img src="picture/xtgl.gif" width="581" height="244" border="0" usemap="#Map4" >
                      <map name="Map4" id="Map4">
                      <area shape="rect" coords="18,8,90,97" href="#" />
                      <c:if test="${userLoginInfo.roleJBZL==1}">
						<area shape="rect" coords="169,8,242,102" href="/yuntong/JBZL/y_GoYsyf.do" id="left7004" onmousemove="myInfoXmlHttpDoRequest(this.id);"/>						
						<area shape="rect" id="index4001" onmousemove="myInfoXmlHttpDoRequest(this.id);" coords="323,8,402,104" href="/yuntong/JBZL/y_GoCZY.do" />
						</c:if>
						<c:if test="${userLoginInfo.roleJBZL==0}">
						<area shape="rect" coords="169,8,242,102" style="cursor:hand" onclick="quanxian();" />						
						<area shape="rect" id="index4001" onmousemove="myInfoXmlHttpDoRequest(this.id);" coords="323,8,402,104" style="cursor:hand" onclick="quanxian();" />
						</c:if>
						<area shape="rect" href="/yuntong/JBZL/y_GoXGMM.do" coords="479,8,560,105" id="index4004"  onmousemove="myInfoXmlHttpDoRequest(this.id);" />											
						<area shape="rect" coords="96,113,168,208"  />
						<c:if test="${userLoginInfo.rolePSGL==1}">
						<area shape="rect" coords="245,114,331,212" href="/yuntong/PSGL/g_GoPSGL.do" />
						</c:if>
						<c:if test="${userLoginInfo.rolePSGL==0}">
						<area shape="rect" coords="245,114,331,212"   style="cursor:hand" onclick="quanxian();"  />
						</c:if>
						<c:if test="${userLoginInfo.roleJBZL==1}">
						<area shape="rect" coords="411,114,500,210" href="/yuntong/JBZL/y_GoYHQX.do" id="index4010" onmousemove="myInfoXmlHttpDoRequest(this.id);" />
						</c:if>
						<c:if test="${userLoginInfo.roleJBZL==0}">
						<area shape="rect" coords="411,114,500,210"  style="cursor:hand" onclick="quanxian();" id="index4010" onmousemove="myInfoXmlHttpDoRequest(this.id);"/>
						</c:if>
						</map>
                      </td>
        </tr>
        </tbody> 
      </table>
    </TD>
  </TR>
  </TBODY>
</TABLE> 
</td>
	</tr>
</table> 
   <!--================================================= 图形菜单（结束） ============================-->
    								</td>
    							<!-- 站内公告 -->	
    								<td width="20%" valign="top">
    									<!-- 系统公告 --><br>
    							<table width="100%" border="0" cellpadding="0" cellspacing="0">
    							<tr>
    								<td background="/yuntong/picture/loginpage.gif" align="center"><br><b><font color="#804060">--系统公告--</font></b></td>
    							</tr>
    							<tr>
    								<td background="/yuntong/picture/bg1.jpg" align="center" valign="top">
    									<table width="75%" border="0" cellpadding="0" cellspacing="0">
    										<tr>
    											<td>标题:<font color="#804060">${Y_gonggao.afficheTitle}</font>
    											<hr width="100%" size="1"></td>    											
    										</tr>
    										<tr>
    											<td height="128" valign="top">内容:<br>
    											<marquee scrollamount='1' scrolldelay='30' direction= "up" id='helpor_net' height='120' onmouseover='helpor_net.stop()' onmouseout='helpor_net.start()' Author:redriver; For more,visit_3Awww.helpor.net>
    											<font color="#804060">
    											${Y_gonggao.afficheInfo}
    											</font>
    											</marquee>
    											</td>    											    											
    										</tr>
    										<tr>
    											<td><hr width="100%" size="1">
    											发布时间:<br><font color="#804060">${Y_gonggao.arricheFormatDate}</font>
    											</td>    											
    										</tr>
    										<tr>
    											<td><hr width="100%" size="1">
    											发布人:<font color="#804060">${Y_gonggao.afficheUserName}</font>
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
    							<!-- 系统公告 -->
    								</td>
    							</tr>
    						</table>    					
    					</td>
    				</tr>
    				<tr>
    					<td class="tx" width="45%" height="93" onclick="" valign="top">
							<table border="0" cellpadding="0" cellspacing="0" width="100%">
    							<tr>
    								<td><font color="#804060">用户信息</font></td>
    							</tr>
    							<tr>
    								<td>
    									&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<font color="#804060">权&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;限：</font>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;${sessionScope.userLoginInfo.userRoleName}<br>
										&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<font color="#804060">所属公司：</font>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;${sessionScope.userLoginInfo.userFilialeName}<br>
										&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<font color="#804060">所属部门：</font>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;${sessionScope.userLoginInfo.userDepartmentName}<br>
										&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<font color="#804060">登陆次数：</font>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;${sessionScope.userLoginInfo.userLoginNum}
    								</td>
    								
    							</tr>
    						</table>
						</td>
    					<td width="10%" align="center" valign="top"><img src="picture/tcp.bmp"></td>
    					<td height="93" id="" width="45%" class="tx" valign="top">
    					
    						<table border="0" cellpadding="0" cellspacing="0" width="100%">
    							<tr>
    								<td><font color="#804060">即时帮助</font></td>
    							</tr>
    							<tr>
    								<td  class="" align="center">
    									<table  height="100%" width="88%" border="0" cellpadding="0" cellspacing="0">
    										<tr>
    											<td id="Y_tishi">
    												欢迎登陆运通物流管理系统，本系统包含七大功能模块，分别为：
    												收货管理，配送管理，财务管理，市场管理，票务管理，查询统计，
    												基本资料。详细使用步骤请查看帮助信息			
    											</td>
    										</tr>
    									</table>
    									
    								</td>
    							</tr>
    						</table>
    						
						</td>
    				</tr>
    				<tr>
    					<td align="center" colspan="3"><font color="#804060">
    						CopyRight(C) 版权归上海宁都货运有限公司所有 <br>
上海公司：闵行区都庄路4226号<br>
电话：021－34070436 传真：021－34075436<br></font>
    					</td>
    				<tr>
    			</table>
    		</td>
    	</tr>
    </table>    
  </body>
</html>

