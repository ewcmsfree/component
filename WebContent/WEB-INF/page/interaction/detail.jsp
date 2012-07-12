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
            .style42 {color: #000000}
            -->
            iframe.editifr{border:0;margin:0;padding:0;width:100%;height:100%;overflow:hidden;border:none;}
            .speak {width: 95%;}
            .speak td{font-size: 12px;padding: 5px;vertical-align: top;}
            .speak .bottom{border-bottom:1px solid #33ffff;}
            .speak .content{border-left:1px solid #33ffff;margin: 8px 5px;padding-left: 10px}
            .speak em{font-style: normal;font-weight: bold;margin-right: 6px;}
        </style>
        <script src="<s:url value='/Scripts/swfobject_modified.js'/>" type="text/javascript"></script>
        <script type="text/javascript">
            function refresh(){
                var url = '<s:url action = "detail"/>?id=<s:property value="id"/>&counter=false&nocache='+Math.random();
                window.location = url;
            }
            function jumpPage(obj){
                var page = obj.options[obj.selectedIndex].text -1 ;
                window.location = ' <s:url action="detail"/>?id=<s:property value="id"/>&counter=false&pageNumber=' + page ;
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
                                <td height="53" background="images/zmhd_icon.jpg"><div align="right">
                                        <table width="130" border="0" cellpadding="0" cellspacing="0" class="hui">
                                            <tr>
                                                <td height="25"><div align="left"><img src="../images/bullet_02.gif" width="7" height="7"><a class="hui" href="<s:url action="interaction"/>" target="_blank"><span class="style9">我要写信</span></a></div></td>
                                            </tr>
                                            <tr>
                                                <td height="1" background="../images/xuxian.gif"></td>
                                            </tr>
                                            <tr>
                                                <td height="25"><div align="left"><img src="../images/bullet_02.gif" width="7" height="7"><a class="hui" href="<s:url action="interaction" namespace="/user"/>" target="_blank"><span class="style9">我的信件箱</span></a></div></td>
                                            </tr>
                                        </table>
                                    </div></td>
                            </tr>
                        </table>
                        <table width="100%"  border="0" cellspacing="0" cellpadding="0">
                            <tr>
                                <td height="10"></td>
                            </tr>
                        </table>
                        <table border="0" cellpadding="0" cellspacing="0" width="715">
                            <tr>
                                <td><img src="images/images/spacer.gif" alt="" name="undefined_3" width="715" height="1" border="0"></td>
                                <td><img src="images/images/spacer.gif" alt="" name="undefined_3" width="1" height="1" border="0"></td>
                            </tr>
                            <tr>
                                <td><img name="news_kuang_r1_c1" src="images/images/news_kuang_r1_c1.jpg" width="715" height="8" border="0" alt=""></td>
                                <td><img src="images/images/spacer.gif" alt="" name="undefined_3" width="1" height="8" border="0"></td>
                            </tr>
                            <tr>
                                <td background="images/images/news_kuang_r2_c1.jpg">
                                    <div align="center" class="news_bt style42">
                                        <s:property value="interaction.title"/>
                                    </div>
                                </td>
                                <td><img src="images/images/spacer.gif" alt="" name="undefined_3" width="1" height="46" border="0"></td>
                            </tr>
                            <tr>
                                <td background="images/images/news_kuang_r3_c1.jpg"><div align="center">
                                        <table width="95%"  border="0" cellspacing="3" cellpadding="2">
                                            <tr>
                                                <td height="1" bgcolor="#CCCCCC"></td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    <div align="center" class="hui">
                                                        编号：<s:property value="interaction.id"/>&nbsp;&nbsp;
                                                        咨询人：<s:property value="interaction.name"/>&nbsp;&nbsp;
                                                        类型：<s:if test = "interaction.type==1">咨询</s:if><s:if test = "interaction.type==2">投诉</s:if><s:if test = "interaction.type==3">建议</s:if>&nbsp;&nbsp;
                                                        咨询对象：<font color="#cc0000"><s:property value="interaction.organ.name"/></font>&nbsp;&nbsp;
                                                        浏览：<s:property value="interaction.counter"/>次&nbsp;&nbsp;
                                                        提问时间：<s:date format="yyyy-MM-dd" name="interaction.date"/>
                                                    </div>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td height="1" bgcolor="#CCCCCC"></td>
                                            </tr>
                                            <tr>
                                                <td class="hui">
                                                    <div align="left">
                                                        <s:property value="interaction.content"/>
                                                    </div>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>&nbsp;</td>
                                            </tr>
                                        </table>
                                        <table width="95%"  border="0" cellpadding="4" cellspacing="1" bgcolor="#E4E4E4">
                                            <tr>
                                                <td height="30" bgcolor="#F5F5F5" align="center">
                                                    <table border="0" cellpadding="0" cellspacing="1" width ="100%">
                                                        <tr>
                                                            <td align="left">
　                                                              <img src="images/mail_biao.jpg" width="26" height="20"/><span class="red_bt"><s:property value="interaction.organ.name"/>的回复</span>
                                                            </td>
                                                            <td align="right">
                                                                <span class="hui style9" style="margin-right:15px;">回复时间：<s:date format="yyyy-MM-dd" name="interaction.replayDate"/></span>
                                                            </td>
                                                        </tr>
                                                    </table>
                                                </td>

                                            </tr>
                                            <tr>
                                                <td bgcolor="#FFFFFF">
                                                    <div align="left" class="hui">
                                                        <s:if test="interaction.state.ordinal() == 1">
                                                            <s:property value="interaction.replay"/>
                                                        </s:if>
                                                        <s:else>
                                                            待回复
                                                        </s:else>
                                                    </div>
                                                </td>
                                            </tr>
                                        </table>
                                        <br/>
                                        <s:if test="interaction.speakCount != 0">
                                            <br>
                                            <span class="red_bt">－－回复评价－－</span><br>
                                            <s:iterator value="interaction.speaks">
                                                <table width="80%"  border="0" cellspacing="4" cellpadding="0">
                                                    <tr>
                                                        <td class="xu_di_line">
                                                            <div align="left" class="hui style9">
                                                                用户名：<s:property value="name"/>&nbsp;&nbsp;&nbsp;&nbsp;评论时间：<s:date format="yyyy-MM-dd" name="date"/>
                                                            </div>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            <div align="left">
                                                                <span class="hui"><s:property value="content"/></span>
                                                                <br>
                                                            </div>
                                                        </td>
                                                    </tr>
                                                </table>
                                            </s:iterator>
                                            <br>
                                            <table width="95%"  border="0" cellspacing="0" cellpadding="0">
                                                <tr>
                                                    <td height="30" bgcolor="#F2F2F2" class="li_line"><div align="center" class="hui">
                                                            共<s:property value="page.pageCount"/>页&nbsp;当前为第<s:property value="page.page"/>页&nbsp;
                                                            <s:if test="page.pagePrev == -1">
                                                                上一页
                                                            </s:if>
                                                            <s:else>
                                                                <s:url action="detail" id="pageUrl" escapeAmp="false">
                                                                    <s:param name="id" value="%{id}"/>
                                                                    <s:param name="counter" value="false"/>
                                                                    <s:param name="pageNumber" value="%{page.pagePrev-1}"/>
                                                                </s:url>
                                                                <a href="<s:property value="pageUrl"/>">上一页</a>
                                                            </s:else>
                                                            <s:iterator value="page.pageList">
                                                                <s:if test = "page.page == top">
                                                                    <strong><s:property value="top"/></strong>
                                                                </s:if>
                                                                <s:else>
                                                                    <s:url action="detail" id="pageUrl" escapeAmp="false">
                                                                        <s:param name="id" value="%{id}"/>
                                                                        <s:param name="counter" value="false"/>
                                                                        <s:param name="pageNumber" value="%{top-1}"/>
                                                                    </s:url>
                                                                    <a href="<s:property value="pageUrl"/>"><s:property value="top"/></a>
                                                                </s:else>&nbsp;
                                                            </s:iterator>
                                                            <s:if test="page.pageNext == -1">
                                                                下一页
                                                            </s:if>
                                                            <s:else>
                                                                <s:url action="detail" id="pageUrl" escapeAmp="false">
                                                                    <s:param name="id" value="%{id}"/>
                                                                    <s:param name="counter" value="false"/>
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
                                                        </div>
                                                    </td>
                                                </tr>
                                            </table>
                                        </s:if>
                                        <br/>
                                        <table width="95%"  border="0" cellspacing="0" cellpadding="0">
                                            <tr>
                                                <td height="30" class="xu_di_line"><div align="left"><span class="hui style9">我要评价</span></div></td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    <div align="center" style="height: 390px;margin: 10px 0 0 15px;">
                                                        <br/>
                                                        <s:url action="speak" id="speakUrl">
                                                            <s:param name="interactionId" value="%{id}"/>
                                                        </s:url>
                                                        <iframe src="<s:property value="speakUrl"/>" height="200" id="imagefoifr"  name="imagefoifr" class="editifr" scrolling="no"></iframe>
                                                    </div>
                                                </td>
                                            </tr>
                                        </table>
                                        <p><br>
                                            <br>
                                        </p>
                                    </div></td>
                                <td><img src="images/images/spacer.gif" alt="" name="undefined_3" width="1" height="29" border="0"></td>
                            </tr>
                            <tr>
                                <td><img name="news_kuang_r4_c1" src="images/images/news_kuang_r4_c1.jpg" width="715" height="17" border="0" alt=""></td>
                                <td><img src="images/images/spacer.gif" alt="" name="undefined_3" width="1" height="17" border="0"></td>
                            </tr>
                        </table></td>
                    <td width="5"></td>
                    <td width="280" valign="top" bgcolor="fdf9ee" class="cheng_line"><div align="center">
                            <s:form name="searchForm" action="search" method="post">
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
        <script type="text/javascript" language="javascript">
                var DocumentReadyTF=false;
                function document.onreadystatechange()
                {
                    if (DocumentReadyTF) return;
                    if(document.readyState=='complete') DocumentReadyTF=true;
                }

                function ChangeFoldern(el,trid,tcount,bg1,bg2,class1,class2)
                {
                    var OperObj=null;
                    var j;
                    if (DocumentReadyTF){
                        for (var i=0;i<tcount;i++)
                        {
                            j=i+1;
                            OperObj=document.getElementById(trid+j);
                            OperObjd=document.getElementById('d'+trid+j);
                            AreaObj=document.getElementById('t'+trid+j);
                            //if (OperObj!=null)
                            {
                                if (OperObj.id!=el.id)
                                {
                                    if (AreaObj!=null) {
                                        AreaObj.style.display='none';
                                        //onmouseover="this.style.background='#E0E0E0';this.style.color='#E0E0E0'"   onmouseout="this.style.background='#F2F2F2';this.style.color='#F2F2F2'"
                                        OperObj.background=bg2;
                                        OperObj.className=class2;
                                        //OperObj.style.color='#F2F2F2';
                                    }
                                    if (OperObjd!=null)
                                    {
                                        OperObjd.className='hui';
                                    }
                                }
                                else
                                    if (AreaObj!=null)
                                {
                                    AreaObj.style.display='';
                                    OperObj.background=bg1;
                                    OperObj.className=class1;
                                    //OperObj.style.color='#E0E0E0';
                                    if (OperObjd!=null)
                                    {
                                        OperObjd.className='hui style9';
                                    }
                                }

                            }
                        }
                        //AreaObj=document.getElementById('tmndivid3');
                        //AreaObj.style.display='';
                    }

                }
        </script>
    </body>
</html>
