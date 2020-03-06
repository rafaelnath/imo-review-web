<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<table>
		<tr>
			<td>user id</td>
			<td>user name</td>
			<td>user password</td>
			<td>user email</td>
			<td>action</td>
		</tr>
		<c:forEach var="user" items="${user}">
			<tr>
				<td>${user.userId}</td>
				<td>${user.userName}</td>
				<td>${user.password}</td>
				<td>${user.userEmail}</td>
				<td>
					<form action="editUser.html" method="post">
						<input type="hidden" name="userId" value="${user.userId}"/>
						<input type="submit" value="edit"/>
					</form>
					<form method="post">
						<input type="hidden" name="userId" value="${user.userId}"/>
						<input type="submit" value="delete"/>
					</form>
				</td>
			</tr>
		</c:forEach>
	</table>
	<a href="admin.html">back</a>
</body>
</html>