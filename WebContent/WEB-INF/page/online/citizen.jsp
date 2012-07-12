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
        <link href="<s:url value='/css/ruichang.css'/>" rel="stylesheet" type="text/css" />
        <style type="text/css">
            <!--
            .style9 {color: #CC0000}
            .style13 {font-size: 9pt}
            .style15 {color: #FFFFFF}
            .style21 {color: #FFFFFF; font-family: Arial, Helvetica, sans-serif; }
            .style34 {font-family: Arial, Helvetica, sans-serif}
            -->
            .title{font-size: 16px;font-weight: bold;width:670px; height:35px; line-height:35px; clear:both;}
        </style>
        <script src="<s:url value='/Scripts/swfobject_modified.js'/>" type="text/javascript"></script>
        <script type="text/JavaScript">
        	function jumpPage(obj){
            	var page = obj.options[obj.selectedIndex].text -1 ;
            	window.location = ' <s:url action="citizen"/>?citizenId=<s:property value="citizen.id"/>&pageNumber=' + page ;
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
                    <td width="715" valign="top"><table width="100%"  border="0" cellspacing="0" cellpadding="0">
                            <tr>
                                <td height="53" background="images/wsbs_icon.jpg"><div align="right">
                                    </div></td>
                            </tr>
                        </table>
                        <table width="100%"  border="0" cellspacing="0" cellpadding="0">
                            <tr>
                                <td height="5"></td>
                            </tr>
                        </table>
                        <img src="images/cjdh.jpg" width="715" height="100" border="0" usemap="#Map">
                        <table width="95%"  border="0" cellspacing="2" cellpadding="2">
                            <tr>
                                <td class="bottom_line">
                                    <img src="images/lstd_icon.jpg" width="160" height="25"/>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <table border="0" cellspacing="2" cellpadding="2">
                                        <s:iterator value="citizens" status="st">
                                            <s:if test="(#st.index % 6) == 0">
                                                <tr>
                                                </s:if>
                                                <td width="104" height="28" background="images/anniu_link1.jpg">
                                                    <div align="center">
                                                        <s:if test="id == citizen.id">
                                                            <span class="zongcolor" style="font-weight: bold;"><s:property value="name"/></span>
                                                        </s:if>
                                                        <s:else>
                                                            <s:url action="citizen" id="url" escapeAmp="false">
                                                                <s:param name="citizenId" value="id"/>
                                                            </s:url>
                                                            <a href="<s:property value="url"/>" class="zongcolor"><s:property value="name"/></a>
                                                        </s:else>
                                                    </div>
                                                </td>
                                                <s:if test="((#st.index +1) % 6) == 0">
                                                </tr>
                                            </s:if>
                                        </s:iterator>
                                    </table>
                                </td>
                            </tr>
                        </table>
                        <table border="0" cellpadding="0" cellspacing="0" width="715">
                            <tr>
                                <td><img src="images/images/spacer.gif" alt="" name="undefined_6" width="715" height="1" border="0"></td>
                                <td><img src="images/images/spacer.gif" alt="" name="undefined_6" width="1" height="1" border="0"></td>
                            </tr>
                            <tr>
                                <td background="images/images/wsbszs_kuang_r1_c1.jpg">
                                    <div align="left" style="padding-left: 30px;"><span class="hui style15">
                                            <strong><s:property value="citizen.name"/></strong>
                                        </span></div>
                                </td>
                                <td><img src="images/images/spacer.gif" alt="" name="undefined_6" width="1" height="23" border="0"></td>
                            </tr>
                            <tr>
                                <td valign="top" background="images/images/wsbszs_kuang_r2_c1.jpg"><div align="center">
                                        <table width="90%"  border="0" cellspacing="2" cellpadding="2">
                                            <s:iterator value="matters" id='matter'>
                                                <s:if test = "matter != null">
                                                    <tr>
                                                        <td height="50" class="red_xudi_line">
                                                            <table width="100%"  border="0" cellpadding="2" cellspacing="2" class="hui">
                                                                <tr>
                                                                    <td><div align="left"><strong><img src="images/right_icon.gif" width="11" height="11"><s:property value="name"/></strong></div></td>
                                                                    <td width="200">
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
                                                                <s:param name="workingId" value="#matter.id"/>
                                                                <s:param name="childId" value="#matter.id"/>
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
                                                            <s:url action="citizen" id="pageUrl" escapeAmp="false">
                                                                <s:param name="citizenId" value="%{citizen.id}"/>
                                                                <s:param name="pageNumber" value="%{page.pagePrev-1}"/>
                                                            </s:url>
                                                            <a href="<s:property value="pageUrl"/>">上一页</a>
                                                        </s:else>
                                                        <s:iterator value="page.pageList">
                                                            <s:if test = "page.page == top">
                                                                <strong><s:property value="top"/></strong>
                                                            </s:if>
                                                            <s:else>
                                                                <s:url action="citizen" id="pageUrl" escapeAmp="false">
                                                                    <s:param name="citizenId" value="%{citizen.id}"/>
                                                                    <s:param name="pageNumber" value="%{top-1}"/>
                                                                </s:url>
                                                                <a href="<s:property value="pageUrl"/>"><s:property value="top"/></a>
                                                            </s:else>&nbsp;
                                                        </s:iterator>
                                                        <s:if test="page.pageNext == -1">
                                                            下一页
                                                        </s:if>
                                                        <s:else>
                                                            <s:url action="citizen" id="pageUrl" escapeAmp="false">
                                                                <s:param name="citizenId" value="%{citizen.id}"/>
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
                                    </div></td>
                                <td><img src="images/images/spacer.gif" alt="" name="undefined_6" width="1" height="46" border="0"></td>
                            </tr>
                            <tr>
                                <td><img name="wsbszs_kuang_r3_c1" src="images/images/wsbszs_kuang_r3_c1.jpg" width="715" height="8" border="0" alt=""></td>
                                <td><img src="images/images/spacer.gif" alt="" name="undefined_6" width="1" height="8" border="0"></td>
                            </tr>
                        </table><br/>
                    </td>
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
        <map name="Map">
            <area shape="rect" coords="205,31,275,67" href="http://218.65.14.14/xunyang/changjindaohang/index.asp?newtype=20F1F" target="_blank">
            <area shape="rect" coords="314,30,381,66" href="http://218.65.14.14/xunyang/changjindaohang/index.asp?newtype=20F2F" target="_blank">
            <area shape="rect" coords="418,29,487,64" href="http://218.65.14.14/xunyang/changjindaohang/index.asp?newtype=20F3F" target="_blank">
            <area shape="rect" coords="521,29,598,68" href="http://218.65.14.14/xunyang/changjindaohang/index.asp?newtype=20F4F" target="_blank">
            <area shape="rect" coords="631,27,704,66" href="http://218.65.14.14/xunyang/changjindaohang/index.asp?newtype=20F5F" target="_blank">
        </map>
    </body>
</html>
