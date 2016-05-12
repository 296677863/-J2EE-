<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
</head>
<body>
<table>
<form action="f_insertTopic" method="post">
<input type="hidden" name="userid" value=${userid }/>
<input type="hidden" name="sectionid" value=${sectionid }/>
<tr><td>发表标题：</td>
<td><input type="text" name="title"></td>
</tr>
<tr><td>发表内容：</td>
<td><textarea  name="content"></textarea></td>
</tr>
<tr><td><input type="submit" value="发表"/></td>
<td><input type="text" name=""></td>
</tr>
</form>
</table>

</body>
</html>