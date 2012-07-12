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
            -->
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
                        <table  border="0" cellspacing="2" cellpadding="2">
                            <tr>
                                <td width="160"><img src="images/lstd_icon.jpg" width="160" height="25"></td>
                                    <s:iterator value="citizens" status="st">
                                        <s:if test="#st.index < 5">
                                        <td width="104" height="25" background="images/anniu_link1.jpg">
                                            <s:url action ="citizen" id="url" escapeAmp="false">
                                                <s:param name="citizenId" value="id"/>
                                            </s:url>
                                            <a href="<s:property value="url"/>" target="_blank"><div align="center" class="zongcolor"><s:property value="name"/></div></a>
                                        </td>
                                    </s:if>
                                </s:iterator>
                            </tr>
                        </table>
                        <s:iterator value = "workings" id="working">
                            <table border="0" cellpadding="0" cellspacing="0" width="715">
                                <tr>
                                    <td><img src="images/images/spacer.gif" alt="" name="undefined_3" width="715" height="1" border="0"></td>
                                    <td><img src="images/images/spacer.gif" alt="" name="undefined_3" width="1" height="1" border="0"></td>
                                </tr>
                                <tr>
                                    <td><img name="wsbs_kuang_r1_c1" src="images/images/wsbs_kuang_r1_c1.jpg" width="715" height="21" border="0" alt=""></td>
                                    <td><img src="images/images/spacer.gif" alt="" name="undefined_3" width="1" height="21" border="0"></td>
                                </tr>
                                <tr>
                                    <td valign="top" background="images/images/wsbs_kuang_r2_c1.jpg"><div align="center">
                                            <table width="95%"  border="0" cellspacing="2" cellpadding="2">
                                                <tr>
                                                    <td height="38" background="images/gmbs_icon.jpg"><div align="left" style="padding-left:70px;"><span class="red_bt"><s:property value="#working.name"/></span></div></td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        <table width="98%"  border="0" cellpadding="0" cellspacing="1" bgcolor="#FFFFFF" class="hui">
                                                            <s:iterator value="children" id="child" status="st">
                                                                <s:if test="(#st.index % 6) == 0">
                                                                    <tr>
                                                                    </s:if>
                                                                    <s:if test="id == null">
                                                                        <td height="27"><div align="center">&nbsp;</div>
                                                                        </s:if>
                                                                        <s:else>
                                                                        <td height="27">
                                                                            <div align="left" >
                                                                                <s:url action="working" id="url" escapeAmp="false">
                                                                                    <s:param name="workingId" value="#child.id"/>
                                                                                    <s:param name="parentId" value="#working.id"/>
                                                                                </s:url>
                                                                                <a href="<s:property value="url"/>" target="_blank" class="hui">
                                                                                    <img src="../images/bullet_01.gif" width="14" height="10"/><s:property value="#child.name"/>
                                                                                </a>
                                                                            </div>
                                                                        </td>
                                                                    </s:else>
                                                                    <s:if test="((#st.index +1) % 6) == 0">
                                                                    </tr>
                                                                </s:if>
                                                            </s:iterator>
                                                        </table>
                                                    </td>
                                                </tr>
                                            </table>
                                        </div></td>
                                    <td><img src="images/images/spacer.gif" alt="" name="undefined_3" width="1" height="58" border="0"></td>
                                </tr>
                                <tr>
                                    <td><img name="wsbs_kuang_r3_c1" src="images/images/wsbs_kuang_r3_c1.jpg" width="715" height="21" border="0" alt=""></td>
                                    <td><img src="images/images/spacer.gif" alt="" name="undefined_3" width="1" height="21" border="0"></td>
                                </tr>
                            </table>
                        </s:iterator>
                        <table border="0" cellpadding="0" cellspacing="0" width="715">
                            <tr>
                                <td><img src="images/images/spacer.gif" alt="" name="undefined_3" width="715" height="1" border="0"></td>
                                <td><img src="images/images/spacer.gif" alt="" name="undefined_3" width="1" height="1" border="0"></td>
                            </tr>
                            <tr>
                                <td><img name="wsbs_kuang_r1_c1" src="images/images/wsbs_kuang_r1_c1.jpg" width="715" height="21" border="0" alt=""></td>
                                <td><img src="images/images/spacer.gif" alt="" name="undefined_3" width="1" height="21" border="0"></td>
                            </tr>
                            <tr>
                                <td valign="top" background="images/images/wsbs_kuang_r2_c1.jpg"><div align="center">
                                        <table width="95%"  border="0" cellspacing="2" cellpadding="2">
                                            <tr>
                                                <td height="38" background="images/gmbs_icon.jpg"><div align="left" style="padding-left:70px;"><span class="red_bt">办事单位</span></div></td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    <table width="98%"  border="0" cellpadding="0" cellspacing="1" bgcolor="#FFFFFF" class="hui">
                                                        <s:iterator value="organs" status="st">
                                                            <s:if test="(#st.index % 6) == 0">
                                                                <tr>
                                                                </s:if>
                                                                <s:if test="id == null">
                                                                    <td height="27"><div align="center">&nbsp;</div>
                                                                    </s:if>
                                                                    <s:else>
                                                                    <td height="27">
                                                                        <div align="left" >
                                                                            <s:url action="organ" id="url" escapeAmp="false">
                                                                                <s:param name="organId" value="id"/>
                                                                            </s:url>
                                                                            <a href="<s:property value="url"/>" target="_blank" class="hui">
                                                                                <img src="../images/bullet_01.gif" width="14" height="10"/><s:property value="name"/>
                                                                            </a>
                                                                        </div>
                                                                    </td>
                                                                </s:else>
                                                                <s:if test="((#st.index +1) % 6) == 0">
                                                                </tr>
                                                            </s:if>
                                                        </s:iterator>
                                                    </table>
                                                </td>
                                            </tr>
                                        </table>
                                    </div></td>
                                <td><img src="images/images/spacer.gif" alt="" name="undefined_3" width="1" height="58" border="0"></td>
                            </tr>
                            <tr>
                                <td><img name="wsbs_kuang_r3_c1" src="images/images/wsbs_kuang_r3_c1.jpg" width="715" height="21" border="0" alt=""></td>
                                <td><img src="images/images/spacer.gif" alt="" name="undefined_3" width="1" height="21" border="0"></td>
                            </tr>
                        </table>
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
