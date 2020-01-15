<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" type="text/css" href="//www.lgstatic.com/www/static/pkg/layout_ca829b5.css" />
<link rel="shortcut icon" href="../image/my.ico">
</head>
<style>
	#lg_tbar{height: 40px;background: #32373e;}
	#lg_tbar .inner {padding-top: 6px;}
	font{color:aqua;}
</style>
<body>
	<div id="lg_tbar">
		<div class="inner">
			<div class="lg_tbar_l">
				<a rel="nofollow" href="./index.jsp" target="_blank">Tadm web 网上招聘系统</a> <a rel="nofollow"
					href="user_login.jsp" class="lg_os">用户入口</a>
			</div>
			<ul class="lg_tbar_r">
				<li><a href="">欢迎&nbsp&nbsp<font>${sessionScope.companyobj.username }</font></a></li>
				<li><a href="edit_info.jsp" class="bl" rel="nofollow">账号设置</a></li>
				<s:url action="logout" var="logout"></s:url>
				<li><a href="${logout}" class="bl" id="deliveryLink"
					rel="nofollow">退出</a> <em class="noticeDot dn"
					id="noticeDot_delivery"></em></li>
			</ul>
		</div>
	</div>
	<div id="lg_tnav">
		<div class="inner">
			<div class="lg_tnav_l">
				<a href="./index.jsp">
					<ul class="lg_tnav_wrap"><li>
					<a href="./index.jsp">
						<h3>Tadm web 招聘网</h3>
					</a></li></ul>
				</a>
			</div>
			<ul class="lg_tnav_wrap">
				<li><a href="./index.jsp">首页</a></li>
				<s:url action="getJobType" var="type"></s:url>
				<li><a href="${type}">发布职位</a></li>
				<li><s:a rel="nofollow" href="ListCompanyBio" target="_blank">浏览简历</s:a></li>
				<li><s:a rel="nofollow" href="managecompanyJob">职位管理</s:a></li>
			</ul>
		</div>
	</div>
</body>
</html>