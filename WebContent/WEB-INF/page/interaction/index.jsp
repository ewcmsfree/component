<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>中国瑞昌网欢迎您！</title>
    <link href="<s:url value='/css/ruichang.css'/>" rel="stylesheet" type="text/css" />
    <script src="<s:url value='/Scripts/swfobject_modified.js'/>" type="text/javascript"></script>
    <script src="<s:url value='/js/changdiv.js'/>" type="text/javascript"></script>
    <script type="text/javascript" src="<s:url value='/source/js/jquery-1.4.2.min.js'/>"></script>
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
          <iframe src="/zhengminhudong/zaixianfangtan/fangtanqiantao/index.html" width="300" height="850" frameborder="0" scrolling="no"> 
            <a href="/zhengminhudong/zaixianfangtan/fangtanqiantao/index.html">你的浏览器不支持iframe页面嵌套，请点击这里访问页面内容。</a> 
          </iframe>
        </div>
        <div class="zwgk_mainbox letter_main">
          <div class="current_position">
            <p><span><strong>当前位置：</strong><a href="/">首页</a>＞政民互动</span></p>
            <p class="mail"><a href="<s:url action='interaction'/>">我要写信</a></p>
            <span class="srh1">
              <form action="<s:url value='/interaction/search.html'/>" name="zmhdsearchform" method="post">
                <input class="srh_t" name="title" type="text" value="信件检索" size="20" onclick="this.value=''"/>
                <input type="submit" value="搜索"/>
              </form>
            </span>
          </div>
          <div class="letter_box">
            <ul class="letter_menu">
              <li class="blank"></li>
              <li id="dmndividb1" style="cursor:hand;" class="current"><a href="<s:url value='/interaction/list/3.html'/>">建言献策</a></li>
              <li id="dmndividb2" style="cursor:hand;"><a href="<s:url value='/interaction/list/1.html'/>">在线咨询</a></li>
              <li id="dmndividb3" style="cursor:hand;"><a href="<s:url value='/interaction/list/2.html'/>">投诉监督</a></li>
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
                      <s:url value="/interaction/detail/%{id}.html" id="detailUrl"/>
                      <a href="<s:property value="detailUrl"/>" target="_blank"><s:property value="title"/></a>
                    </td>
                    <td><a href="<s:url value='/interaction/organ/search/%{organ.id}.html'/>" target="_blank"><s:property value="organ.name"/></a></td>
                    <td><s:property value="state.title"/></td>
                    <td><s:date format="yyyy-MM-dd" name="date"/></td>
                  </tr>
                </s:iterator>
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
                      <s:url value="/interaction/detail/%{id}.html" id="detailUrl"/>
                      <a href="<s:property value="detailUrl"/>" target="_blank"><s:property value="title"/></a>
                    </td>
                    <td><a href="<s:url value='/interaction/organ/search/%{organ.id}.html'/>" target="_blank"><s:property value="organ.name"/></a></td>
                    <td><s:property value="state.title"/></td>
                    <td><s:date format="yyyy-MM-dd" name="date"/></td>
                  </tr>
                </s:iterator>
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
                      <s:url value="/interaction/detail/%{id}.html" id="detailUrl"/>
                      <a href="<s:property value="detailUrl"/>" target="_blank"><s:property value="title"/></a>
                    </td>
                    <td><a href="<s:url value='/interaction/organ/search/%{organ.id}.html'/>" target="_blank"><s:property value="organ.name"/></a></td>
                    <td><s:property value="state.title"/></td>
                    <td><s:date format="yyyy-MM-dd" name="date"/></td>
                  </tr>
                </s:iterator>
              </table>
            </div>
            <div class="ph_box">
              <div class="sonbox1">
                <h6>［热点问题］</h6>
                <ul class="list10">
                  <s:iterator value="hots" status="st">
                    <li>
                      <s:url value="/interaction/detail/%{id}.html" id="detailUrl"/>
                      <a href="<s:property value="detailUrl"/>" target="_blank"><s:property value="title"/></a>
                    </li>
                  </s:iterator>
                </ul>
              </div>
              <div class="sonbox2">
                <iframe src="/zhengminhudong/wangshangdiaocha/diaochaqiantao" width="340" height="300" frameborder="0" scrolling="no"> 
            <a href="/zhengminhudong/wangshangdiaocha/diaochaqiantao">你的浏览器不支持iframe页面嵌套，请点击这里访问页面内容。</a> 
          </iframe>
              </div>
            </div>
          </div>
          <div class="clearfloat"></div>
        </div>
        <div id="ranking_list">
          <p class="close"><a href="#" onclick="closeShutManager1();">关闭</a></p>
          <p class="com_name">部门信件回复排行</p>
          <table width="100%" border="0" align="center">
            <tr>
              <th scope="col">单位名称</th>
              <th scope="col">回复件数</th>
            </tr>
            <s:iterator value="backCount" status="st">
              <tr>
                <td align="center"><a href="<s:url value='/interaction/organ/search/%{id}.html'/>" target="_blank"><s:property value="name"/></a></td>
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
<script type="text/javascript">
function closeShutManager1(){
  var targetObj =document.getElementById('ranking_list1');
  targetObj.style.display="none";
}
</script>