<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags" %>
<div id="flash">
      <object id="FlashID" classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000" width="1000" height="176">
        <param name="movie" value="<s:url value='/images/topbanner.swf'/>"/>
        <param name="quality" value="high" />
        <param name="wmode" value="opaque" />
        <param name="swfversion" value="8.0.35.0" />
        <!-- 此 param 标签提示使用 Flash Player 6.0 r65 和更高版本的用户下载最新版本的 Flash Player。如果您不想让用户看到该提示，请将其删除。 -->
        <param name="expressinstall" value="<s:url value='/Scripts/expressInstall.swf'/>"/>
        <!-- 下一个对象标签用于非 IE 浏览器。所以使用 IECC 将其从 IE 隐藏。 -->
        <!--[if !IE]>-->
        <object type="application/x-shockwave-flash" data="<s:url value='/images/topbanner.swf'/>" width="1000" height="176">
          <!--<![endif]-->
          <param name="quality" value="high" />
          <param name="wmode" value="opaque" />
          <param name="swfversion" value="8.0.35.0" />
          <param name="expressinstall" value="<s:url value='/Scripts/expressInstall.swf'/>"/>
          <!-- 浏览器将以下替代内容显示给使用 Flash Player 6.0 和更低版本的用户。 -->
          <div>
            <h4>此页面上的内容需要较新版本的 Adobe Flash Player。</h4>
            <p><a href="http://www.adobe.com/go/getflashplayer"><img src="http://www.adobe.com/images/shared/download_buttons/get_flash_player.gif" alt="获取 Adobe Flash Player" width="112" height="33" /></a></p>
          </div>
          <!--[if !IE]>-->
        </object>
        <!--<![endif]-->
      </object>
    </div>
    <!--主导航栏-->
    <div id="nav">
      <ul>
        <li><a href="#">首页</a></li>
        <li class="menu_line"></li>
        <li><a href="#">认识瑞昌</a></li>
        <li class="menu_line"></li>
        <li><a href="#">领导之窗</a></li>
        <li class="menu_line"></li>
        <li class="current_menu"><a href="#">政务公开</a></li>
        <li class="menu_line"></li>
        <li><a href="#">民声通道</a></li>
        <li class="menu_line"></li>
        <li><a href="#">在线服务</a></li>
        <li class="menu_line"></li>
        <li><a href="#">投资瑞昌</a></li>
        <li class="menu_line"></li>
        <li><a href="#">专题专栏</a></li>
        <li class="menu_line"></li>
        <li><a href="#">项目建设</a></li>
      </ul>
    </div>