<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>用户登录</title>
<link rel="shortcut icon" href="./image/my.ico">
</head>
<body>
	<s:include value="./parent/background.jsp"></s:include>
	<script type="text/javascript" src="../static/js/system.js"></script>
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/css/bootstrap.min.css"/>
</head>
<style>
.input{
	margin-top:10px;
	height:30px;
}
</style>
<body>
	<section class="content_box cleafix">
	<div class="left_area fl">
		<label class="form_head">用户登录</label>
		<s:fielderror></s:fielderror>
		<div>
			<s:form class="active form-horizontal" action="user_login" method="post">
				<div class="form-group">
					<div class="col-sm-14">
					<input type="text" class="form-control input input_white" name="email_name"
						placeholder="Please input your username">
					</div>
				</div>
				<div class="form-group">
					<div class="col-sm-14">
					<input type="password" class="form-control input input_white" name="password"
						placeholder="please input your pwd">
					</div>
				</div>
				<s:actionmessage/>
				<div class="input_item btn_group clearfix">
					<input type="submit"
						class="btn btn_green btn_active btn_block btn_lg btn btn-info" value="登&nbsp;录">
				</div>
			</s:form>
		</div>
	</div>
	<div class="divider fl"></div>
	<div class="right_area fl">
		<h5>还没有帐号:</h5>
		<a href="registration.jsp" class="register_now">立即注册>></a>
	</div>
	</section>
	<%@include file="footer.jsp"%>
</body>
</html>
