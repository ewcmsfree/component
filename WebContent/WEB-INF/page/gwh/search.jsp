<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags" %>
<html>
    <head>
        <title>中国瑞昌网为您服务！</title>
        <script type="text/javascript" src="<s:url value="/source/js/jquery-1.4.2.min.js"/>"></script> 
        <style type="text/css">
            <!--
            body {
                margin-top: 0px;
                background: url(/images/xy2009_20.jpg) center top repeat-x;
            }
            -->
        </style>
        <link href="<s:url value="/css/ruichang.css"/>" rel="stylesheet" type="text/css" />
        <style type="text/css">
            <!--
            .style9 {color: #CC0000}
            .style13 {font-size: 9pt}
            .style15 {color: #FFFFFF}
            .style21 {color: #FFFFFF; font-family: Arial, Helvetica, sans-serif; }
            .style34 {font-family: Arial, Helvetica, sans-serif}
            .style40 {color: #336600}
            .style41 {color: #FF0000}
            -->
        </style>
        <script src="<s:url value='/Scripts/swfobject_modified.js'/>" type="text/javascript"></script>
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
	<s:form action="searchresult.do" namespace="/interaction">
	<hr>
	<br>
		<table>

			<tr>
				<td>检索时间:</td>
				<td>从<s:textfield name="beginDate" size="20"/>至<s:textfield name="endDate" size="20"/></td>
			</tr>
			<tr>
				<td>检索方式:</td>
				<td>
					<select name="searchRange">
						<option value=1>文件标题</option>
						<option value=2>文件内容</option>
						<option value=3>文号</option>
					</select>
				</td>
			</tr>
			<tr>
				<td>检索范围:</td>
				<td>
					<s:select list="gwhChannelList" listValue="channelName" listKey="id" name="searchChannle"></s:select>
				</td>
			</tr>
			<tr>
				<td>查找关键字:</td>
				<td><s:textfield name="searchKey" size="50"/></td>
			</tr>
		</table>
		<br>
		<hr>
		<center><input type="submit" value="提  交 ">    <input type="reset" value="重  置 "></center>
	</s:form>
	</div>
	           <br><br><br><br><br><br> <br>
            <s:include value="../footer.jsp"/>
	</div>
</body>
</html>