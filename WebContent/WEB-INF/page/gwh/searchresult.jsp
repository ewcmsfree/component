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
    <script lang="JavaScript" type="text/JavaScript">
       function jumpPage(obj){
          var page = obj.options[obj.selectedIndex].text -1 ;
          window.location = '<s:url value="/interaction/searchresult/page/%{searchRange}_%{searchChannel}_' + page + '_%{beginDate}_%{endDate}_%{searchKey}.html" escapeAmp="false"/>' ;
       }
    </script>
  </head>
  <body>
    <s:include value="../top.jsp"/>
    <div id="whole_bg">
  	  <div id="content">
  	  <s:hidden id="searchRange" name="searchRange"/>
  	  <s:hidden id="searchChannel" name="searchChannel"/>
  	  <s:hidden id="searchKey" name="searchKey"/>
  	  <s:hidden id="beginDate" name="beginDate"/>
  	  <s:hidden id="endDate" name="endDate"/>
      <s:include value="../header.jsp"/>
      <div class="article_box1">
        <div class="art_text">
		  <h3> 检索文件结果</h3>
          <hr/>
		  <div class="clearfloat"></div>
          <ul class="zw_list1 h_min2 w1">
	        <s:iterator value="articleList">
            <li><a href="<s:property value="url"/>" target="_blank"><s:property value="title"/></a></li>
		    </s:iterator>    
          </ul> 
          <p class="page">
            <table width="100%"  border="0" cellspacing="0" cellpadding="0">
              <tr>
                <td height="30" bgcolor="#F2F2F2">
                  <div align="center">共<s:property value="page.pageCount"/>页&nbsp;当前为第<s:property value="page.page"/>页&nbsp;
                  <s:if test="page.pagePrev == -1">上一页</s:if>
                  <s:else>
                  <s:url id="pageUrl" value="/interaction/searchresult/page/%{searchRange}_%{searchChannel}_%{page.pagePrev-1}_%{beginDate}_%{endDate}_%{searchKey}.html" escapeAmp="false"/>
                  <a href="<s:property value="pageUrl"/>">上一页</a>
                  </s:else>
                  <s:iterator value="page.pageList">
                  <s:if test = "page.page == top"><strong><s:property value="top"/></strong></s:if>
                  <s:else>
                  <s:url id="pageUrl" value="/interaction/searchresult/page/%{searchRange}_%{searchChannel}_%{top-1}_%{beginDate}_%{endDate}_%{searchKey}.html" escapeAmp="false"/>
                  <a href="<s:property value="pageUrl"/>"><s:property value="top"/></a>
                  </s:else>&nbsp;
                  </s:iterator>
                  <s:if test="page.pageNext == -1">下一页</s:if>
                  <s:else>
                  <s:url id="pageUrl" value="/interaction/searchresult/page/%{searchRange}_%{searchChannel}_%{page.pageNext-1}_%{beginDate}_%{endDate}_%{searchKey}.html" escapeAmp="false"/>
                  <a href="<s:property value="pageUrl"/>">下一页</a>
                  </s:else>&nbsp;转到
                  <select name="select" class="hui" onchange="jumppage(this)">
                  <s:iterator value="page.pageListAll">
                  <s:if test = "page.page == top"><option selected="selected"><s:property value="top"/></option></s:if>
                  <s:else><option><s:property value="top"/></option></s:else>
                  </s:iterator>
                  </select>页
                </div>
              </td>
            </tr>
          </table>
        </p>
      </div>
    </div>
  </div>
  <br/>
  </div>
  <s:include value="../footer.jsp"/>
  </body>
</html>