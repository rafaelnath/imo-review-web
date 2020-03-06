<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="spring"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<spring:form name="movieForm" method="post">
		<table>
			<tr>
				<td>Movie title: </td>
				<td><input type="text" name="movieTitle"/></td>
			</tr>
			<tr>
				<td>Movie genre: </td>
				<td><input type="text" name="movieGenre"/></td>
			</tr>
			<tr>
				<td>Movie duration: </td>
				<td><input type="text" name="movieDuration"/></td>
			</tr>
			<tr>
				<td>Movie synopsis: </td>
				<td><input type="text" name="movieSynopsis"/></td>
			</tr>
			<tr>
				<td>Movie trailer: </td>
				<td><input type="text" name="movieTrailer" placeholder="utube url"/></td>
			</tr>
			<tr>
				<td>Movie poster: </td>
				<td><input type="text" name="moviePoster" placeholder="image url"/></td>
			</tr>
			<tr>
				<td>
				<p style="color:red">${msg }</p>
				<input type="submit" value="add movie"/>
				</td>
			</tr>
		</table>
	</spring:form>
</body>
</html>