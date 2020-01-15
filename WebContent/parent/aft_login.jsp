﻿<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" type="text/css"
	href="//www.lgstatic.com/www/static/pkg/layout_ca829b5.css" />
</head>
<style>
	#lg_tbar{height: 40px;background: #32373e;}
	#lg_tbar .inner { padding-top: 6px;}
</style>
<body>
	<div id="lg_tbar">
		<div class="inner">
			<div class="lg_tbar_l">
				<a rel="nofollow" href="https://www.lagou.com/app/download.html"
					target="_blank">Tadm web 网上招聘系统</a> 
				<a rel="nofollow" href="company_login.jsp" class="lg_os">
				企业入口</a>
			</div>
			<ul class="lg_tbar_r">
				<li class="msg_dropdown">
					<a class="msg_group"href="message.jsp" rel="nofollow"> 消息 
					<em class="msg_amount hide" id="headMsgAmount"></em>
					</a>
				</li>
				<li><a href="resume.jsp" class="bl" rel="nofollow">我的简历</a></li>
				<li><a href="delivery.jsp" class="bl" id="deliveryLink"
					rel="nofollow">投递箱</a> <em class="noticeDot dn"
					id="noticeDot_delivery"></em></li>
				<li><a href="collection.jsp" class="bl" rel="nofollow">收藏夹</a></li>
				<li class="user_dropdown"><span class="unick bl">更多</span> <em
					class="noticeDot dn" id="noticeDot_name"></em> <i></i>
					<ul>
						<li><a href="https://account.lagou.com/account/cuser/userInfo.html"
							rel="nofollow">帐号设置</a>
						</li>
						<li><a href="https://easy.lagou.com/dashboard/index.htm?from=c_index"
							rel="nofollow">去企业版</a>
						</li>
						<li><a href="/frontLogout.do" rel="nofollow">退出</a></li>
					</ul>
				</li>
			</ul>
		</div>
	</div>
</body>
</html>