<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<!-- Required meta tags -->
<meta charset="utf-8">
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
	<nav
		class="navbar navbar-expand-lg navbar-light bg-light p-3 sticky-top">
		<div class="container">
			<a class="navbar-brand" href="#"> <h1>IMO Review</h1>
			</a>
			<button class="navbar-toggler" type="button" data-toggle="collapse"
				data-target="#navbarNav" aria-controls="navbarNav"
				aria-expanded="false" aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse" id="navbarNav">
				<ul class="navbar-nav ml-auto">
					<li class="nav-item">Hi, <%= request.getParameter("msg") %>!</li> <!-- pass username -->
					<li class="nav-item"><a class="nav-link mr-3"
						href="login.html">logout</a></li>
				</ul>
			</div>
		</div>
	</nav>
	<div class="content">
		<div class="spotlight">
			<!-- populaar review -->
			<h1>Spotlight</h1>
			<div class="slider">
				<div class="bd-example">
					<div id="carouselExampleCaptions" class="carousel slide"
						data-ride="carousel">
						<ol class="carousel-indicators">
							<li data-target="#carouselExampleCaptions" data-slide-to="0"
								class="active"></li>
							<li data-target="#carouselExampleCaptions" data-slide-to="1"></li>
							<li data-target="#carouselExampleCaptions" data-slide-to="2"></li>
						</ol>
						<div class="carousel-inner">
							<div class="carousel-item active">
								<img src="resource/img/spotlight1.jpg" class="d-block w-100"
									alt="...">
								<div class="carousel-caption d-none d-md-block">
									<h5>Joker (2019)</h5>
									<p>Nulla vitae elit libero, a pharetra augue mollis
										interdum.</p>
								</div>
							</div>
							<div class="carousel-item">
								<img src="resource/img/spotlight2.jpg" class="d-block w-100"
									alt="...">
								<div class="carousel-caption d-none d-md-block">
									<h5>Gundala (2019)</h5>
									<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>
								</div>
							</div>
							<div class="carousel-item">
								<img src="resource/img/spotlight3.jpg" class="d-block w-100"
									alt="...">
								<div class="carousel-caption d-none d-md-block">
									<h5>Hobbs and Shaw (2019)</h5>
									<p>Praesent commodo cursus magna, vel scelerisque nisl
										consectetur.</p>
								</div>
							</div>
						</div>
						<a class="carousel-control-prev" href="#carouselExampleCaptions"
							role="button" data-slide="prev"> <span
							class="carousel-control-prev-icon" aria-hidden="true"></span> <span
							class="sr-only">Previous</span>
						</a> <a class="carousel-control-next" href="#carouselExampleCaptions"
							role="button" data-slide="next"> <span
							class="carousel-control-next-icon" aria-hidden="true"></span> <span
							class="sr-only">Next</span>
						</a>
					</div>
				</div>
			</div>
		</div>


		
			<table>
				<tr>
					<td>id</td>
					<td>movie title</td>
					<td>reviewers</td>
					<td>average rating</td>
				</tr>
				<c:forEach var="mov" items="${movies}">
					<tr>
						<td>${mov.movieId }</td>
						<td>${mov.movieTitle }</td>
						<td>20</td>
						<td>4</td>
						<td>
							<form action="movie.html" method="post">
								<input type="hidden" name="movieId" value="${mov.movieId }" /> 
								<input type="hidden" name="userName" value="<%= request.getParameter("msg") %>"/>
								<input type="submit" value="submit a review" />
							</form>
						</td>
					</tr>
				</c:forEach>
			</table>


		<div class="footer">
			<p>&copy;Short Semester's Project 2019</p>
		</div>
	</div>

	<script src="js/jquery-3.2.1.slim.min.js"></script>
	<script src="js/popper.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
</body>
</html>