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
            .style38 {
                color: #990000;
                font-weight: bold;
            }

            -->
            input,textarea,select,td,button { margin: 0; font-size: 12px; font-family: Tahoma, SimSun, sans-serif;}
            .formtable1{width:100%;}
            .formtable1 td{border-bottom:1px solid #eeeeee;text-align:left;padding:3px 1px 6px 20px;}
            .formMessage {white-space: nowrap;vertical-align: middle;}
            .formMessage ul{margin: 0px;padding: 3px;vertical-align: middle;float:left;list-style:none;color: #6633cc;}
            .formMessage ul li{float: left;list-style:none;}
            .formFieldError {white-space: nowrap;vertical-align: middle;}
            .formFieldError ul{margin: 0px;padding: 3px;vertical-align: middle;float:left;list-style:none;color: #FF3300;}
            .formFieldError ul li{float: left;list-style:none;}
            .btn_submit {width:95px;height:28px;line-height:28px;text-align:center;margin-top:10px;font-size:14px;font-weight:bold;cursor:pointer;}
        </style>
        <script src="<s:url value='/Scripts/swfobject_modified.js'/>" type="text/javascript"></script>
        <script type="text/JavaScript">
	        function checkcode_refresh(){
    	        var url = '<s:url value = "/checkcode.jpg"/>?nocache='+Math.random();
                $("#checkcode_id").attr("src",url);
                $('#checkcode_input_id').val('');
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
                        <table width="100%"  border="0" cellspacing="2" cellpadding="2">
                            <tr>
                                <td height="25"   class="red_xudi_line"><div align="left" class="hui">当前位置：
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
                                                        <td width="106" background="../images/anniu_link.jpg">
                                                            <div align="center">
                                                                <s:url action = "matterannex" id="annexUrl" escapeAmp="false">
                                                                    <s:param name="workingId" value="workingId"/>
                                                                    <s:param name="organId" value="organId"/>
                                                                </s:url>
                                                                <a class="zongcolor" href="<s:property value="annexUrl"/>">表格下载</a>
                                                            </div>
                                                        </td>
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
                                                <s:if test="working.matter!=null">
                                                    <td width="106" background="../images/anniu_link.jpg"><div align="center" class="zongcolor style38">网上咨询</div></td>
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
                                <td valign="top" align="center">
                                    <table width="96%" border="0" cellpadding="0" cellspacing="4" bgcolor="#EAEAEA">
                                        <tr>
                                            <td bgcolor="#F6F6F6">
                                                <div class="formFieldError" style="margin-left: 10px;font-size: 13px;">
                                                    <s:actionerror/>
                                                </div>
                                                <div class="formMessage" style="margin-left: 10px;font-size: 14px;color: #3300ff;">
                                                    <s:actionmessage/>
                                                </div>
                                                <div style="clear:both;height: 1px;"></div>
                                                <s:form id="advisor" name="advisor" action="advisorEdit" method="post">
                                                    <table  border="0" cellspacing="0" cellpadding="0" class="formtable1" align="center">
                                                        <s:if test="!login">
                                                            <tr id="username_id">
                                                                <td width="90px" height="32px">*用户名：</td>
                                                                <td align="left" height="32px" class="formFieldError">
                                                                    <s:textfield name="username"/>
                                                                    &nbsp;&nbsp;<a href="<s:url action="register" namespace="/user"/>" target="_blank">注册会员</a>
                                                                    <s:fielderror ><s:param value="%{'username'}" /></s:fielderror>
                                                                </td>
                                                            </tr>
                                                            <tr id="password_id" class="formFieldError">
                                                                <td width="90px" height="32px">*密码：</td>
                                                                <td align="left" height="32px">
                                                                    <s:password name="password"/>
                                                                    <s:fielderror ><s:param value="%{'password'}" /></s:fielderror>
                                                                </td>
                                                            </tr>
                                                        </s:if>
                                                        <s:else>
                                                            <tr style="display:none;">
                                                                <td width="90px" height="32px">*用户名：</td>
                                                                <td align="left" height="32px"><s:textfield name="username" value="ssss"/></td>
                                                            </tr>
                                                            <tr style="display:none;">
                                                                <td width="90px" height="32px">*密码：</td>
                                                                <td align="left" height="32px"><s:textfield name="password" value="123456"/></td>
                                                            </tr>
                                                            <tr>
                                                                <td colspan="2" height="32px">&nbsp;&nbsp;
                                                                    <s:property value="user.name"/>&nbsp;
                                                                    <a href="javascript:void(0);" id="logout_id">退出</a>
                                                                </td>
                                                            </tr>
                                                        </s:else>
                                                        <tr>
                                                            <td width="90px">*标题：</td>
                                                            <td class="formFieldError">
                                                                <s:textfield id = "title_id" name = "advisor.title"/>
                                                                <s:fielderror ><s:param value="%{'advisor.title'}" /></s:fielderror>
                                                            </td>
                                                        </tr>
                                                        <tr >
                                                            <td width="90px">*咨询内容：</td>
                                                            <td class="formFieldError">
                                                                <s:textarea name = "advisor.content" cols="56" rows="8"/>
                                                                <s:fielderror ><s:param value="%{'advisor.content'}" /></s:fielderror>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td width="90px" valign="top" style="padding-top: 20px;">*验证码：</td>
                                                            <td align="left" class="formFieldError">
                                                                <img id="checkcode_id" src="<s:url value="/checkcode.jpg"/>" alt="验证码"/><a href="javascript:checkcode_refresh()" id="checkcode_refresh_id">看不清,换一张</a><br/>
                                                                <s:textfield name="checkcode" id="checkcode_input_id"/>
                                                                <div class="hui">验证码不区分大小写</div>
                                                                <s:fielderror ><s:param value="%{'checkcode'}" /></s:fielderror>
                                                            </td>
                                                        </tr>
                                                    </table>
                                                    <s:hidden name="organId"/>
                                                    <s:hidden name="workingId"/>
                                                </s:form>
                                            </td>
                                        </tr>
                                    </table>
                                    <div align="center" style="margin-top: 10px"><input type="button" value="提交" class="btn_submit" onclick="document.advisor.submit();"/></div>
                                </td>
                            </tr>
                            <tr>
                                <td height="60" align="left" valign="top"><div align="right"> </div></td>
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
