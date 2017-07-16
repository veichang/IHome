<%@page pageEncoding="utf-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
	<title>人员列表</title>
</head>
<body>
	<form action="submitUpdate.do" method="post">
			<input hidden="true" name="id" value="${user.id }"/>
		<table>
			<tr>
				<td>用户名：</td><td><input name="name" value="${user.name }"/></td>
			</tr>
			<tr>
				<td>微信：</td><td><input name="weixin" value="${user.weixin }"/></td>
			</tr>
			<tr>
				<td>手机号:</td><td><input name="phone" value="${user.phone }"/></td>
			</tr>
			<tr>
				<td>工作:</td><td><input name="job" value="${user.job }"/></td>
			</tr>
			<tr>
				<td>地址:</td><td><input name="address" value="${user.address }"/></td>
			</tr>
			<tr>
				<td>用户类型:</td>
				<td>
					<select name="type">
					<option>管理员</option>
					<option>普通用户</option>
					</select>
				</td>
			</tr>
		</table>
		<button type="submit">提交</button>
		<button type="reset">重置</button>
	</form>
</body>
</html>