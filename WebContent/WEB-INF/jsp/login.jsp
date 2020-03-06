<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="spring"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<!-- Bootstrap CSS -->
<link rel="stylesheet" href="resource/css/bootstrap.min.css">
<link rel="stylesheet" type="resource/text/css"
	href="fontawesome/css/fontawesome-all.min.css">
<link rel="stylesheet" type="text/css" href="resource/css/custom.css">
<title>Insert title here</title>
<style>
</style>
</head>
<body>
	<div class="row p-5">
		<div class="col-md-3">
			<spring:form name="loginForm" method="post">
				<div class="form-group">
					<label for="exampleInputEmail1">username</label> <input
						type="text" class="form-control" name="userName"
						aria-describedby="emailHelp" placeholder="Enter username">
				</div>
				<div class="form-group">
					<label for="exampleInputPassword1">password</label> <input
						type="password" class="form-control" name="password"
						placeholder="Password">
				</div>
				<div style="p{color:red}"><p>${msg }</p></div>
				<button type="submit" class="btn btn-primary">login</button>
				<a href="register.html">no account? click here</a>
			</spring:form>
		</div>
	</div>

</body>
</html>