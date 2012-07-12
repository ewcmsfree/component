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
            .title_sub{font-size: 14px;font-weight: bold;color:#ff7f00;padding-left:25px;}
            .content{ margin-left:35px;}
        </style>
        <script src="/Scripts/swfobject_modified.js" type="text/javascript"></script>
        <script type="text/JavaScript">
        	function jumpPage(obj){
            	var page = obj.options[obj.selectedIndex].text -1 ;
           	    window.location = ' <s:url action="search"/>?key=<s:property value="key"/>&pageNumber=' + page ;
        	}
        </script>
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
                                <td height="30">
                                    <div align="center">
                                        <s:form action="search" method="post">
                                            <table border="0" cellpadding="0" cellspacing="0">
                                                <tr>
                                                    <td>
                                                        <span class="hui" style="text-align: left;">关键字：</span>
                                                        <s:textfield name="key" size="35"/>
                                                    </td>
                                                    <td width="100" align="center" valign="top" >
                                                        <img src="images/search.gif" width="51" height="35" onclick="document.forms[0].submit();"/>
                                                    </td>
                                                </tr>
                                            </table>
                                        </s:form>
                                        <br>
                                    </div>
                                </td>
                            </tr>
                            <tr>
                                <td height="1" bgcolor="#CCCCCC"></td>
                            </tr>
                            <tr>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td valign="top" align="left">
                                    <table width="90%"  border="0" cellspacing="2" cellpadding="2">
                                        <s:iterator value="workings" id='working'>
                                            <s:if test = "matter != null">
                                                <tr>
                                                    <td height="50" class="red_xudi_line">
                                                        <table width="100%"  border="0" cellpadding="2" cellspacing="2" class="hui">
                                                            <tr>
                                                                <td><div align="left"><strong><img src="images/right_icon.gif" width="11" height="11"><s:property value="name"/></strong></div></td>
                                                                <td width="150">
                                                                    <div align="left"><strong>
                                                                            <s:if test="organ.name != null">
                                                                                <s:url action="organ" id="url" escapeAmp="false">
                                                                                    <s:param name="organId" value="organ.id"/>
                                                                                </s:url>
                                                                                [办理部门： <a href="<s:property value="url"/>" target="_blank" class="hui"><s:property value="organ.name"/></a>]
                                                                            </s:if>&nbsp;
                                                                        </strong></div>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td><div align="left">&nbsp;
                                                                        <s:url action="matter" id="matterUrl" escapeAmp="false">
                                                                            <s:param name="organId" value="organ.id"/>
                                                                            <s:param name="workingId" value="id"/>
                                                                        </s:url>
                                                                        <a class="hui" href="<s:property value="matterUrl"/>" target="_blank">办事指南</a>&nbsp;
                                                                        <s:if test="!matter.matterAnnexs.isEmpty()">
                                                                            <img src="images/zxbs_pic_jt.gif" width="9" height="9">&nbsp;
                                                                            <s:url action = "matterannex" id="annexUrl" escapeAmp="false">
                                                                                <s:param name="organId" value="organ.id"/>
                                                                                <s:param name="workingId" value="id"/>
                                                                            </s:url>
                                                                            <a class="hui" href="<s:property value="annexUrl"/>"  target="_blank">表格下载</a>&nbsp;
                                                                        </s:if>
                                                                        <s:iterator value="children">
                                                                            <img src="images/zxbs_pic_jt.gif" width="9" height="9">&nbsp;
                                                                            <s:url action = "article" id="url" escapeAmp="false">
                                                                                <s:param name="organId" value="#matter.organ.id"/>
                                                                                <s:param name="workingId" value="#matter.id"/>
                                                                                <s:param name="childId" value="id"/>
                                                                            </s:url>
                                                                            <a class="hui" href="<s:property value="url"/>"  target="_blank"><s:property value="name"/></a>&nbsp;
                                                                        </s:iterator>
                                                                        <s:if test="organ.name != null">
                                                                            <img src="images/zxbs_pic_jt.gif" width="9" height="9">&nbsp;
                                                                            <s:url action = "advisor" id="advisoryUrl" escapeAmp="false">
                                                                                <s:param name="organId" value="organ.id"/>
                                                                                <s:param name="workingId" value="id"/>
                                                                            </s:url>
                                                                            <a class="hui" href="<s:property value="advisoryUrl"/>"  target="_blank">网上咨询</a>&nbsp;
                                                                            <img src="images/zxbs_pic_jt.gif" width="9" height="9">&nbsp;
                                                                            <s:url action = "advisorSearch" id="advisorySearchUrl" escapeAmp="false">
                                                                                <s:param name="organId" value="organ.id"/>
                                                                                <s:param name="workingId" value="id"/>
                                                                            </s:url>
                                                                            <a class="hui" href="<s:property value="advisorySearchUrl"/>"  target="_blank">网上查询</a>&nbsp;
                                                                        </s:if>
                                                                    </div>
                                                                </td>
                                                                <td>&nbsp;
                                                            </tr>
                                                        </table>
                                                    </td>
                                                </tr>
                                            </s:if>
                                            <s:else>
                                                <tr>
                                                    <td height="30" class="red_xudi_line">
                                                        <s:url action = "article" id="url" escapeAmp="false">
                                                            <s:param name="organId" value="organ.id"/>
                                                            <s:param name="workingId" value="#working.id"/>
                                                            <s:param name="childId" value="#working.id"/>
                                                        </s:url>
                                                        <div align="left">
                                                            <strong><img src="images/right_icon.gif" width="11" height="11">
                                                                <a class="hui" href="<s:property value="url"/>"  target="_blank"><s:property value="name"/></a>
                                                            </strong></div>
                                                    </td>
                                                </tr>
                                            </s:else>
                                        </s:iterator>
                                    </table>
                                    <br>
                                    <table width="90%"  border="0" cellspacing="0" cellpadding="0">
                                        <tr>
                                            <td height="30" bgcolor="#F2F2F2" class="li_line"><div align="center" class="hui">
                                                    共<s:property value="page.pageCount"/>页&nbsp;当前为第<s:property value="page.page"/>页&nbsp;
                                                    <s:if test="page.pagePrev == -1">
                                                        上一页
                                                    </s:if>
                                                    <s:else>
                                                        <s:url action="search" id="pageUrl" escapeAmp="false">
                                                            <s:param name="key" value="%{key}"/>
                                                            <s:param name="pageNumber" value="%{page.pagePrev-1}"/>
                                                        </s:url>
                                                        <a href="<s:property value="pageUrl"/>">上一页</a>
                                                    </s:else>
                                                    <s:iterator value="page.pageList">
                                                        <s:if test = "page.page == top">
                                                            <strong><s:property value="top"/></strong>
                                                        </s:if>
                                                        <s:else>
                                                            <s:url action="search" id="pageUrl" escapeAmp="false">
                                                                <s:param name="key" value="%{key}"/>
                                                                <s:param name="pageNumber" value="%{top-1}"/>
                                                            </s:url>
                                                            <a href="<s:property value="pageUrl"/>"><s:property value="top"/></a>
                                                        </s:else>&nbsp;
                                                    </s:iterator>
                                                    <s:if test="page.pageNext == -1">
                                                        下一页
                                                    </s:if>
                                                    <s:else>
                                                        <s:url action="working" id="pageUrl" escapeAmp="false">
                                                            <s:param name="key" value="%{key}"/>
                                                            <s:param name="pageNumber" value="%{page.pageNext-1}"/>
                                                        </s:url>
                                                        <a href="<s:property value="pageUrl"/>">下一页</a>
                                                    </s:else>&nbsp;转到
                                                    <select name="select" class="hui" onchange="jumpPage(this)">
                                                        <s:iterator value="page.pageListAll">
                                                            <s:if test = "page.page == top">
                                                                <option selected><s:property value="top"/></option>
                                                            </s:if>
                                                            <s:else>
                                                                <option><s:property value="top"/></option>
                                                            </s:else>
                                                        </s:iterator>
                                                    </select>页
                                                </div></td>
                                        </tr>
                                    </table>
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
