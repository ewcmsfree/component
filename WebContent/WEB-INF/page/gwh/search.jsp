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
        <script type="text/JavaScript">
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
	<s:form action="searchresult" namespace="/interaction">
	<hr/>
	<br/>
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
					<s:select list="gwhChannelList" listValue="channelName" listKey="id" name="searchChannel"></s:select>
				</td>
			</tr>
			<tr>
				<td>查找关键字:</td>
				<td><s:textfield name="searchKey" size="50"/></td>
			</tr>
		</table>
		<br/>
		<hr/>
		<center><input type="submit" value="提  交 "/>    <input type="reset" value="重  置 "/></center>
	</s:form>
	</div>
	           <br/><br/><br/><br/><br/><br/> <br/>
            <s:include value="../footer.jsp"/>
	</div>
</body>
</html>