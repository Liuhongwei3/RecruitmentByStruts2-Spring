<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
 <%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf">
<title>Tadm web 网上招聘系统</title>
<link rel="shortcut icon" href="./image/my.ico">
</head>
<body>
	<s:action name="indexJob" executeResult="true"></s:action>
</body>
<%@include file="footer.jsp"%>
</html>