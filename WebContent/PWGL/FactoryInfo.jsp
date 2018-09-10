<%@ page language="java" pageEncoding="UTF-8"%>



<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
    <title>各项统计</title>

	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
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
    						<td>当前位置：>><a href="/yuntong/y_GoIndex">首页</a>>>查询统计>>各项统计</td>
    					</tr>
    				</table><br>
    				<!--================================================= 图形菜单 ============================-->
<table width="100%" border="0" cellpadding="0" cellspacing="0" class="tx">
	<tr>
		<td>
		
		    								
<TABLE align="center" id=secTable cellSpacing=0 cellPadding=0 width=100% border=0 class="css3">
  <TBODY> 
  <TR align=middle height=20>
                
    <TD class=sec2 onMouseMove=secBoard(0) width="10%">厂商业务排行</TD>
                
    <TD class=sec1 onMouseMove=secBoard(1) width="10%">厂商等级分布</TD>
                
    <TD class=sec1 onMouseMove=secBoard(2) width="10%">热门运输线路</TD>
                
    <TD class=sec1 onMouseMove=secBoard(3) width="10%">结算方式比例</TD>
  </TR>
  </TBODY>
</TABLE>
<!--总表-->     
<TABLE align="center" class=main_tab id=mainTable height=460 cellSpacing=0 
            cellPadding=0 width=100% border=0>
  <!--关于TBODY标记-->
  <TBODY style="DISPLAY: block"> 
  <TR>
                <TD vAlign=top align=middle><BR><BR>
                  
      <TABLE cellSpacing=0 cellPadding=0 width=291 border=0>
        <TBODY> 
        <TR> 
          <TD>
            <div align="center">   
   						<img src="<%=session.getAttribute("image_url3")%>" width=750 height=400 border=0 usemap="#<%=session.getAttribute("image_name3") %>" alt="">      
  					 </div>
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
                        <div align="center">   
   						<img src="<%=session.getAttribute("image_url2")%>" width=750 height=400 border=0 usemap="#<%=session.getAttribute("image_url2") %>" alt="">      
  					 </div>
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
                       <div align="center">   
   						<img src="<%=session.getAttribute("image_url4")%>" width=750 height=400 border=0 usemap="#<%=session.getAttribute("image_url4") %>" alt="">      
  					 </div>
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
                      <td>
                      <div align="center">   
   						<img src="<%=session.getAttribute("image_url5")%>" width=750 height=400 border=0 usemap="#<%=session.getAttribute("image_url5") %>" alt="">      
  					 </div>
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
    			
    			
    			
    			
    			<!-- 中间内容(结束) -->
    		</td>
    	</tr>
    </table>    
  </body>
</html>


  
  

