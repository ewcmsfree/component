<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags" %>
<html>
    <head>
        <title>中国瑞昌网为您服务！</title>
        <script type="text/javascript" src="<s:url value="/source/js/jquery-1.4.2.min.js"/>"></script>
        <script type="text/javascript" src="<s:url value="/source/js/jquery.cookie.js"/>"></script>
        <script type="text/javascript" src="<s:url value="/source/js/dynatree/ui.core.js"/>"></script>
        <script type="text/javascript" src="<s:url value="/source/js/dynatree/jquery.dynatree.min.js"/>"></script>
        <link rel="stylesheet" type="text/css" href='<s:url value="/source/css/dynatree/skin/ui.dynatree.css"/>'/>
		<link href="<s:url value="/css/ruichang.css"/>" rel="stylesheet" type="text/css" />
		<script src="<s:url value="/Scripts/swfobject_modified.js"/>" type="text/javascript"></script>
        <style type="text/css">
            <!--
            .style9 {color: #CC0000}
            .style13 {font-size: 9pt}
            .style15 {color: #FFFFFF}
            .style21 {color: #FFFFFF; font-family: Arial, Helvetica, sans-serif; }
            .style34 {font-family: Arial, Helvetica, sans-serif}
            .style40 {color: #336600}
            .style41 {color: #FF0000}
            -->
            input,textarea,select,td,button { margin: 0; font-size: 12px; font-family: Tahoma, SimSun, sans-serif;}
            .organ_width {width:250px;}
            .organ_top {border: 1px #a9c9e2 solid;background: #FFFFFF;position:absolute;display: none;height:200px;overflow: auto;}
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
        <script type="text/javascript">
                $(function(){
                    $("#organ_tree").dynatree({
                        rootVisible: false,
                        checkbox: true,
                        classNames: {checkbox: "ui-dynatree-radio"},
                        selectMode: 1,
                        fx: { height: "toggle", duration: 200 },
                        initAjax: {
                            url: "<s:url action = "organ"/>"
                        },
                        onLazyRead: function(dtnode){
                            dtnode.appendAjax({
                                url: "<s:url action = "organ"/>",
                                data: {key:dtnode.data.key}
                            });
                        },
                        onSelect: function(flag, dtnode) {
                            if(flag ){
                                var key = dtnode.data.key;
                                var title = dtnode.data.title;
                                $('#organ_id_id').val(key);
                                $('#organ_name_id').val(title);
                                $("#organ_top_id").css("display","none");
                            }else{
                                $('#organ_id_id').val('');
                                $('#organ_name_id').val('');
                            }
                        }
                    });
                    $("#organ_button_id").bind('click',function(){
                        var display = $("#organ_top_id").css("display");
                        if(display == "block"){
                            $("#organ_top_id").css("display","none");
                        }else{
                            $("#organ_top_id").css("display","block");
                        }
                    });
                    $('form input[type = radio]').bind("focusin",function(){
                        $("#organ_top_id").css("display","none");
                    });
                    $('form textarea').bind("focusin",function(){
                        $("#organ_top_id").css("display","none");
                    });
                    $('#title_id').bind("focusin",function(){
                        $("#organ_top_id").css("display","none");
                    });
                    $('#organ_name_id').bind("focusin",function(){
                        $("#organ_top_id").css("display","block");
                    });
                    $('#no_organ_id').bind("click",function(){
                        if(this.checked){
                            $("#organ_top_id").css("display","none");
                            $('#organ_button_id').attr("disabled",true);
                            $('#organ_name_id').unbind("focusin");
                            $('#organ_id_id').val("-1");
                            $('#organ_name_id').val("");
                        }else{
                            $('#organ_id_id').val("");
                            $('#organ_button_id').attr("disabled",false);
                            $('#organ_name_id').bind("focusin",function(){
                                $("#organ_top_id").css("display","block");
                            })
                        }
                    });
                    $("#logout_id").bind("click",function(){
                        var url = '<s:url action="logout" namespace="/user"/>';
                        $.getJSON(url,function(data){
                            location.reload();
                        });
                    });
                });

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
                 	<td width="750" valign="top">
                        <table width="100%"  border="0" cellspacing="0" cellpadding="0">
                            <tr>
                                <td height="53" background="images/zmhd_icon.jpg">
                                	<div align="right">
                                		<table width="130" border="0" cellpadding="0" cellspacing="0" class="hui">
                                            <tr>
                                                <td height="25">
                                                	<div align="left"><img src="../images/bullet_02.gif" width="7" height="7"><span class="hui">我要写信</span></div>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td height="1" background="../images/xuxian.gif"></td>
                                            </tr>
                                            <tr>
                                                <td height="25">
                                                	<div align="left"><img src="../images/bullet_02.gif" width="7" height="7"><a class="hui" href="<s:url action="interaction" namespace="/user"/>" target="_blank"><span class="style9">我的信件箱</span></a></div>
                                                </td>
                                            </tr>
                                        </table>
                                    </div>
                            	</td>
                            </tr>
                        </table>
                        <table width="100%"  border="0" cellspacing="0" cellpadding="0">
                            <tr>
                                <td height="5"></td>
                            </tr>
                        </table>
                        <br>
                        <table width="100%"  border="0" cellspacing="0" cellpadding="0">
                            <tr>
                                <td>
                                    <div align="center">
                                        <table width="98%" border="0" cellpadding="0" cellspacing="4" bgcolor="#EAEAEA">
                                            <tr>
                                                <td bgcolor="#F6F6F6">
                                                    <div class="formFieldError" style="margin-left: 10px;font-size: 13px;">
                                                        <s:actionerror/>
                                                    </div>
                                                    <div class="formMessage" style="margin-left: 10px;font-size: 14px;color: #3300ff;">
                                                        <s:actionmessage/>
                                                    </div>
                                                    <div style="clear:both;height: 1px;"></div>
                                                    <s:form id="interaction" name="interaction" action="interactionEdit" method="post">
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
                                                                <td width="90px">*信件类型：</td>
                                                                <td><s:radio list="#{'1':'咨询','2':'投诉','3':'建言献策'}" name = "type" value="1"/></td>
                                                            </tr>
                                                            <tr>
                                                                <td width="90px">*信件标题：</td>
                                                                <td class="formFieldError">
                                                                    <s:textfield id = "title_id" name = "title"/>
                                                                    <s:fielderror ><s:param value="%{'title'}" /></s:fielderror>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td width="90px">*提交部门：</td>
                                                                <td class="formFieldError">
                                                                    <s:hidden name="organId" id="organ_id_id"/>
                                                                    <s:textfield id="organ_name_id" cssClass="organ_width" name="organName" readonly="true"/>
                                                                    <input type="button" id="organ_button_id" value="部门"/>&nbsp;&nbsp;&nbsp;&nbsp;<s:checkbox id="no_organ_id" name="noOrgan"/>我不清楚部门
                                                                    <br/>
                                                                    <div id="organ_top_id" class="organ_width organ_top">
                                                                        <div id ="organ_tree"></div>
                                                                    </div>
                                                                    <s:fielderror ><s:param value="%{'organId'}" /></s:fielderror>
                                                                </td>
                                                            </tr>
                                                            <tr >
                                                                <td width="90px">*信件内容：</td>
                                                                <td class="formFieldError">
                                                                    <s:textarea name = "content" cols="60" rows="8"/>
                                                                    <s:fielderror ><s:param value="%{'content'}" /></s:fielderror>
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
                                                        <s:hidden name="interactionId"/>
                                                    </s:form>
                                                </td>
                                            </tr>
                                        </table>
                                    </div>
                                </td>
                            </tr>
                        </table>
                        <div align="center" style="margin-top: 10px"><input type="button" value="提交" class="btn_submit" onclick="document.interaction.submit();"/></div>
                    </td>
                    <td width="5"></td>
                    <td width="280" valign="top" bgcolor="fdf9ee" class="cheng_line"><div align="center">
                    	<s:form id="searchForm" name="searchForm" action="search" method="post">
                                <table border="0" cellpadding="0" cellspacing="0" width="280">
                                    <tr>
                                        <td><img src="images/images/spacer.gif" alt="" name="undefined_2" width="280" height="1" border="0"></td>
                                        <td><img src="images/images/spacer.gif" alt="" name="undefined_2" width="1" height="1" border="0"></td>
                                    </tr>
                                    <tr>
                                        <td background="images/images/zmhd_kuang_r1_c1JS.jpg">　　　　　　　　　　　</td>
                                        <td><img src="images/images/spacer.gif" alt="" name="undefined_2" width="1" height="54" border="0"></td>
                                    </tr>
                                    <tr>
                                        <td background="images/images/zmhd_kuang_r2_c1.jpg"><div align="center">
                                                <table width="80%"  border="0" cellspacing="2" cellpadding="2">
                                                    <tr>
                                                        <td class="hui">关键字：</td>
                                                        <td><input type="text" name="title" size="12" id="search_input_id"></td>
                                                        <td><img src="images/search.gif" width="51" height="35" onclick="document.searchForm.submit();"/></td>
                                                    </tr>
                                                </table>
                                            </div></td>
                                        <td><img src="images/images/spacer.gif" alt="" width="1" height="51" border="0"></td>
                                    </tr>
                                    <tr>
                                        <td><img name="zmhd_kuang_r3_c1" src="images/images/zmhd_kuang_r3_c1.jpg" width="280" height="24" border="0" alt=""></td>
                                        <td><img src="images/images/spacer.gif" alt="" name="undefined_2" width="1" height="24" border="0"></td>
                                    </tr>
                                </table>
                            </s:form>
                            <table width="100%"  border="0" cellspacing="4" cellpadding="0">
                                <tr>
                                    <td><div align="center"><a href="http://218.65.14.14/xunyang/news/checkxinL.asp"><img src="images/ldxx_icon.jpg" width="265" height="58" border="0"></a></div></td>
                                </tr>
                                <tr>
                                    <td><div align="center"><a href="http://wsxf.jx-xinfang.gov.cn/email_index.asp?subid=007003008022094026026008022094023031006094019030" target="_blank"><img src="images/wsxf_icon.jpg" width="265" height="58" border="0"></a></div></td>
                                </tr>
                            </table>
                            <br>
                            <table width="96%"  border="0" cellspacing="0" cellpadding="0">
                                <tr>
                                    <td class="szy_line"><table width="100%"  border="0" cellspacing="0" cellpadding="0">
                                            <tr>
                                                <td height="25" bgcolor="#FFFFFF" id="mndividk1" onMouseOver="ChangeFoldern(this,'mndividk','2','','images/an_bg.jpg','szy_line','li_line');" style="cursor:hand;"><div align="center" class="style9 hui"><strong>最新访谈</strong></div></td>
                                                <td width="1" bgcolor="#CCCCCC"></td>
                                                <td background="images/an_bg.jpg" id="mndividk2" onMouseOver="ChangeFoldern(this,'mndividk','2','','images/an_bg.jpg','szy_line','li_line');" style="cursor:hand;"><div align="center" class="hui style9">访谈回顾</div></td>
                                            </tr>
                                        </table></td>
                                </tr>
                                <tr>
                                    <td bgcolor="#FFFFFF" class="szy_line"><div align="center">
                                            <table width="100%"  border="0" cellspacing="0" cellpadding="0">
                                                <tr>
                                                    <td height="5"></td>
                                                </tr>
                                            </table>
                                            <img src="/images/zxft.jpg" width="180" height="144"></div></td>
                                </tr>
                                <tr>
                                    <td bgcolor="#FFFFFF" class="xzy_line">
                                        <table width="100%"  border="0" cellspacing="2" cellpadding="2" id="tmndividk1" style="display: ">
                                            <tr>
                                                <td>
                                                    <div align="left">
                                                        <div align="left" class="zongcolor"><span class=style30 style9><strong>访谈主题：</strong></span>领导干部经济责任审计</div>
                                                    </div>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td height="1" background="/images/xuxian.gif"></td>
                                            </tr>
                                            <tr>
                                                <td><DIV align=left class="zongcolor"><SPAN class=style30><STRONG>访谈时间：</STRONG></SPAN>2010-12-22 15:00:00--2010-12-22 15:30:00</DIV></td>
                                            </tr>
                                            <tr>
                                                <td height="1" background="/images/xuxian.gif"></td>
                                            </tr>
                                            <tr>
                                                <td><DIV align=left class="zongcolor"><SPAN class=style30><STRONG>访谈嘉宾：</STRONG></SPAN>凌海</DIV></td>
                                            </tr>
                                            <tr>
                                                <td height="1" background="/images/xuxian.gif"></td>
                                            </tr>
                                            <tr>
                                                <td class="zongcolor"><a href="http://218.65.14.14:8080/xychat/xuserlogin.jsp?cid=24" target="_blank" class="zongcolor">点击进入直播间</a></td>
                                            </tr>
                                        </table></td>
                                </tr>
                            </table>
                            <table width="100%"  border="0" cellspacing="2" cellpadding="2" id="tmndividk2" style="display:none">
                                <tr>
                                    <td height="22"><div align="left">・<A class=hui title='有关创业服务年活动网民在线问答' href="http://218.65.14.8:8080/xychat/userlogin.do?id=23&username=&password=" target=_blank>有关创业服务年活动网民在…</A></div></td>
                                </tr>
                                <tr>
                                    <td height="22" ><div align="left">・<A class=hui title='如何策应“三产活市、城建兴区”战略发展瑞昌经济（六）' href="http://218.65.14.8:8080/xychat/userlogin.do?id=21&username=&password=" target=_blank>如何策应“三产活市、城建…</A></div></td>
                                </tr>
                                <tr>
                                    <td height="22"><div align="left">・<A class=hui title='如何策应“三产活市、城建兴区”战略发展瑞昌经济（五）' href="http://218.65.14.8:8080/xychat/userlogin.do?id=18&username=&password=" target=_blank>如何策应“三产活市、城建…</A></div></td>
                                </tr>
                                <tr>
                                    <td height="22" ><div align="left">・<A class=hui title='如何策应“三产活市、城建兴区”战略发展瑞昌经济（四）' href="http://218.65.14.8:8080/xychat/userlogin.do?id=17&username=&password=" target=_blank>如何策应“三产活市、城建…</A></div></td>
                                </tr>
                                <tr>
                                    <td height="22"><div align="left">・<A class=hui title='如何策应“三产活市、城建兴区”战略发展瑞昌经济（三）' href="http://218.65.14.8:8080/xychat/userlogin.do?id=16&username=&password=" target=_blank>如何策应“三产活市、城建…</A></div></td>
                                </tr>
                                <tr>
                                    <td height="22"><div align="left">・<A class=hui title='如何策应“三产活市、城建兴区”战略发展瑞昌经济（二）' href="http://218.65.14.8:8080/xychat/userlogin.do?id=15&username=&password=" target=_blank>如何策应“三产活市、城建…</A></div></td>
                                </tr>
                            </table>
                            <table width="90%"  border="0" cellspacing="0" cellpadding="0">
                                <tr>
                                    <td height="30" class="red_bt"><div align="left">部门回复率排行</div></td>
                                </tr>
                                <tr>
                                    <td height="1" bgcolor="#FFCC66"></td>
                                </tr>
                            </table>
                            <table width="90%"  border="0" cellspacing="0" cellpadding="0">
                                <tr>
                                    <td height="5"></td>
                                </tr>
                            </table>
                            <table width="70%"  border="0" cellspacing="0" cellpadding="3">
                                <s:iterator value="backRatios">
                                    <tr>
                                        <td height="15" width="200">
                                            <div align="left" >
                                                <a href="<s:url action="organsearch"/>?id=<s:property value="id"/>" target="_blank" class="hui">
                                                    <s:property value="name"/>
                                                </a>
                                            </div>
                                        </td>
                                        <td class="hui">
                                            <s:property value="backRatio"/>%
                                        </td>
                                    </tr>
                                </s:iterator>
                            </table>
                            <br>
                            <table width="90%"  border="0" cellspacing="0" cellpadding="0">
                                <tr>
                                    <td height="30" class="red_bt"><div align="left">部门未回复率排行</div></td>
                                </tr>
                                <tr>
                                    <td height="1" bgcolor="#FFCC66"></td>
                                </tr>
                            </table>
                            <table width="90%"  border="0" cellspacing="0" cellpadding="0">
                                <tr>
                                    <td height="5"></td>
                                </tr>
                            </table>
                            <table width="70%"  border="0" cellspacing="0" cellpadding="3">
                                <s:iterator value="noBackRatios">
                                    <tr>
                                        <td height="15" width="200">
                                            <div align="left" class="hui">
                                                <a href="<s:url action="organsearch"/>?id=<s:property value="id"/>" target="_blank" class="hui">
                                                    <s:property value="name"/>
                                                </a>
                                            </div>
                                        </td>
                                        <td class="hui">
                                            <s:property value="noBackRatio"/>%
                                        </td>
                                    </tr>
                                </s:iterator>
                            </table>
                            <br>
                            <table width="90%"  border="0" cellspacing="0" cellpadding="0">
                                <tr>
                                    <td height="30" class="red_bt"><div align="left">热点问题</div></td>
                                </tr>
                                <tr>
                                    <td height="1" bgcolor="#FFCC66"></td>
                                </tr>
                            </table>
                            <table width="95%"  border="0" cellpadding="2" cellspacing="0" class="hui">
                                <s:iterator value="hots"  status="st">
                                    <tr>
                                        <td><img src="../images/num/no<s:property value="#st.index+1"/>b.jpg" width="13" height="13"/></td>
                                        <td height="25">
                                            <div align="left">
                                                <a href="<s:url action="detail"/>?id=<s:property value="id"/>" target="_blank" class="hui">
                                                    <s:if test="title.length()>20">
                                                        <s:property value="title.substring(0,20)"/>…
                                                    </s:if>
                                                    <s:else>
                                                        <s:property value="title"/>
                                                    </s:else>
                                                </a>
                                            </div>
                                        </td>
                                    </tr>
                                </s:iterator>
                            </table>

                            <br>
                        </div></td>
                </tr>
            </table>
            </div>
            <br>
            <s:include value="../footer.jsp"/>
        </div>
    </body>
</html>
