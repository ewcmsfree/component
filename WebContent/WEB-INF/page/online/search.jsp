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
    <script type="text/javascript">
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
        <div class="wsbs_side">
          <iframe src="http://218.65.14.6/zxfw/zaixianfuwuqiantaozuo/index.html" width="228" height="760" frameborder="0" scrolling="no"> 
            <a href="http://218.65.14.6/zxfw/zaixianfuwuqiantaozuo/index.html">你的浏览器不支持iframe页面嵌套，请点击这里访问页面内容。</a> 
          </iframe>
        </div>
        <div class="wsbs_main">
          <div class="zw_box2">
            <div class="zx_k">
              <form action="search" method="post" name="onlineform" id="onlineform">
                <span>标题：</span><input name="" type="text" size="60"/>
                <input class="cx_bt" type="submit" value="查询" />
              </form>
            </div>
          </div>
	      <div class="clearfloat"></div>
          <div class="bs_process">
            <h5>检索结果</h5>
            <s:iterator value = "workings" id="working">
              <p><s:property value="#working.name"/></p>
              <ul class="bs_list">
              <s:iterator value="children" id="child" status="st">
                <s:if test="id != null">
                <s:url action="working" id="url" escapeAmp="false"><s:param name="workingId" value="#child.id"/><s:param name="parentId" value="#working.id"/></s:url>
                <li><a href="<s:property value="url"/>" target="_blank" ><s:property value="#child.name"/></a></li>
                </s:if>
              </s:iterator>
              </ul>
              <div class="clearfloat"></div>
            </s:iterator>
            <ul><li class="nobg"><a href="#">办事指南</a></li><li><a href="http://218.87.91.208:8008/outportal">网上申报</a></li><li><a href="#">网上咨询</a></li><li><a href="#">在线查询</a></li><li><a href="#">表格下载</a></li></ul>
          </div>
          <div class="clearfloat"></div>
          <p class="page"><a href="#">第一页</a><a href="#">上一页</a><a class="num" href="#">..</a><a class="num" href="#">1</a><a class="num" href="#">2</a><a class="num" href="#">3</a><a class="num" href="#">4</a><a class="num" href="#">5</a><a class="num" href="#">6</a><a class="num" href="#">7</a><a class="num" href="#">8</a><a class="num" href="#">9</a><a class="num" href="#">10</a><a class="num" href="#">..</a><a href="#">下一页</a></p>     
        </div>
        <!--内容结束-->
      </div>
      <!--脚注信息-->
      <div class="clearfloat"></div>
      <s:include value="../footer.jsp"/>
    </div>
    <script type="text/javascript">
      swfobject.registerObject("FlashID");
    </script>
  </body>
</html>
