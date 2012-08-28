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
    <script src="../source/js/jquery-1.4.2.min.js" type="text/javascript"></script>
        <script lang="JavaScript" type="text/JavaScript">
                $(function(){
                   
                });
                function jumpPage(obj){
                    var page = obj.options[obj.selectedIndex].text -1 ;
                    window.location = ' <s:url action="index"/>?type=<s:property value="type"/>&pageNumber=' + page ;
                }
                function findAll(){
                    window.location = '<s:url action="index"/>?type=0' ;
                }
                function findReplay(){
                    window.location = '<s:url action="index"/>?type=1' ;
                }
                function findNoReplay(){
                    window.location = '<s:url action="index"/>?type=2' ;
                }
        </script>
    </head>
    <body>
        <s:include value="../top.jsp"/>
    	<div id="whole_bg">
  			<div id="content">
            <s:include value="../header.jsp"/>
            <a href="<s:url action="gwhsearch"/>"><span class="news">＞&nbsp;&nbsp;检索文件</span></a>
            <hr/>
									<table width="95%" border="0" cellpadding="0" cellspacing="0">
										<s:iterator value="articleList">
											<tr>
											<td width="70%"><a href="<s:property value="url"/>" target="_blank"><span class="news"><s:property value="title"/></span></a></td>
											</tr>
										</s:iterator>
									</table>
									<br/>
									<table width="95%" border="0" cellspacing="0" cellpadding="0">
										<tr>
											<td height="30" bgcolor="#F2F2F2" class="li_line"><div
													align="center" class="hui">
													共
													<s:property value="page.pageCount" />
													页&nbsp;当前为第
													<s:property value="page.page" />
													页&nbsp;
													<s:if test="page.pagePrev == -1">
                                                            上一页
                                                        </s:if>
													<s:else>
														<s:url action="advquery" id="pageUrl" escapeAmp="false">
															<s:param name="isContent" value="%{isContent}" />
															<s:param name="title" value="%{title}" />
															<s:param name="beginDate" value="%{beginDate}" />
															<s:param name="endDate" value="%{endDate}" />
															<s:param name="pageNumber" value="%{page.pagePrev-1}" />
														</s:url>
														<a href="<s:property value="pageUrl"/>">上一页</a>
													</s:else>
													<s:iterator value="page.pageList">
														<s:if test="page.page == top">
															<strong><s:property value="top" /></strong>
														</s:if>
														<s:else>
															<s:url action="advquery" id="pageUrl" escapeAmp="false">
																<s:param name="isContent" value="%{isContent}" />
																<s:param name="title" value="%{title}" />
																<s:param name="beginDate" value="%{beginDate}" />
																<s:param name="endDate" value="%{endDate}" />
																<s:param name="pageNumber" value="%{top-1}"/>
															</s:url>
															<a href="<s:property value="pageUrl"/>"><s:property
																	value="top" /></a>
														</s:else>&nbsp;
                                                        </s:iterator>
													<s:if test="page.pageNext == -1">
                                                            下一页
                                                        </s:if>
													<s:else>
														<s:url action="advquery" id="pageUrl" escapeAmp="false">
															<s:param name="isContent" value="%{isContent}" />
															<s:param name="title" value="%{title}" />
															<s:param name="beginDate" value="%{beginDate}" />
															<s:param name="endDate" value="%{endDate}" />
															<s:param name="pageNumber" value="%{page.pageNext-1}"/>
														</s:url>
														<a href="<s:property value="pageUrl"/>">下一页</a>
													</s:else>
													&nbsp;转到 <select name="select" class="hui"
														onchange="jumpPage(this)">
														<s:iterator value="page.pageListAll">
															<s:if test="page.page == top">
																<option selected>
																	<s:property value="top" />
																</option>
															</s:if>
															<s:else>
																<option>
																	<s:property value="top" />
																</option>
															</s:else>
														</s:iterator>
													</select>页
												</div>
											</td>
										</tr>
									</table>
	
	
		</div>
	           <br/>
            <s:include value="../footer.jsp"/>
	</div>
</body>
</html>