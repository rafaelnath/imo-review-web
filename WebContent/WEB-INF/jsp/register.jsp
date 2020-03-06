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
</head>
<body>
	<div class="row">
		<div class="col-md-3">
			<spring:form name="regForm" method="post">
				<div class="form-group">
					<label for="exampleInputUname">username</label> <input
						type="text" class="form-control" name="userName"
						aria-describedby="emailHelp">
				</div>
				<div class="form-group">
					<label for="exampleInputPassword1">password</label> <input
						type="password" class="form-control" name="password">
				</div>
				<div class="form-group">
					<label for="exampleInputPassword1">confirm-password</label> <input
						type="password" class="form-control" name="confirmPassword">
				</div>
				<div class="form-group">
					<label for="exampleInputEmail1">email</label> <input
						type="email" class="form-control" name="userEmail">
				</div>
				<button type="submit" class="btn btn-primary">login</button>
			</spring:form>
		</div>
	</div>

</body>
</html>