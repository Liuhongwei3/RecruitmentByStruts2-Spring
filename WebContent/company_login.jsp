<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>登录页面</title>
<link rel="shortcut icon" href="./image/my.ico">
</head>
<style>
.input{
	margin-top:10px;
	height:30px;
}
</style>
<body>
	<s:include value="./parent/background.jsp"></s:include>
	<script type="text/javascript" src="../static/js/system.js"></script>
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/css/bootstrap.min.css"/>
	<link rel="stylesheet" type="text/css"
		href="//www.lgstatic.com/passport/static/pkg/pc/page/login/main.html_aio_dda183c.css" />
</head>
<body>
	<section class="content_box cleafix">
	<div class="left_area fl">
		<div class="form_head">企业登录</div>
		<s:fielderror></s:fielderror>
		<div>
			<s:form class="active form-horizontal" action="company_login" method="post">
				<div class="form-group">
					<div class="col-sm-14">
					<input type="text" class="form-control input input_white" name="email_name"
						placeholder="Please input your username/email">
					</div>
				</div>
				<div class="input_item clearfix form-group">
					<div class="col-sm-14">
					<input type="password" class="form-control input input_white" name="password"
						placeholder="Please input your pwd">
					</div>
				</div>
				<s:actionmessage/>
				<div class="input_item btn_group clearfix">
					<input type="submit" class="btn btn_green btn_active btn_block btn_lg 
					btn btn-info" value="登&nbsp;录">
				</div>
			</s:form>
		</div>
	</div>
	<div class="divider fl"></div>
	<div class="right_area fl">
		<h5>还没有帐号:</h5>
		<a href="registration.jsp" class="register_now">立即注册</a>
	</div>
	</section>
	<%@include file="footer.jsp"%>
</body>
</html>
