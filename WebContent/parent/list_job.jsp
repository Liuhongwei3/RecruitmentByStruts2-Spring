<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
<link rel="stylesheet" href="./layui/css/layui.css" type="text/css" media="all" />
<script src="./layui/layui.js" charset="utf-8"></script>
</head>
<style>
h2{color:pink;font-weight:700;}
div{text-align:center;}
.listinfo{margin-top:10px;}
.layui-card-body .layui-table{margin: 30px 0;}
</style>
<body>
	<div class="layui-col-md12">
		<div class="layui-card listinfo">
			<div class="layui-card-body">
				<h2>企业职位内容</h2>
				<table class="layui-table" lay-even="" lay-skin="row">
					<colgroup>
						<col width="80">
						<col width="150">
						<col width="80">
						<col width="80">
						<col width="80">
						<col width="80">
						<col width="200">
						<col width="80">
						<col>
					</colgroup>
					<thead>
						<tr>
							<th>职位</th>
							<th>公司</th>
							<th>类型</th>
							<th>经验</th>
							<th>薪资</th>
							<th>地点</th>
							<th>简介</th>
							<th>收藏 投递</th>
						</tr>
					</thead>
					<tbody>
						<s:iterator value="mapwork" var="map">
							<tr>
								<s:iterator value="value" var="info">
									<td><s:property value="#info.work" /></td>
									<td><s:property value="#info.company" /></td>
									<td><s:property value="#info.type" /></td>
									<td>
								<s:property value="#info.experience" />
									</td>
									<td>
									<s:property value="#info.low" />
									-
									<s:property value="#info.high" />
									</td>
									<td>
									<s:property value="#info.location" />
									</td>
									<td>
									<s:property value="#info.profile" />
									</td>
									<td> 
									<s:url action="addcollect" var="col">
									<s:param name="jobid" value="#info.id"></s:param>
									</s:url>
									<a href="${col}">收藏</a>
									<s:url action="getjobinfo" var="delivery">
									<s:param name="work.company" value="#info.company"></s:param>
									</s:url>
									<a href="${delivery}">投递简历</a>
									</td>
									</s:iterator>
							</tr>
						</s:iterator>
					</tbody>
				</table>
			</div>
		</div>
	</div>
</body>
</html>