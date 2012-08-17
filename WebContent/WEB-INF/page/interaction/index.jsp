<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>中国瑞昌网欢迎您！</title>
    <link href="../css/ruichang.css" rel="stylesheet" type="text/css" />
    <script src="../Scripts/swfobject_modified.js" type="text/javascript"></script>
    <script src="../js/changdiv.js" type="text/javascript"></script>
    <script src="../source/js/jquery-1.4.2.min.js" type="text/javascript"></script>
    <script type="text/javascript">
      $(function(){
    	if ($('#currentTable').val() == '1'){
    		$('#dmndividb1').addClass('current');
    		$('#dmndividb2').removeClass('current');
    		$('#dmndividb3').removeClass('current');
    		$('#tdmndividb1').css('display','');
    		$('#tdmndividb2').css('display','none');
    		$('#tdmndividb3').css('display','none');
    	}else if ($('#currentTable').val() == '2'){
    		$('#dmndividb1').removeClass('current');
    		$('#dmndividb2').addClass('current');
    		$('#dmndividb3').removeClass('current');
    		$('#tdmndividb1').css('display','none');
    		$('#tdmndividb2').css('display','');
    		$('#tdmndividb3').css('display','none');
    	}else if ($('#currentTable').val() == '3'){
    		$('#dmndividb1').removeClass('current');
    		$('#dmndividb2').removeClass('current');
    		$('#dmndividb3').addClass('current');
    		$('#tdmndividb1').css('display','none');
    		$('#tdmndividb2').css('display','none');
    		$('#tdmndividb3').css('display','');
    	}
    	$('#dmndividb1').bind('mouseover',function(){
    		$('#currentTable').val('1');
    		ChangeFoldern(this,'dmndividb','3','current','');
    	});
    	$('#dmndividb2').bind('mouseover',function(){
    		$('#currentTable').val('2');
    		ChangeFoldern(this,'dmndividb','3','current','');
    	});
    	$('#dmndividb3').bind('mouseover',function(){
    		$('#currentTable').val('3');
    		ChangeFoldern(this,'dmndividb','3','current','');
    	});
      });
      function jumpPageXc(obj){
          var page = obj.options[obj.selectedIndex].text - 1 ;
          window.location = '<s:url action="index"/>?type=0&pageNumberXc=' + page ;
      }
      function jumpPageTs(obj){
          var page = obj.options[obj.selectedIndex].text - 1 ;
          window.location = '<s:url action="index"/>?type=0&pageNumberTs=' + page ;
      }
      function jumpPageZx(obj){
          var page = obj.options[obj.selectedIndex].text - 1 ;
          window.location = '<s:url action="index"/>?type=0&pageNumberZx=' + page ;
      }
      function MM_jumpMenu(targ,selObj,restore){ //v3.0
        eval(targ+".location='"+selObj.options[selObj.selectedIndex].value+"'");
        if (restore) selObj.selectedIndex=0;
      }
    </script>
  </head>
  <body>
    <!--顶部信息栏-->
    <s:include value="../top.jsp"/>
    <!--顶部信息栏结束-->
    <div id="whole_bg">
      <div id="content">
        <s:include value="../header.jsp"/>
        <!--内容-->
        <div class="side_box1 letter_side_h">
          <iframe src="http://218.65.14.6/mstd/fangtanqiantao/index.html" width="300" height="850" frameborder="0" scrolling="no"> 
            <a href="http://218.65.14.6/mstd/fangtanqiantao/index.html">你的浏览器不支持iframe页面嵌套，请点击这里访问页面内容。</a> 
          </iframe>
        </div>
        <div class="zwgk_mainbox letter_main">
          <div class="current_position">
            <p><span><strong>当前位置：</strong><a href="/">首页</a>＞政民互动</span></p>
            <p class="mail"><a href="<s:url action='interaction'/>">我要写信</a></p>
            <span class="srh1">
              <s:form action="search" name="zmhdsearchform" method="post">
                <input class="srh_t" name="title" type="text" value="信件检索" size="20" onclick="this.value=''"/>
                <input type="submit" value="搜索"/>
              </s:form>
            </span>
          </div>
          <div class="letter_box">
            <ul class="letter_menu">
              <li class="blank"></li>
              <li id="dmndividb1" style="cursor:hand;" class="current"><a href="<s:url action='list'/>?currentTable=3">建言献策</a></li>
              <li id="dmndividb2" style="cursor:hand;"><a href="<s:url action='list'/>?currentTable=1">在线咨询</a></li>
              <li id="dmndividb3" style="cursor:hand;"><a href="<s:url action='list'/>?currentTable=2">投诉监督</a></li>
              <s:hidden id="currentTable" name="currentTable"/>
            </ul>
            <div class="clearfloat"></div>
            <div class="list_tab">
              <table width="100%" id="tdmndividb1" style="display: " border="0" cellpadding="0" cellspacing="3">
                <tr>
                  <th>编号</th>
                  <th>内容</th>
                  <th>受理单位</th>
                  <th>状态</th>
                  <th>日期</th>
                </tr>
                <s:iterator value="interactionXcs">
                  <tr>
                    <td><s:property value="formatId"/></td>
                    <td class="ct">
                      <s:url action="detail" id="detailUrl"><s:param name="id" value="%{id}"/></s:url>
                      <a href="<s:property value="detailUrl"/>" target="_blank"><s:property value="title"/></a>
                    </td>
                    <td><a href="<s:url action="organsearch"/>?id=<s:property value="organ.id"/>" target="_blank"><s:property value="organ.name"/></a></td>
                    <td><s:property value="state.title"/></td>
                    <td><s:date format="yyyy-MM-dd" name="date"/></td>
                  </tr>
                </s:iterator>
                <tr>
                  <td colspan="5">
                    <table width="100%"  border="0" cellspacing="0" cellpadding="0">
                      <tr>
                        <td height="30" bgcolor="#F2F2F2">
                          <div align="center">
                                                                           共<s:property value="pageXc.pageCount"/>页&nbsp;当前为第<s:property value="pageXc.page"/>页&nbsp;
                            <s:if test="pageXc.pagePrev == -1">上一页</s:if>
                            <s:else>
                              <s:url action="index" id="pageUrl" escapeAmp="false">
                                <s:param name="type" value="%{type}"/>
                                <s:param name="pageNumberXc" value="%{pageXc.pagePrev-1}"/>
                                <s:param name="currentTable" value="1"/>
                              </s:url>
                              <a href="<s:property value="pageUrl"/>">上一页</a>
                            </s:else>
                            <s:iterator value="pageXc.pageList">
                              <s:if test = "pageXc.page == top"><strong><s:property value="top"/></strong></s:if>
                              <s:else>
                                <s:url action="index" id="pageUrl" escapeAmp="false">
                                  <s:param name="type" value="%{type}"/>
                                  <s:param name="pageNumberXc" value="%{top-1}"/>
                                  <s:param name="currentTable" value="1"/>
                                </s:url>
                                <a href="<s:property value="pageUrl"/>"><s:property value="top"/></a>
                              </s:else>&nbsp;
                            </s:iterator>
                            <s:if test="pageXc.pageNext == -1">下一页</s:if>
                            <s:else>
                              <s:url action="index" id="pageUrl" escapeAmp="false">
                                <s:param name="type" value="%{type}"/>
                                <s:param name="pageNumberXc" value="%{pageXc.pageNext-1}"/>
                                <s:param name="currentTable" value="1"/>
                              </s:url>
                              <a href="<s:property value="pageUrl"/>">下一页</a>
                            </s:else>&nbsp;转到
                            <select name="select" class="hui" onchange="jumpPageXc(this)">
                              <s:iterator value="pageXc.pageListAll">
                                <s:if test = "pageXc.page == top"><option selected><s:property value="top"/></option></s:if>
                                <s:else><option><s:property value="top"/></option></s:else>
                              </s:iterator>
                            </select>页
                          </div>
                        </td>
                      </tr>
                    </table>
                  </td>
                </tr>
              </table>
              <table width="100%" id="tdmndividb2" style="display:none" border="0" cellpadding="0" cellspacing="3">
                <tr>
                  <th>编号</th>
                  <th>内容</th>
                  <th>受理单位</th>
                  <th>状态</th>
                  <th>日期</th>
                </tr>
                <s:iterator value="interactionZxs">
                  <tr>
                    <td><s:property value="formatId"/></td>
                    <td class="ct">
                      <s:url action="detail" id="detailUrl"><s:param name="id" value="%{id}"/></s:url>
                      <a href="<s:property value="detailUrl"/>" target="_blank"><s:property value="title"/></a>
                    </td>
                    <td><a href="<s:url action="organsearch"/>?id=<s:property value="organ.id"/>" target="_blank"><s:property value="organ.name"/></a></td>
                    <td><s:property value="state.title"/></td>
                    <td><s:date format="yyyy-MM-dd" name="date"/></td>
                  </tr>
                </s:iterator>
                <tr>
                  <td colspan="5">
                    <table width="100%"  border="0" cellspacing="0" cellpadding="0">
                      <tr>
                        <td height="30" bgcolor="#F2F2F2">
                          <div align="center">
                                                                           共<s:property value="pageZx.pageCount"/>页&nbsp;当前为第<s:property value="pageZx.page"/>页&nbsp;
                            <s:if test="pageZx.pagePrev == -1">上一页</s:if>
                            <s:else>
                              <s:url action="index" id="pageUrl" escapeAmp="false">
                                <s:param name="type" value="%{type}"/>
                                <s:param name="pageNumberZx" value="%{pageZx.pagePrev-1}"/>
                                <s:param name="currentTable" value="2"/>
                              </s:url>
                              <a href="<s:property value="pageUrl"/>">上一页</a>
                            </s:else>
                            <s:iterator value="pageZx.pageList">
                              <s:if test = "pageZx.page == top"><strong><s:property value="top"/></strong></s:if>
                              <s:else>
                                <s:url action="index" id="pageUrl" escapeAmp="false">
                                  <s:param name="type" value="%{type}"/>
                                  <s:param name="pageNumberZx" value="%{top-1}"/>
                                  <s:param name="currentTable" value="2"/>
                                </s:url>
                                <a href="<s:property value="pageUrl"/>"><s:property value="top"/></a>
                              </s:else>&nbsp;
                            </s:iterator>
                            <s:if test="pageZx.pageNext == -1">下一页</s:if>
                            <s:else>
                              <s:url action="index" id="pageUrl" escapeAmp="false">
                                <s:param name="type" value="%{type}"/>
                                <s:param name="pageNumberZx" value="%{pageZx.pageNext-1}"/>
                                <s:param name="currentTable" value="2"/>
                              </s:url>
                              <a href="<s:property value="pageUrl"/>">下一页</a>
                            </s:else>&nbsp;转到
                            <select name="select" class="hui" onchange="jumpPageZx(this)">
                              <s:iterator value="pageZx.pageListAll">
                                <s:if test = "pageZx.page == top"><option selected><s:property value="top"/></option></s:if>
                                <s:else><option><s:property value="top"/></option></s:else>
                              </s:iterator>
                            </select>页
                          </div>
                        </td>
                      </tr>
                    </table>
                  </td>
                </tr>
              </table>
              <table width="100%" id="tdmndividb3" style="display:none" border="0" cellpadding="0" cellspacing="3">
                <tr>
                  <th>编号</th>
                  <th>内容</th>
                  <th>受理单位</th>
                  <th>状态</th>
                  <th>日期</th>
                </tr>
                <s:iterator value="interactionTss">
                  <tr>
                    <td><s:property value="formatId"/></td>
                    <td class="ct">
                      <s:url action="detail" id="detailUrl"><s:param name="id" value="%{id}"/></s:url>
                      <a href="<s:property value="detailUrl"/>" target="_blank"><s:property value="title"/></a>
                    </td>
                    <td><a href="<s:url action="organsearch"/>?id=<s:property value="organ.id"/>" target="_blank"><s:property value="organ.name"/></a></td>
                    <td><s:property value="state.title"/></td>
                    <td><s:date format="yyyy-MM-dd" name="date"/></td>
                  </tr>
                </s:iterator>
                <tr>
                  <td colspan="5">
                    <table width="100%"  border="0" cellspacing="0" cellpadding="0">
                      <tr>
                        <td height="30" bgcolor="#F2F2F2">
                          <div align="center">
                                                                           共<s:property value="pageTs.pageCount"/>页&nbsp;当前为第<s:property value="pageTs.page"/>页&nbsp;
                            <s:if test="pageTs.pagePrev == -1">上一页</s:if>
                            <s:else>
                              <s:url action="index" id="pageUrl" escapeAmp="false">
                                <s:param name="type" value="%{type}"/>
                                <s:param name="pageNumberTs" value="%{pageTs.pagePrev-1}"/>
                                <s:param name="currentTable" value="3"/>
                              </s:url>
                              <a href="<s:property value="pageUrl"/>">上一页</a>
                            </s:else>
                            <s:iterator value="pageTs.pageList">
                              <s:if test = "pageTs.page == top"><strong><s:property value="top"/></strong></s:if>
                              <s:else>
                                <s:url action="index" id="pageUrl" escapeAmp="false">
                                  <s:param name="type" value="%{type}"/>
                                  <s:param name="pageNumberTs" value="%{top-1}"/>
                                  <s:param name="currentTable" value="3"/>
                                </s:url>
                                <a href="<s:property value="pageUrl"/>"><s:property value="top"/></a>
                              </s:else>&nbsp;
                            </s:iterator>
                            <s:if test="pageTs.pageNext == -1">下一页</s:if>
                            <s:else>
                              <s:url action="index" id="pageUrl" escapeAmp="false">
                                <s:param name="type" value="%{type}"/>
                                <s:param name="pageNumberTs" value="%{pageTs.pageNext-1}"/>
                                <s:param name="currentTable" value="3"/>
                              </s:url>
                              <a href="<s:property value="pageUrl"/>">下一页</a>
                            </s:else>&nbsp;转到
                            <select name="select" class="hui" onchange="jumpPageTs(this)">
                              <s:iterator value="pageTs.pageListAll">
                                <s:if test = "pageTs.page == top"><option selected><s:property value="top"/></option></s:if>
                                <s:else><option><s:property value="top"/></option></s:else>
                              </s:iterator>
                            </select>页
                          </div>
                        </td>
                      </tr>
                    </table>
                  </td>
                </tr>
              </table>
            </div>
            <div class="ph_box">
              <div class="sonbox1">
                <h6><span><a href="#">更多</a></span>［热点问题］</h6>
                <ul class="list10">
                  <s:iterator value="hots" status="st">
                    <li>
                      <s:url action="detail" id="detailUrl"><s:param name="id" value="%{id}"/></s:url>
                      <a href="<s:property value="detailUrl"/>" target="_blank"><s:property value="title"/></a>
                    </li>
                  </s:iterator>
                </ul>
              </div>
              <div class="sonbox2">
                <h6><span><a href="#">更多</a></span>［网上调查］</h6>
                <ul class="list10">
                  <li><a href="#">省市人大代表视察九江市森防火察九江市森</a></li>
                  <li><a href="#">九江市"两违"整治督查组开明察</a></li>
                  <li><a href="#">九电四期356吨主变压器成功装56吨主变压器</a></li>
                  <li><a href="#">环保部督查组来九江市督查污查组来九江市督 </a></li>
                  <li><a href="#">九电四期356吨主变压器成(图)</a></li>
                  <li><a href="#">省市人大代表视察九江市森林防大代表视察九江市 </a></li>
                  <li><a href="#">钟利贵主持召开九江市四席会利贵主持召开九江</a></li>
                  <li><a href="#">省市人大代表视察九江市森林防察九江市森</a></li>
                  <li><a href="#">省市人大代表视察九江市森防火察九江市森</a></li>
                </ul>
              </div>
            </div>
          </div>
          <div class="clearfloat"></div>
        </div>
        <div id="ranking_list">
          <p class="close"><a href="#">关闭</a></p>
          <p class="com_name">部门信件回复排行</p>
          <table width="100%" border="0" align="center">
            <tr>
              <th scope="col">单位名称</th>
              <th scope="col">回复件数</th>
            </tr>
            <s:iterator value="backCount" status="st">
              <tr>
                <td align="center"><s:property value="name"/></td>
                <td align="center"><s:property value="backRatio"/></td>
              </tr>
            </s:iterator>
          </table>
        </div>
        <!--内容结束-->
        <!--脚注信息-->
        <div class="clearfloat"></div>
        <s:include value="../footer.jsp"/>
      </div>
      <script type="text/javascript">
        swfobject.registerObject("FlashID"); 
      </script>
    </div>
  </body>
</html>
