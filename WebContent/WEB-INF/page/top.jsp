<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags" %>
<!--顶部信息栏开始-->
<div id="header_inf">
  <ul>
    <li class="top_link"><script src="<s:url value="/js/language.js"/>" type="text/javascript"></script><a href="#">RSS订制</a><a href="#" onClick="window.external.addFavorite('http://www.ruichang.gov.cn/','中国瑞昌网')">加入收藏</a><a href="#" onclick="this.style.behavior='url(#default#homepage)';this.setHomePage('http://www.ruichang.gov.cn/');">设为首页</a><a href="#">联系我们</a><a href="#">站点地图</a></li>
    <li><form id="form1" name="form1" method="post" action="">站内检索:<input class="search_area" name="" type="text" value="" /><input class="search_button" name="" type="button" value="搜索" /><input class="ad_search_button" name="" type="button" value="高级检索" /></form></li>
  </ul>
</div>
<!--顶部信息栏结束-->