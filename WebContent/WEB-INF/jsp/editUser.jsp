<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="spring"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Edit user</title>
</head>
<body>
	<spring:form name="editUserForm" method="get">
		<table>
			<tr>
				<td>id</td>
				<td>username</td>
				<td>password</td>
				<td>email</td>
			</tr>
			<tr>
				<td><input type="text" name="userId" value="${user.userId}" readonly></td>
				<td><input type="text" name="userName" value="${user.userName}"></td>
				<td><input type="text" name="password" value="${user.password}"></td>
				<td><input type="text" name="userEmail" value="${user.userEmail}"></td>
			</tr>
			<tr>
				<td><input type="submit" value="update" /></td>
			</tr>
		</table>
	</spring:form>
</body>
</html>