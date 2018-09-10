<%@ page language="java" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<HTML>
<HEAD><TITLE>用户登陆</TITLE>
    <META http-equiv=Content-Type content="text/html; charset=gb2312">
    <link rel="stylesheet" type="text/css" href="/yuntong/css/maple.css"/>
    <META content="MSHTML 6.00.2800.1106" name=GENERATOR>
</HEAD>
<BODY bgColor=#ffffff leftMargin=0 background=/yuntong/picture/bj1.gif topMargin=0>
<DIV id=Layer1 style="Z-INDEX: 1; LEFT: 0px; WIDTH: 100%; POSITION: absolute; TOP: 0px; HEIGHT: 100%">
    <FORM action="<%=path %>/foundation/service/login" method=post align="left">
        <DIV align=center>
            <TABLE height="100%" cellSpacing=0 cellPadding=0 width="100%" border=0>
                <TBODY>
                <TR>
                    <TD>
                        <TABLE cellSpacing=0 cellPadding=0 width=623 align=center border=0>
                            <TBODY>
                            <TR>
                                <TD align="center" colSpan=3 width="623" height="260"
                                    background="picture/welcome_01.gif">
                                    <!-- 验证码返回提示 -->
                                    <br><br><br><br><br>
                                    <font color="#ff60a0" size="5"></font>
                                </TD>
                            </TR>
                            <TR>
                                <TD rowSpan=4><IMG height=92 src="picture/welcome_02.gif"
                                                   width=20></TD>
                                <TD vAlign=left background="" height=13>
                                    <DIV align=left>
                                        <FONT color=#006633 size=2>用户名：</FONT>
                                        <FONT color=#006633 size=2>
                                            <INPUT value="" class=tx maxLength=15 size=15 name=username>
                                        </FONT>
                                        <FONT color=#006633 size=2></FONT>
                                    </DIV>
                                </TD>
                                <TD rowSpan=4><IMG height=92 src="picture/welcome_04.gif"
                                                   width=402></TD>
                            </TR>
                            <TR>
                                <TD vAlign=left background="" height=9>
                                    <DIV align=left>
                                        <FONT color=#006633 size=2>密&nbsp;&nbsp;&nbsp;码：
                                            <INPUT value="" class=tx type=password maxLength=15 size=15 name=password>
                                        </FONT>
                                    </DIV>
                                </TD>
                            </TR>
                            <TR>
                                <TD vAlign=left background="" height=21>
                                    <FONT color=#006633 size=2>验证码：
                                        <INPUT class=tx type=test maxLength=15 size=4 name=checkNum>　
                                    </FONT>
                                    <a href="#" onclick="doRequest();" style="text-decoration:none">
                                        <FONT color="#ff4080" size=2><span id="checkname"></span></FONT></a>
                                    <DIV align=center><FONT color=#006633 size=2>　　
                                        <input class=txt1 style="BACKGROUND-COLOR:#ffffff" type=submit value=确定 name=ChkCngPwd2>　
                                        <INPUT class=txt1 style="BACKGROUND-COLOR: #ffffff" type=reset value=取消 name=ChkCngPwd>
                                    </FONT></DIV>
                                </TD>
                            </TR>
                            <TR>
                                <TD align="center" height=2 width="175" background="picture/welcome_05.gif"></TD>
                            </TR>
                            </TBODY>
                        </TABLE>
                    </TD>
                </TR>
                </TBODY>
            </TABLE>
            <FONT color=red></FONT></DIV>
    </FORM>
</DIV>
</BODY>
</HTML>

