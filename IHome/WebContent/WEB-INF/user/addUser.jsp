<%@page pageEncoding="utf-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
	<title>人员列表</title>
</head>
<body>
	<form action="submitUser.do" method="post">
		<table>
			<tr>
			<td>姓名：</td><td><input name="name" value=""/></td>
			</tr>
		<tr>
			<td>微信：</td><td><input name="weixin" value=""/></td>
		</tr>
		<tr>
			<td>手机号:</td><td><input name="phone" value=""/></td>
		</tr>
		<tr>
			<td>工作:</td><td><input name="job" value=""/></td>
		</tr>
		<tr>
			<td>地址:</td><td><input name="address" value=""/></td>
		</tr>
		<tr>
			<td>用户类型:</td><td><select name="type">
			<option>管理员</option>
			<option>普通用户</option>
		</select></td>
		</tr>
		</table>
		<button type="submit">提交</button>
		<button type="reset">重置</button>
	</form>
</body>
</html>