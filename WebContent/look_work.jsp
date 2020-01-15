<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>浏览简历</title>

<!-- layui -->
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1">
<link rel="stylesheet" href="	./layui/css/layui.css" type="text/css"
	media="all" />
<script src="./layui/layui.js" charset="utf-8"></script>	
</head>
<body>
<s:include value="./parent/company.jsp"></s:include>
<center><h2>浏览简历</h2></center>
<div class="layui-col-md12">
      <div class="layui-col-md12">
		<div class="layui-card">
			<div class="layui-card-body">
				<center><h2>企业职位内容</h2></center>
				<table class="layui-table" lay-even="" lay-skin="row">
					<colgroup>
						<col width="90">
						<col width="80">
						<col width="80">
						<col width="80">
						<col width="80">
						<col width="80">
						<col width="200">
						<col width="20">
						<col>
					</colgroup>
					<thead>
						<tr>
							<th>申请的职位</th>
							<th>地点	</th>
							<th>类型</th>
							<th>薪资</th>
							<th>到职时间</th>
							<th>个人简历</th>
						</tr>
					</thead>
					<tbody>
						<s:iterator value="mapwork" var="map">
							<tr>
								<s:iterator value="value" var="info">
								
									<td><s:property value="#info.job" /></td>
									<td><s:property value="#info.location" /></td>
									<td><s:property value="#info.type" /></td>
									<td><s:property value="#info.low" /> - <s:property
											value="#info.high" /></td>
									<td><s:property value="#info.worktime" /></td>
									<td>
									<s:url action="onebio" var="lookbio">
									<s:param name="bio.id" value="#info.id"></s:param>
									</s:url>
				
									<a href="${lookbio }">浏览</a>
									</td>
								</s:iterator>
							</tr>
							<tr>
							</tr>
						</s:iterator>
					</tbody>
					
				</table>
			</div>
		</div>
	</div>
    
</body>
</html>