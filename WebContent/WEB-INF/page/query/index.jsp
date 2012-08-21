<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
  <head>
  	<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>中国瑞昌网为您服务！</title>
    <script type="text/javascript" src="<s:url value="/source/js/jquery-1.4.2.min.js"/>"></script>
    <script type="text/javascript">
       function jumpPage(obj){
         var page = obj.options[obj.selectedIndex].text -1 ;
         window.location =  '<s:url namespace="/" action="advQuery"/>?isContent=<s:property value="isContent"/>&title=<s:property value="title"/>&beginDate=<s:property value="beginDate"/>&endDate=<s:property value="endDate"/>&pageNumber=' + page;
       }
    </script>
  </head>
  <body>
	<div align="center">
		<table width="1000" border="0" cellspacing="0" cellpadding="0">
			<tr>
				<td width="750" valign="top">
					<table width="100%" border="0" cellspacing="0" cellpadding="0">
						<s:form namespace="/" action="advQuery" method="post">
						<tr>
							<td>
								<select name="isContent" id="isContent">
									<option value="false">标题</option>
									<option value="true">正文和标题</option>
								</select>
								<s:textfield name="title" size="35"/>
							</td>
							<td>发布日期<s:textfield name="beginDate" size="20"/> 至 <s:textfield name="endDate" size="20"/></td>
							<td><img src="images/search.gif" width="51" height="25" onclick="document.forms[0].submit();"/></td>
						</tr>
						</s:form>
						<tr>
							<td colspan="4" class="zyd_line"><div align="center">
									<br/>
									<table width="95%" border="0" cellspacing="0" cellpadding="0">
										<tr>
											<td width="70%"height="40"><div align="left" class="zongcolor"><strong>标题</strong></div></td>
											<td width="20%"><div align="left" class="zongcolor"><strong>所属频道</strong></div></td>
											<td width="10%"><div align="left" class="zongcolor"><strong>发布日期</strong></div></td>
										</tr>
									</table>
									<table width="95%" border="0" cellspacing="0" cellpadding="0">
										<tr>
											<td height="1" bgcolor="#F1D68D"></td>
										</tr>
									</table>
									<table width="95%" border="0" cellpadding="0" cellspacing="0">
										<s:iterator value="articles">
											<tr>
											<td width="70%"><a href="<s:property value="url"/>" target="_blank"><span class="news"><s:property value="title"/></span></a></td>
											<td width="20%"><s:property value="channelName"/></td>
											<td width="10%"><s:property value="published"/></td>
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
									<br/>
								</div>
							</td>
						</tr>
					</table>
				</td>
			</tr>
		</table>
	</div>
</body>
</html>
