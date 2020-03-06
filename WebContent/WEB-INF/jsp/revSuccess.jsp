<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<p>Your review is successfully added !</p>
	<form action="movie.html" method="post">
		<input type="hidden" name="movieId" value="${mId}"/>
		<input type="hidden" name="userName" value="${msg}"/>
		<input type="submit" value="aight!"/>
	</form>
</body>
</html>