<%@page pageEncoding="utf-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
	<title>人员列表</title>
</head>
<body>
账户管理：
	<form action= "addUser.do">
		<!--  <button type="submit" onclick="window.location.href='addUser.jsp'">添加账户</button>-->
		<button type="submit">添加账户</button>
	</form>
	<table width="60%" border="1" cellpadding="0px" cellspcing="0px">
		<tr>
			<th>用户id</th>
			<th>用户名</th>
			<th>年龄</th>
			<th>工作</th>
			<th>QQ号</th>
			<th>微信</th>
			<th>手机</th>
			<th>类型</th>
			<th>住址</th>
		</tr>
		<c:forEach items="${users }" var="user">
			<tr>
				<td>${user.id }</td>
				<td>${user.name }</td>
				<td>${user.age }</td>
				<td>${user.job }</td>
				<td>${user.qq }</td>
				<td>${user.weixin }</td>
				<td>${user.phone }</td>
				<td>${user.type }</td>
				<td>${user.address }</td>
			</tr>
		</c:forEach>
	</table>
</body>
</html>