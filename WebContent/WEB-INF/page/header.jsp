<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags" %>

<div id="flash">
  <object id="FlashID" classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000" width="1000" height="176">
    <param name="movie" value="../images/topbanner.swf" />
    <param name="quality" value="high" />
    <param name="wmode" value="opaque" />
    <param name="swfversion" value="8.0.35.0" />
    <!-- 此 param 标签提示使用 Flash Player 6.0 r65 和更高版本的用户下载最新版本的 Flash Player。如果您不想让用户看到该提示，请将其删除。 -->
    <param name="expressinstall" value="../Scripts/expressInstall.swf" />
    <!-- 下一个对象标签用于非 IE 浏览器。所以使用 IECC 将其从 IE 隐藏。 -->
    <!--[if !IE]>-->
    <object type="application/x-shockwave-flash" data="../images/topbanner.swf" width="1000" height="176">
      <!--<![endif]-->
      <param name="quality" value="high" />
      <param name="wmode" value="opaque" />
      <param name="swfversion" value="8.0.35.0" />
      <param name="expressinstall" value="../Scripts/expressInstall.swf" />
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
          <li id="dmndivida1" onMouseOver="ChangeFoldern(this,'dmndivida','9','current_menu','');" style="cursor:hand;" class="current_menu"><a href="/">首页</a></li>
        <li class="menu_line"></li>
        <li id="dmndivida2" onMouseOver="ChangeFoldern(this,'dmndivida','9','current_menu','');" style="cursor:hand;">
            <a href="/renshiruichang">认识瑞昌</a>
           </li>
        <li class="menu_line"></li>
        <li id="dmndivida3" onMouseOver="ChangeFoldern(this,'dmndivida','9','current_menu','');" style="cursor:hand;">
<a href="/leader">领导之窗</a>
</li>
        <li class="menu_line"></li>
        <li id="dmndivida4" onMouseOver="ChangeFoldern(this,'dmndivida','9','current_menu','');" style="cursor:hand;">
<a href="/zhengwugongkai">政务公开</a>
</li>
        <li class="menu_line"></li>
        <li id="dmndivida5" onMouseOver="ChangeFoldern(this,'dmndivida','9','current_menu','');" style="cursor:hand;">
<a href="/component/interaction/index.do">政民互动</a>
</li>
        <li class="menu_line"></li>
        <li id="dmndivida6" onMouseOver="ChangeFoldern(this,'dmndivida','9','current_menu','');" style="cursor:hand;">
<a href="/component/online/index.do">在线服务</a>
</li>
        <li class="menu_line"></li>
        <li id="dmndivida7" onMouseOver="ChangeFoldern(this,'dmndivida','9','current_menu','');" style="cursor:hand;">
<a href="http://www.rcsswj.com/" target="_blank">投资瑞昌</a>
</li>
        <li class="menu_line"></li>
        <li id="dmndivida8" onMouseOver="ChangeFoldern(this,'dmndivida','9','current_menu','');" style="cursor:hand;">
<a href="/zhuantizhuanlan">专题专栏</a>
</li>
        <li class="menu_line"></li>
        <li id="dmndivida9" onMouseOver="ChangeFoldern(this,'dmndivida','9','current_menu','');" style="cursor:hand;">
<a href="/xiangmujianshe">项目建设</a>
</li>
      </ul>
    </div>
    <div id="submenu">
        <div id="tdmndivida1" style="display: ">
        <span class="red">瑞昌市人民政府为您服务！</span>
        </div>
        <ul id="tdmndivida2" style="display:none">

    <li><a href="/renshiruichang/ruichanggaikuang" target="_blank">瑞昌概况</a></li>
        <li>|</li>

    <li><a href="/renshiruichang/ziranzhiziyuan" target="_blank">自然资源</a></li>
        <li>|</li>

    <li><a href="/renshiruichang/xingzhengquyu" target="_blank">行政区划</a></li>
        <li>|</li>

    <li><a href="/renshiruichang/shehuijingji" target="_blank">社会经济</a></li>
        <li>|</li>

    <li><a href="/renshiruichang/minsuminfeng" target="_blank">民俗民风</a></li>
        <li>|</li>

    <li><a href="/renshiruichang/lishiwenming" target="_blank">历史文明</a></li>
        <li>|</li>

    <li><a href="/renshiruichang/zhushiqiye" target="_blank">驻市企业</a></li>
        <li>|</li>

    <li><a href="/renshiruichang/fazhanjihua" target="_blank">发展规划</a></li>
        <li>|</li>

        </ul>
        <ul id="tdmndivida3" style="display:none">
<li><a href="/leader/shiwei" target="_blank">市委</a></li>
        <li>|</li>
<li><a href="/leader/renda" target="_blank">人大</a></li>
        <li>|</li>
<li><a href="/leader/zhengfu" target="_blank">政府</a></li>
        <li>|</li>
<li><a href="/leader/zhengxie" target="_blank">政协</a></li>
        <li>|</li>
             
        </ul>
        <ul id="tdmndivida4" style="display:none">
<li><a href="/zhengwugongkai/jinriruichang" target="_blank">今日瑞昌</a></li>
        <li>|</li>
<li><a href="/zhengwugongkai/gonggaogongshi" target="_blank">公告公示</a></li>
        <li>|</li>
<li><a href="/zhengwugongkai/zhengfuwenjian" target="_blank">政府文件</a></li>
        <li>|</li>
<li><a href="/zhengwugongkai/renshixinxi" target="_blank">人事信息</a></li>
        <li>|</li>
<li><a href="/zhengwugongkai/fazhanguihua" target="_blank">发展规划</a></li>
        <li>|</li>
<li><a href="/zhengwugongkai/zdly" target="_blank">重点领域</a></li>
        <li>|</li>
<li><a href="/zhengwugongkai/szbm" target="_blank">市直部门</a></li>
        <li>|</li>
<li><a href="/zhengwugongkai/tongjixinxi" target="_blank">统计信息</a></li>
        <li>|</li>
<li><a href="/component/interaction/gwhsearch.do" target="_blank">公文检索</a></li>
<li><a href="/zhengwugongkai">更多</a></li>
        </ul>

        <ul id="tdmndivida5" style="display:none">

<li><a href="http://117.40.173.81/component/interaction/list.do?currentTable=3" target="_blank">建言献策</a></li>
        <li>|</li>
<li><a href="http://117.40.173.81/component/interaction/list.do?currentTable=1" target="_blank">在线咨询</a></li>
        <li>|</li>
<li><a href="http://117.40.173.81/component/interaction/list.do?currentTable=2" target="_blank">投诉监督 </a></li>
        <li>|</li>
<li><a href="/zhengminhudong/zaixianfangtan" target="_blank">在线访谈</a></li>
        <li>|</li>
<li><a href="/zhengminhudong/wangshangdiaocha" target="_blank">网上调查</a></li>
        <li>|</li>
        </ul>
        <ul id="tdmndivida6" style="display:none">
		<li><a href="/component/online/working.do?parentId=2&workingId=2" target="_blank">市民办事</a></li>
		<li>|</li>
		<li><a href="/component/online/working.do?parentId=2&workingId=3" target="_blank">企业办事</a></li>
		<li>|</li>
		<li><a href="/component/online/organ.do" target="_blank">部门办事</a></li>
		<li>|</li>
<li><a href="/zxfw/bjss" target="_blank">百件实事网上办</a></li>
        <li>|</li>
<li><a href="/zxfw/jiuyexinxi" target="_blank">就业信息</a></li>
        <li>|</li>
<li><a href="/zxfw/bianminxinxi" target="_blank">便民信息</a></li>
        <li>|</li>
<li><a href="/zxfw/shiyongxinxi" target="_blank">实用信息</a></li>
        <li>|</li>
<li><a href="/zxfw/chaxunfuwu" target="_blank">查询服务</a></li>
        <li>|</li>
<li><a href="/zxfw/changjingdaohang" target="_blank">场景导航</a></li>
        <li>|</li>
        </ul>
        <ul id="tdmndivida7" style="display:none">
            <li><span class="red">瑞昌市人民政府为您服务！</span></li>
        </ul>
        <ul id="tdmndivida8" style="display:none">
<li><a href="/zhuantizhuanlan/1126dadizhen" target="_blank">11.26大地震</a></li>
        <li>|</li>
<li><a href="/zhuantizhuanlan/wenmingchuangjian" target="_blank">文明创建</a></li>
        <li>|</li>
<li><a href="/zhuantizhuanlan/tongchengqingfeng" target="_blank">铜城清风</a></li>
        <li>|</li>
<li><a href="/zhuantizhuanlan/xinnongcunjianshe" target="_blank">新农村建设</a></li>
        <li>|</li>
<li><a href="/zhuantizhuanlan/zuzhigongzuo" target="_blank">组织工作</a></li>
        <li>|</li>
<li><a href="/zhuantizhuanlan/shizhibianzhuan" target="_blank">市志编撰</a></li>
        <li>|</li>
<li><a href="/zhuantizhuanlan">更多</a></li>
        </ul>
        <ul id="tdmndivida9" style="display:none">
<li><a href="/xiangmujianshe/xiangmujihuaanpai" target="_blank">项目计划安排</a></li>
        <li>|</li>
<li><a href="/xiangmujianshe/xiangmuzerenfengong" target="_blank">项目责任分工</a></li>
        <li>|</li>
<li><a href="/xiangmujianshe/xiangmujianshejindu" target="_blank">项目建设进度</a></li>
        <li>|</li>
        </ul>
    </div>
    

    
    
    <!--主导航栏结束-->