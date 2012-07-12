<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags" %>
<html>
    <head>
        <title>中国瑞昌网为您服务！</title>
        <script type="text/javascript" src="<s:url value="/source/js/jquery-1.4.2.min.js"/>"></script>
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
            .style40 {color: #336600}
            .style41 {color: #FF0000}
            -->
        </style>
        <script src="<s:url vlaue='/Scripts/swfobject_modified.js'/>" type="text/javascript"></script>
        <script type="text/JavaScript">
			function jumpPage(obj){
            	var page = obj.options[obj.selectedIndex].text -1 ;
                window.location = ' <s:url action="search"/>?type=<s:property value="type"/>&title=<s:property value="title" escape="false"/>&pageNumber=' + page ;
            }
        </script>
    </head>
    <body>
        <<s:include value="../top.jsp"/>
    	<div id="whole_bg">
  			<div id="content">
            <s:include value="../header.jsp"/>
            <table width="1000" border="0" cellspacing="0" cellpadding="0">
                <tr>
                    <td width="750" valign="top"><table width="100%"  border="0" cellspacing="0" cellpadding="0">
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
                                <td height="5"></td>
                            </tr>
                        </table>
                        <br>
                        <table width="100%"  border="0" cellspacing="0" cellpadding="0">
                            <tr>
                                <td class="di_line">
                                    <div align="center" class="hui">
                                        <s:form action="search" method="post">
                                            <table border="0" cellpadding="0" cellspacing="0">
                                                <tr>
                                                    <td>
                                                        <span class="hui" style="text-align: left;">关键字：</span>
                                                        <s:textfield name="title" size="35"/>
                                                        <div class="hui" align ="left" style="padding:8px 0 8px 50px;">
                                                            <s:radio list="#{'0':'所有','1':'已回复','2':'未已回复'}" name = "type" value="%{type}"/>
                                                        </div>
                                                    </td>
                                                    <td width="100" align="center" valign="top" >
                                                        <img src="images/search.gif" width="51" height="35" onclick="document.forms[0].submit();"/>
                                                    </td>
                                                </tr>
                                            </table>
                                        </s:form>
                                    </div>
                                </td>
                            </tr>
                            <tr>
                                <td class="zyd_line">
                                    <div align="center">
                                        <br>
                                        <table width="95%"  border="0" cellspacing="0" cellpadding="0">
                                            <tr>
                                                <td width="60" height="40"><div align="center" class="zongcolor"><strong>编号</strong></div></td>
                                                <td width="50"><div align="center" class="zongcolor"><strong>类型</strong></div></td>
                                                <td><div align="center" class="zongcolor"><strong>内容</strong></div></td>
                                                <td width="110"><div align="center" class="zongcolor"><strong>受理单位</strong></div></td>
                                                <td width="40"><div align="center" class="zongcolor"><strong>状态</strong></div></td>
                                                <td width="70"><div align="center" class="zongcolor"><strong>日期</strong></div></td>
                                            </tr>
                                        </table>
                                        <table width="95%"  border="0" cellspacing="0" cellpadding="0">
                                            <tr>
                                                <td height="1" bgcolor="#F1D68D"></td>
                                            </tr>
                                        </table>
                                        <table width="95%"  border="0" cellpadding="0" cellspacing="0">
                                            <s:iterator value="interactions">
                                                <tr bgcolor="#F9F9F9">
                                                    <td width="60" height="40" bgcolor="#F9F9F9" class="xu_di_line">
                                                        <div align="center" class="hui"><img src="../images/bullet_01.gif" width="14" height="10"/>
                                                            <s:property value="formatId"/>
                                                        </div>
                                                    </td>
                                                    <td width="50" class="xu_di_line">
                                                        <div align="center" class="hui">
                                                            [<s:if test = "type==1">咨询</s:if><s:if test = "type==2">投诉</s:if><s:if test = "type==3">建议</s:if>]
                                                        </div>
                                                    </td>
                                                    <td class="xu_di_line">
                                                        <div align="left" class="news">
                                                            <s:url action="detail" id="detailUrl">
                                                                <s:param name="id" value="%{id}"/>
                                                            </s:url>
                                                            <a href="<s:property value="detailUrl"/>" target="_blank"><s:property value="title"/></a>
                                                        </div>
                                                    </td>
                                                    <td width="110" class="xu_di_line"><div align="center" class="hui">
                                                            <a href="<s:url action="organsearch"/>?id=<s:property value="organ.id"/>" target="_blank">
                                                                <s:property value="organ.name"/>
                                                            </a></div>
                                                    </td>
                                                    <td width="40" class="xu_di_line"><div align="center" class="hui style40"><s:property value="state.title"/></div></td>
                                                    <td width="70" class="xu_di_line"><div align="center" class="hui"><s:date format="yyyy-MM-dd" name="date"/></div></td>
                                                </tr>
                                            </s:iterator>
                                        </table>
                                        <br>
                                        <table width="95%"  border="0" cellspacing="0" cellpadding="0">
                                            <tr>
                                                <td height="30" bgcolor="#F2F2F2" class="li_line"><div align="center" class="hui">
                                                        共<s:property value="page.pageCount"/>页&nbsp;当前为第<s:property value="page.page"/>页&nbsp;
                                                        <s:if test="page.pagePrev == -1">
                                                            上一页
                                                        </s:if>
                                                        <s:else>
                                                            <s:url action="search" id="pageUrl" escapeAmp="false">
                                                                <s:param name="type" value="%{type}"/>
                                                                <s:param name="title" value="%{title}"/>
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
                                                                    <s:param name="type" value="%{type}"/>
                                                                    <s:param name="title" value="%{title}"/>
                                                                    <s:param name="pageNumber" value="%{top-1}"/>
                                                                </s:url>
                                                                <a href="<s:property value="pageUrl"/>"><s:property value="top"/></a>
                                                            </s:else>&nbsp;
                                                        </s:iterator>
                                                        <s:if test="page.pageNext == -1">
                                                            下一页
                                                        </s:if>
                                                        <s:else>
                                                            <s:url action="search" id="pageUrl" escapeAmp="false">
                                                                <s:param name="type" value="%{type}"/>
                                                                <s:param name="title" value="%{title}"/>
                                                                <s:param name="pageNumber" value="%{page.pageNext-1}"/>
                                                            </s:url>
                                                            <a href="<s:property value="pageUrl"/>">下一页</a>&nbsp;转到
                                                        </s:else>
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
                                        <br>
                                    </div></td>
                            </tr>
                        </table>
                    </td>
                    <td width="5"></td>
                    <td width="280" valign="top" bgcolor="fdf9ee" class="cheng_line"><div align="center">
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
