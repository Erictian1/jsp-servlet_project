<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-eqtrv="Content-Type" content="text/html; charset=UTF-8">
<script src="static/jquery-3.2.1.min.js"
	type="text/javascript"></script>
<!--自定义的jquery-->
<script type="text/javascript">
	$(document).ready(function() {
		$("#btn0").click(function(){
		   $(location).attr('href','ShowMessageServlet')
		});
		$("#btn1").click(function() {
			$(location).attr('href', 'PublishReplyServlet');
		});
		$("#btn2").click(function() {
			$(location).attr('href', 'show.jsp');
		});
		$("#btn3").click(function() {
			$(location).attr('href', 'FindAllServlet' +
					'' +
					'');
		});
	});
</script>
<!-- 最新版本的 Bootstrap 核心 CSS 文件 -->
<link rel="stylesheet"
	href="static/bootstrap.min.css"
	integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u"
	crossorigin="anonymous">
<!-- 最新的 Bootstrap 核心 JavaScript 文件 -->
<script
	src="static/bootstrap.min.js"
	integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa"
	crossorigin="anonymous"></script>
<style type="text/css">
.table {
	margin: 0 auto;
	width: 720px;
	border: 1px solid;
	text-align: left;
	padding-left: 10px;
}

#buttons {
	margin-left:660px;
}
</style>
<title>Show</title>
</head>
<body>
	<div id="show">
		<c:choose>
			<c:when test="${empty sessionScope.employee}">没进行身份识别，请进行身份识别</c:when>
			<c:otherwise>
				<h1 align="center">WELCOME YOU ${employee.employeeName }</h1>
				<table class="table">
					<tr>
						<th>Id号:${employee.employeeId }</th>
					</tr>
					<!--el表达式默认调取了getEmployeeId方法  -->
					<tr>
						<th>姓名:${employee.employeeName }</th>
					</tr>
					<tr>
						<th>性别:${employee.employeeSex }</th>
					</tr>
					<tr>
						<th>生日:${employee.employeeBirth }</th>
					</tr>
					<tr>
						<th>年龄:${employee.employeePhone }</th>
					</tr>
					<tr>
						<th>地址:${employee.employeePlace }</th>
					</tr>
					<tr>
						<th>注册时间:${employee.joinTime }</th>
					</tr>
				</table>
			</c:otherwise>
		</c:choose>

	</div>
	<br/>
	<div id="buttons">
		<button id="btn3" class="btn btn-warning">查询所有用户信息</button>&nbsp;&nbsp;
	    <button id="btn0" class="btn btn-warning">修改用户信息</button>&nbsp;&nbsp;
		<a class="btn btn-warning" href="PublishReplyServlet?employeeId=${employee.employeeId }" id="btn1" onblur="deleteUser()">删除用户</a>
		<button id="btn2" class="btn btn-primary">返回</button>
	</div>
</body>
</html>