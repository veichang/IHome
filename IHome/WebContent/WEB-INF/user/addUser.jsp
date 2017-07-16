<%@page pageEncoding="utf-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
	<title>人员列表</title>
</head>
<body>
	<form action="submitUser.do" method="post">
			<input hidden="true" name="id" value="${user.id }"/>
		<table>
			<c:choose>
			<c:when test="${viewFlage == 1 }">
				<tr>
					<td>用户名：</td><td><input name="name" value="${user.name }" disabled="disabled"/></td>
				</tr>
				<tr>
					<td>微信：</td><td><input name="weixin" value="${user.weixin }" disabled="disabled"/></td>
				</tr>
				<tr>
					<td>手机号:</td><td><input name="phone" value="${user.phone }" disabled="disabled"/></td>
				</tr>
				<tr>
					<td>工作:</td><td><input name="job" value="${user.job }" disabled="disabled"/></td>
				</tr>
				<tr>
					<td>地址:</td><td><input name="address" value="${user.address }" disabled="disabled"/></td>
				</tr>
				<tr>
					<td>用户类型:</td>
					<td><input name="type" value="${user.type }" disabled="disabled"/></td>
				</tr>
			</c:when>
			<c:otherwise>
				<tr>
					<td>用户名：</td><td><input name="name" value="${user.name }"/></td>
				</tr>
				<tr>
					<td>密码：</td><td><input name="passport" value=""/></td>
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
			</c:otherwise>
			</c:choose>
		</table>
		<c:choose>
			<c:when test="${viewFlage == 1 }">
				<button type="button" onclick="location.href='updateUser.do'">修改</button>
			</c:when>
			<c:otherwise>
				<button type="submit">提交</button>
				<button type="reset">重置</button>
			</c:otherwise>
		</c:choose>

	</form>
</body>
</html>