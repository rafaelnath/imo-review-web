<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="spring"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>

<style>
	.left{float:left}
	.right{width:700px; margin-left:400px; margin-top:50px;}
	.movieReview{padding-top:180px}
	input[type="submit"]{margin-left:100px; padding:10px; width:700px;}
</style>
<meta charset="UTF-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<link rel="stylesheet" href="css/bootstrap.min.css">
<link rel="stylesheet" type="text/css"
	href="fontawesome/css/fontawesome-all.min.css">
<link rel="stylesheet" type="text/css" href="css/custom.css">
<title>Insert title here</title>
</head>
<body>
	<div class="movieInfo">
		<div class="left">
			<img src="" />
		</div>
		<div class="video">
			<div class="embed-responsive embed-responsive-16by9 mt-5">
				<iframe width="840" height="473" class="embed-responsive-item"
					src="${movie_info.movieTrailer}" allowfullscreen></iframe>
			</div>
			<!-- youtube src -->
		</div>
		<div class="left">
			<img width="300" src="${movie_info.moviePoster}" />
		</div>
		<div class="right">
			<h1>${movie_info.movieTitle}</h1>
			<h3>${movie_info.movieGenre}</h3>
			<h3>${movie_info.movieDuration} minutes</h3>
			<p>${movie_info.movieSynopsis}</p>
		</div>
	</div>
	<form action="review.html" method="post">
		<input type="hidden" name="movieId" value="${movie_info.movieId}" />
		<input type="hidden" name="reviewUserName" value="${userName}" />
		<!-- pass username , bikin field baru di bean MOVIE-->
		<input type="submit" value="add review" />
	</form>

	<div class="movieReview">
		<h1>Reviews</h1>
		<table>
			<c:forEach var="rev" items="${reviews}">
				<tr>
					<td style="background:blue; color:white">${rev.reviewUserName}</td>
				</tr>
				<tr>
					<td>${rev.reviewRating}</td>
				</tr>
				<tr>
					<td>${rev.reviewTitle}</td>
				</tr>
				<tr>
					<td>${rev.reviewComment}</td>
				</tr>
			</c:forEach>
		</table>
	</div>

	<script src="js/jquery-3.2.1.slim.min.js"></script>
	<script src="js/popper.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
</body>
</html>