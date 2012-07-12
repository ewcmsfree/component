<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags" %>
<!--顶部信息栏开始-->
<div id="header_inf">
  <ul>
    <li class="top_link"><a href="#">简体中文</a><a href="#">繁体中文</a><a href="#">RSS订制</a><a href="#">加入收藏</a><a href="#">设为首页</a><a href="#">联系我们</a><a href="#">站点地图</a></li>
    <li><form id="searchSite" name="secarchSite" method="post" action="">站内检索:
    <input class="search_area" name="" type="text" value="" /><input class="search_button" name="" type="button" value="搜索" /><input class="ad_search_button" name="" type="button" value="高级检索" onclick="document.secarchSite.submit();"/></form></li>
  </ul>
</div>
<!--顶部信息栏结束-->