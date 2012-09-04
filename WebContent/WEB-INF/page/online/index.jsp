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
          <iframe src="/zxfw/zaixianfuwuqiantaozuo/index.html" width="228" height="760" frameborder="0" scrolling="no"> 
            <a href="/zxfw/zaixianfuwuqiantaozuo/index.html">你的浏览器不支持iframe页面嵌套，请点击这里访问页面内容。</a> 
          </iframe>
        </div>
        <div class="wsbs_main">
          <div class="current_position"><p><span><strong>当前位置：</strong><a href="/">首页</a>＞在线服务</span></p></div>
          <div class="scene_nav">
            <ul>
              <li><a href="#">我要上学</a></li>
              <li><a href="#">我要就医</a></li>
              <li><a href="#">我要就业</a></li>
              <li><a href="#">我要置业</a></li>
              <li><a href="#">我要出行</a></li>
            </ul>
          </div>
          <div class="clearfloat"></div>
          <div class="detail_list">
            <div class="detail_l">
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
            <p>部门办事</p>
            <ul class="bs_list">
            <s:iterator value="organs" status="st">
              <s:if test="id != null">
                <s:url action="organ" id="url" escapeAmp="false"><s:param name="organId" value="id"/></s:url>
                <li><a href="<s:property value="url"/>" target="_blank"><s:property value="name"/></a></li>
              </s:if>
            </s:iterator>
            </ul>
            </div>
            <div class="detail_r">
              <ul>
              <s:iterator value="citizens" status="st">
                <s:url action ="citizen" id="url" escapeAmp="false"><s:param name="citizenId" value="id"/></s:url>
                <li><a href="<s:property value="url"/>" target="_blank"><s:property value="name"/></a></li>
              </s:iterator>
              </ul>
            </div>
            <div class="clearfloat"></div>
            <div class="banjiangonshi">
              <iframe src="http://218.65.3.189:8080/rcxzfw/xzfw/index_sy.jsp" width="765" height="270" frameborder="0" scrolling="no"> 
                <a href="http://218.65.3.189:8080/rcxzfw/xzfw/index_sy.jsp">你的浏览器不支持iframe页面嵌套，请点击这里访问页面内容。</a> 
              </iframe>
            </div>
          </div>
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
