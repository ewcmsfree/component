<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
    <head>
        <title>中国瑞昌网—会员中心</title>
        <script type="text/javascript" src="<s:url value="/source/js/jquery-1.4.2.min.js"/>"></script>
        <script type="text/javascript" src="<s:url value="/source/js/password.js"/>"></script>
        <link rel="stylesheet" type="text/css" href='<s:url value="/source/css/base.css"/>'/>
        <link rel="stylesheet" type="text/css" href='<s:url value="/source/css/password.css"/>'/>
        <script type="text/javascript">
            $(function(){
                $('#logout_id').bind('click',function(){
                    $.getJSON('<s:url action="logout"/>',function(){
                        window.location = '<s:url action='login'/>';
                    });
                });
            });
            function refresh(){
                alert("信件提交成功！")
                var url = '<s:url action = "interaction"/>?&nocache='+Math.random();
                window.location = url;
            }
            function jumpPage(obj){
                var page = obj.options[obj.selectedIndex].text -1 ;
                window.location = ' <s:url action="interaction"/>?pageNumber=' + page ;
            }
        </script>
        <link href="<s:url value="/css/ruichang.css"/>" rel="stylesheet" type="text/css" />
        <style type="text/css">
            <!--
            .style15 {color: #FFFFFF}
            .style3 {color: #336600}
            -->
            .title{font-size: 20px;margin: 10px 0;}
            .title-sub{font-size: 18px;margin-bottom: 10px;}
            .bold{font-weight: bold;}
            ul{list-style: none;padding:5px 10px;}
            li{padding: 3px 0;}
            .wait{color:#A65300;}
            .back{color: #3300ff;}
            .rtitle{font-size: 12px;font-weight: bold;color:#00cc00;margin: 5px 0px;border-bottom: 1px dotted #00cc00;}
        </style>

    </head>
    <body>
        <div id="whole_bg">
		<div id="content">
                <table width="100%" border="0" cellpadding="0" cellspacing="0" bgcolor="#CCCCCC">
                    <tr>
                        <td height="60" bgcolor="#F3F3F3" style="padding: 1px;">
                            <div align="left">
                                <table width="100%"  border="0" cellspacing="0" cellpadding="0">
                                    <tr>
                                        <td>
　　                                         <span class="red_bt title" >中国瑞昌网—</span><span class="style3 title-sub">会员中心</span>
                                        </td>
                                        <td width="150" class="hui" align="left">
                                            你好：<s:property value="user.name"/>
                                            [<a id="logout_id" href="javascript:void(0);">退出</a>]
                                        </td>
                                    </tr>
                                </table>
                            </div>
                        </td>
                    </tr>
                </table>
                <div class="separate" style="height:1px;"></div>
                <table width="1006"  border="0" cellspacing="0" cellpadding="0">
                    <tr>
                        <td width="200" valign="top" bgcolor="#FFF5E8" class="y_line">
                            <div style="height: 30px">&nbsp;</div>
                            <div align="center">
                                <table width="80%"  border="0" cellspacing="4" cellpadding="2">
                                    <tr>
                                        <td height="40" class="red_xudi_line">
                                            <div align="left" class="red_bt">
                                                <span class="bold">我的信件</span>
                                            </div>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td height="40" class="red_xudi_line">
                                            <div align="left" class="red_bt">
                                                <a href="<s:url action="advisor"/>"><span class="bold">我的咨询</span></a>
                                            </div>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td height="40" class="red_xudi_line">
                                            <div align="left" class="red_bt">
                                                <a href="<s:url action="userinfo"/>"><span class="bold">我的资料</span></a>
                                            </div>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td height="40" class="red_xudi_line">
                                            <div align="left" class="red_bt">
                                                <a href="<s:url action="password"/>"><span class="bold">修改密码</span></a>
                                            </div>
                                        </td>
                                    </tr>
                                </table>
                                <p>&nbsp;</p>
                                <p>&nbsp;</p>
                                <p>&nbsp;</p>
                                <p>&nbsp;</p>
                                <p>&nbsp;</p>
                                <p>&nbsp;</p>
                            </div>
                        </td>
                        <td valign="top" style="padding: 15px;">
                            <s:if test="interactions == null || interactions.isEmpty()">
                                <div class="separate red_bt">我的信件</div>
                                <div align="center" style="height:100px"></div>
                            </s:if>
                            <s:else>
                                <div align="center">
                                    <s:iterator value="interactions">
                                        <table width="95%"  border="0" cellspacing="0" cellpadding="0">
                                            <tr>
                                                <td colspan="2" class="separate">
                                                    <span class="red_bt" style="font-size: 15px;">
                                                        <s:property value="title"/>
                                                    </span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                    <span>
                                                        提问时间：<s:date format="yyyy年MM月dd日" name="date"/>
                                                    </span>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td width="150px" style="padding: 8px 2px;" class="separate">
                                                    <ul style="border-right: 1px solid #ccffff;">
                                                        <li>编号：<s:property value="formatId"/></li>
                                                        <li>类型：<s:if test = "type==1">在线咨询</s:if><s:if test = "type==2">投诉监督</s:if><s:if test = "type==3">建言献策</s:if></li>
                                                        <li>咨询对象：<s:property value="organ.name"/></li>
                                                        <li>信件状态：
                                                            <s:if test="state.ordinal() == 0">
                                                                <span class="wait">
                                                                    <s:property value="state.title"/>
                                                                </span>
                                                            </s:if>
                                                            <s:if test="state.ordinal() == 1">
                                                                <span class="back">
                                                                    <s:property value="state.title"/>
                                                                </span>
                                                            </s:if>
                                                        </li>
                                                        <s:if test="counter != 0">
                                                            <li>浏览：<s:property value="counter"/>次</li>
                                                        </s:if>
                                                        <s:if test="speakCount != 0">
                                                            <li>
                                                                评论：<a href="<s:url action="detail" namespace="/interaction"/>?id=<s:property value="id"/>" target="_blank">
                                                                    <s:property value="speakCount"/>条
                                                                </a>
                                                            </li>
                                                        </s:if>
                                                    </ul>
                                                </td>
                                                <td valign="top" class="separate">
                                                    <div align="left" style="margin:10px 6px;">
                                                        <s:property value="content"/>
                                                        <s:if test="replay != null">
                                                            <div style="margin:12px 0 0 20px;">
                                                                <p class="rtitle"><s:property value="organ.name"/>回复：</p>
                                                                <s:property value="replay"/>
                                                            </div>
                                                        </s:if>
                                                    </div>
                                                </td>
                                            </tr>

                                        </table>
                                        <div class="" style="height:1px;"></div><br/>
                                    </s:iterator>
                                    <table width="95%"  border="0" cellspacing="0" cellpadding="0">
                                        <tr>
                                            <td height="30" bgcolor="#F2F2F2"><div align="center" class="hui">
                                                    <div align="center" class="hui">
                                                        共<s:property value="page.pageCount"/>页&nbsp;当前为第<s:property value="page.page"/>页&nbsp;
                                                        <s:if test="page.pagePrev == -1">
                                                            上一页
                                                        </s:if>
                                                        <s:else>
                                                            <s:url action="interaction" id="pageUrl" escapeAmp="false">
                                                                <s:param name="pageNumber" value="%{page.pagePrev-1}"/>
                                                            </s:url>
                                                            <a href="<s:property value="pageUrl"/>">上一页</a>
                                                        </s:else>
                                                        <s:iterator value="page.pageList">
                                                            <s:if test = "page.page == top">
                                                                <strong><s:property value="top"/></strong>
                                                            </s:if>
                                                            <s:else>
                                                                <s:url action="interaction" id="pageUrl" escapeAmp="false">
                                                                    <s:param name="pageNumber" value="%{top-1}"/>
                                                                </s:url>
                                                                <a href="<s:property value="pageUrl"/>"><s:property value="top"/></a>
                                                            </s:else>&nbsp;
                                                        </s:iterator>
                                                        <s:if test="page.pageNext == -1">
                                                            下一页
                                                        </s:if>
                                                        <s:else>
                                                            <s:url action="interaction" id="pageUrl" escapeAmp="false">
                                                                <s:param name="pageNumber" value="%{page.pageNext-1}"/>
                                                            </s:url>
                                                            <a href="<s:property value="pageUrl"/>">下一页</a>&nbsp;转到
                                                        </s:else>
                                                        <select name="select" class="hui" onchange="jumpPage(this)">
                                                            <s:iterator value="page.pageListAll">
                                                                <s:if test = "page.page == top">
                                                                    <option selected="selected"><s:property value="top"/></option>
                                                                </s:if>
                                                                <s:else>
                                                                    <option><s:property value="top"/></option>
                                                                </s:else>
                                                            </s:iterator>
                                                        </select>页
                                                    </div>
                                                </div>
                                            </td>
                                        </tr>
                                    </table>
                                    <p>&nbsp;</p>
                                </div>
                            </s:else>
                            <div align="left" style="margin: 20px 0px 8px 20px" class="separate"><span class="hui style9" style="font-size:13px;">我要写信:</span></div>
                            <div style="height:400px;width:700;">
                                <iframe src="<s:url action="userinteraction"/>" height="400" id="imagefoifr"  name="imagefoifr" class="editifr" scrolling="no"></iframe>
                            </div>
                        </td>
                    </tr>
                </table>
            
                <table width="100%"  border="0" class="hui">
                    <tr>
                        <td><div align="center" class="hui">主办：中共瑞昌市人民政府<strong>　</strong></div></td>
                    </tr>
                    <tr>
                        <td><div align="center" class="style15">
                                <div align="center" class="hui">承办：瑞昌市人民政府信息化工作办公室　技术支持：瑞昌市人民政府信息化工作办公室　电话：0792-4224685 </div>
                            </div></td>
                    </tr>
                    <tr>
                        <td><div align="center" class="hui">
                                <div align="center" class="hui">Copyright 2010 ruichang.gov.cn All Rights </div>
                            </div></td>
                    </tr>
                </table>
        </div>
		</div>
    </body>
</html>