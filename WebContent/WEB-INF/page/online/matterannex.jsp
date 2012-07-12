<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <script type="text/javascript" src="<s:url value="/source/js/jquery-1.4.2.min.js"/>"></script>
        <title>中国瑞昌网为您服务！</title>
        <style type="text/css">
            <!--
            body {
                margin-top: 0px;
                background: url(/images/xy2009_20.jpg) center top repeat-x;
            }
            -->
        </style>
        <link href="<s:url value="/css/ruichang.css"/>" rel="stylesheet" type="text/css" />
        <style type="text/css">
            <!--
            .style9 {color: #CC0000}
            .style13 {font-size: 9pt}
            .style15 {color: #FFFFFF}
            .style21 {color: #FFFFFF; font-family: Arial, Helvetica, sans-serif; }
            .style34 {font-family: Arial, Helvetica, sans-serif}
            .style38 {
                color: #990000;
                font-weight: bold;
            }

            -->
            .annex{background-image:url(images/attach.png);background-repeat: no-repeat;background-position: left;padding:0 20px;}
        </style>
        <script src="/Scripts/swfobject_modified.js" type="text/javascript"></script>
    </head>

    <body>
    	<s:include value="../top.jsp"/>
    	<div id="whole_bg">
  			<div id="content">
            <s:include value="../header.jsp"/>
            <table width="1000" border="0" cellspacing="0" cellpadding="0">
                <tr>
                    <td width="715" valign="top">
                        <table width="100%"  border="0" cellspacing="0" cellpadding="0">
                            <tr>
                                <td height="53" background="images/wsbs_icon.jpg"><div align="right"></div></td>
                            </tr>
                        </table>
                        <table width="100%"  border="0" cellspacing="0" cellpadding="0">
                            <tr>
                                <td height="5"><div align="right"></div></td>
                            </tr>
                        </table>
                        <table width="100%"  border="0" cellspacing="2" cellpadding="2">
                            <tr>
                                <td height="25"   class="red_xudi_line"><div align="left" class="hui">
                                        当前位置：
                                        <s:iterator  value="position"  status="st">
                                            <s:property value="name"/><s:if test="!#st.isLast()">&gt;&gt;</s:if>
                                        </s:iterator>
                                    </div></td>
                            </tr>
                        </table>
                        <table width="95%"  border="0" cellspacing="0" cellpadding="0">
                            <tr>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td><div align="center" class="news_tt">
                                        <div align=center class="news_bt"><strong><s:property value="working.name"/></strong></div>
                                    </div>
                                </td>
                            </tr>
                            <tr>
                                <td height="10"></td>
                            </tr>
                            <tr>
                                <td height="30"><div align="center">
                                        <table  border="0" cellspacing="0" cellpadding="0">
                                            <tr>
                                                <s:if test="working.matter!=null">
                                                    <td width="106" height="28" background="../images/anniu_link.jpg">
                                                        <div align="center">
                                                            <s:url action = "matter" id="url" escapeAmp="false">
                                                                <s:param name="workingId" value="workingId"/>
                                                                <s:param name="organId" value="organId"/>
                                                            </s:url>
                                                            <a class="zongcolor" href="<s:property value="url"/>">办事指南</a>
                                                        </div>
                                                    </td>
                                                    <s:if test="!working.matter.matterAnnexs.isEmpty()">
                                                        <td width="106" background="../images/anniu_link.jpg"><div align="center" class="zongcolor style38">表格下载</div></td>
                                                    </s:if>
                                                </s:if>
                                                <s:iterator value="working.children" id="child">
                                                    <td width="106" background="../images/anniu_link.jpg">
                                                        <div align="center">
                                                            <s:url action = "article" id="annexUrl" escapeAmp="false">
                                                                <s:param name="workingId" value="workingId"/>
                                                                <s:param name="organId" value="organId"/>
                                                                <s:param name="childId" value="#child.id"/>
                                                            </s:url>
                                                            <a class="zongcolor" href="<s:property value="annexUrl"/>">
                                                                <s:property value="name"/>
                                                            </a>
                                                        </div>
                                                    </td>
                                                </s:iterator>
                                                <s:if test="working.matter!=null && organId != 0">
                                                    <td width="106" background="../images/anniu_link.jpg">
                                                        <div align="center" class="zongcolor">
                                                            <s:url action = "advisor" id="annexUrl" escapeAmp="false">
                                                                <s:param name="workingId" value="workingId"/>
                                                                <s:param name="organId" value="organId"/>
                                                            </s:url>
                                                            <a class="zongcolor" href="<s:property value="annexUrl"/>">网上咨询</a>
                                                        </div>
                                                    </td>
                                                    <td width="106" background="../images/anniu_link.jpg">
                                                        <div align="center" class="zongcolor">
                                                            <s:url action = "advisorSearch" id="annexUrl" escapeAmp="false">
                                                                <s:param name="workingId" value="workingId"/>
                                                                <s:param name="organId" value="organId"/>
                                                            </s:url>
                                                            <a class="zongcolor" href="<s:property value="annexUrl"/>">网上查询</a>
                                                        </div>
                                                    </td>
                                                </s:if>
                                            </tr>
                                        </table>
                                        <br>
                                    </div></td>
                            </tr>
                            <tr>
                                <td height="1" bgcolor="#CCCCCC"></td>
                            </tr>
                            <tr>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td valign="top" align="left">
                                    <div style="margin-left: 40px;">
                                        <s:iterator value="matter.matterAnnexs">
                                            <p class="annex">
                                                <a class="hui" href="<s:property value="url"/>" target="_blank"><s:property value="name"/></a>
                                            </p>
                                        </s:iterator>
                                    </div>
                                </td>
                            </tr>
                            <tr>
                                <td height="60" align="left" valign="top"><div align="right"> </div></td>
                            </tr>
                            <tr>
                                <td height="30" bgcolor="#F5F5F5" class="li_line">
                                    <div align="center">
                                        <table height=20 cellspacing=0 cellpadding=0 border=0 class="hui">
                                            <tr>
                                                <td width=30><div align="right"><img src="../images/cont_dot_pr.gif" width="18" height="18"></div></td>
                                                <td class=song12b width=53>
                                                    <font class=hui style="CURSOR: hand" onClick=javascript:window.print()>打印本页</font>
                                                </td>
                                                <td width=30><div align="right"><img src="../images/cont_dot_cl.gif" width="18" height="18"></div></td>
                                                <td class=song12b width=70>
                                                    <font class=hui style="CURSOR: hand" onClick=javascript:window.close()>关闭本窗口</font>
                                                </td>
                                            </tr>
                                        </table>
                                    </div></td>
                            </tr>
                            <tr>
                                <td>&nbsp;</td>
                            </tr>
                        </table></td>
                    <td width="5"></td>
                    <td width="280" valign="top" bgcolor="fdf9ee" class="cheng_line">
                         <s:include value="right.jsp">
                            <s:param name="searchUrl"><s:url action="search"/></s:param>
                        </s:include>
                    </td>
                </tr>
            </table>
            </div>
            <br>
            <s:include value="../footer.jsp"/>
        </div>
    </body>
</html>
