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
    <script type="text/javascript">
      function MM_jumpMenu(targ,selObj,restore){ //v3.0
        eval(targ+".location='"+selObj.options[selObj.selectedIndex].value+"'");
        if (restore) selObj.selectedIndex=0;
      }
      function jumpPage(obj){
      	var page = obj.options[obj.selectedIndex].text -1 ;
      	window.location = '<s:url value="/online/working/page/%{workingId}_%{parentId}_' + page + '.html" escapeAmp="false"/>';
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
          <div class="current_position"><p><span><strong>当前位置：</strong><a href="/">首页</a>＞<a href="<s:url value='/online/index.html'/>">在线服务</a>＞<s:property value="parent.name"/></span></p></div>
          <div class="clearfloat"></div>
          <div class="detail_list">
            <div class="detail_son">
              <p><s:property value="parent.name"/></p>
              <ul class="bs_list">
              <s:iterator value="workings" status="st">
               <s:if test="id != null">
                 <s:url value="/online/working/%{id}_%{parent.id}.html" id="aurl" escapeAmp="false"/>
                 <li><a href="<s:property value="aurl"/>"><s:property value="name"/></a></li>
               </s:if>
              </s:iterator>
              </ul>
            </div>
            <div class="clearfloat"></div>
            <div class="bs_process">
              <s:iterator value="matters" id='matter'>
              <s:if test="matter != null">
              <h5><s:property value="name"/></h5>
              <s:if test="organ.name != null">
              <p class="bs_tit"><s:url value="/online/organ/%{organ.id}.html" id="url" escapeAmp="false"/>[办理部门： <a href="<s:property value="url"/>" target="_blank"><s:property value="organ.name"/></a>]</p>
              </s:if>
              <ul>
                <li class="nobg">
                  <s:url value="/online/matter/%{organ.id}_%{id}.html" id="matterUrl" escapeAmp="false"/>
                  <a href="<s:property value="matterUrl"/>" target="_blank">办事指南</a>
                </li>
                <li>
                  <a href="http://218.87.91.208:8008/outportal">网上申报</a>
                </li>
                <s:if test="organ.name != null">
                <li>
                  <s:url value="/online/advisor/%{organ.id}_%{id}.html" id="advisoryUrl" escapeAmp="false"/>
                  <a href="<s:property value="advisoryUrl"/>" target="_blank">网上咨询</a>
                </li>
                <li>
                  <s:url value="/online/advisorSearch/%{organ.id}_%{id}.html" id="advisorySearchUrl" escapeAmp="false"/>
                  <a href="<s:property value="advisorySearchUrl"/>"  target="_blank">在线查询</a>
                </li>
                </s:if>
                <s:if test="!matter.matterAnnexs.isEmpty()">
                <li>
                  <s:url value="/online/matterannex/%{organ.id}_%{id}.html" id="annexUrl" escapeAmp="false"/>
                  <a href="<s:property value="annexUrl"/>"  target="_blank">表格下载</a>
                </li>
                </s:if>
              </ul>
              <div class="clearfloat"></div>
              </s:if>
              </s:iterator>
            </div>
            <div class="clearfloat"></div>
            <p class="page">
              <table width="100%"  border="0" cellspacing="0" cellpadding="0">
                <tr>
                  <td height="30" bgcolor="#F2F2F2">
                    <div align="center" class="hui">共<s:property value="page.pageCount"/>页&nbsp;当前为第<s:property value="page.page"/>页&nbsp;
                    <s:if test="page.pagePrev == -1">上一页</s:if>
                    <s:else>
                    <s:url value="/online/working/page/%{workingId}_%{parentId}_%{page.pagePrev-1}.html" id="pageUrl" escapeAmp="false"/>
                    <a href="<s:property value="pageUrl"/>">上一页</a>
                    </s:else>
                    <s:iterator value="page.pageList">
                    <s:if test = "page.page == top">
                    <strong><s:property value="top"/></strong>
                    </s:if>
                    <s:else>
                    <s:url value="/online/working/page/%{workingId}_%{parentId}_%{top-1}.html" id="pageUrl" escapeAmp="false"/>
                    <a href="<s:property value="pageUrl"/>"><s:property value="top"/></a>
                    </s:else>&nbsp;
                    </s:iterator>
                    <s:if test="page.pageNext == -1">下一页</s:if>
                    <s:else>
                    <s:url value="/online/working/page/%{workingId}_%{parentId}_%{page.pageNext-1}.html" id="pageUrl" escapeAmp="false"/>
                    <a href="<s:property value="pageUrl"/>">下一页</a>
                    </s:else>&nbsp;转到
                    <select name="select" class="hui" onchange="jumpPage(this)">
                    <s:iterator value="page.pageListAll">
                    <s:if test = "page.page == top">
                      <option  selected="selected"><s:property value="top"/></option>
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
            </p>
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
