<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags" %>

<!--顶部信息栏开始-->
<div id="header_inf">
  <ul>
        <li class="top_link">
            <a name="StranLink">繁體中文</a>
            <a href="/component/rss.html">RSS订制</a>
            <a href="javascript:void(0);" onClick="window.external.addFavorite('http://www.ruichang.gov.cn/','中国瑞昌网')">加入收藏</a>
            <a href="javascript:void(0);" onclick="this.style.behavior='url(#default#homepage)';this.setHomePage('http://www.ruichang.gov.cn/');">设为首页</a>
            <a href="javascript:void(0);">联系我们</a>
            <a href="javascript:void(0);">站点地图</a>
        </li>
        <li>
            <form name="searchform" method="get" action="/search/search.jsp">站内检索:
                <input type="hidden" name="lang" value="zh"/>
                <input type="hidden" name="hitsPerSite" value="0"/>
                <input type="hidden" name="clustering" value=""/>
                <input class="search_area" name="query" type="text" value="请输入关键字" onclick="this.value='';"/>
                <input class="search_button" name="button" type="submit" value="搜索" />
                <input class="ad_search_button" name="advbutton" type="button" value="高级检索" onclick="window.open('/component/online/advquery.do');"/>
            </form>
        </li>
    </ul>
</div>
<!--顶部信息栏结束-->