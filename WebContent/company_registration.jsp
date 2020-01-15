<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>企业注册页面</title>
<link rel="shortcut icon" href="./image/my.ico">
</head>
<s:include value="./parent/background.jsp"></s:include>
<script type="text/javascript" src="../static/js/system.js"></script>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/css/bootstrap.min.css"/>
<link rel="stylesheet" type="text/css"
	href="//www.lgstatic.com/passport/static/pkg/pc/page/login/main.html_aio_dda183c.css" />
<style>
.input{
	margin-top:10px;
	height:30px;
}

</style>
<body>

	<section class="content_box cleafix">
	<div class="left_area fl">
		<div class="form_head">公司注册</div>
		<s:fielderror></s:fielderror>
		<div>
			<s:form class="active form-horizontal" action="company_registration" method="post">
				<div class="form-group">
					<div class="col-sm-14">
					<input type="text" class="input input_white"name="company.company_name" 
					placeholder="Please input full company name">
					</div>
				</div>
				<div class="input_item clearfix form-group">
					<div class="col-sm-14">
					<input type="text" class="input input_white"
						name="company.username" placeholder="Please input manager name">
					</div>
				</div>
				<div class="input_item clearfix form-group">
					<div class="col-sm-14">
					<input type="text" class="input input_white" name="company.email"
						placeholder="Please input your email">
					</div>
				</div>
				<div class="input_item clearfix form-group">
					<div class="col-sm-14">
					<input type="password" class="input input_white"
						name="company.password" placeholder="Please input your pwd">
					</div>
				</div>
				<div class="input_item clearfix form-group">
					<div class="col-sm-14">
					<input type="password" class="input input_white" name="repass"
						placeholder="Please input pwd again to check">
					</div>
				</div>

				<div class="input_item btn_group clearfix btn_group">
					<input type="submit" class="btn btn_green btn_active btn_block 
					btn_lg btn btn-info" value="注&nbsp;册">
				</div>

			</s:form>
		</div>
	</div>
	<div class="divider fl"></div>
	<div class="right_area fl">
		<h5>已有账号</h5>
		<a href="company_login.jsp" class="register_now">立即登录</a>
	</div>
	</section>
	<%@include file="footer.jsp"%>
</body>
</html>