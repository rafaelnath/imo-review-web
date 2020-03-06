<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="spring"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<spring:form name="review" method="get">
		<table>
			<tr>
				<td>reviewing as:</td>
				<td><input type="text" name="reviewUserName" value="${userName}" readonly/></td>
			<tr>
				<td>Movie id:</td>
				<td><input type="text" name="movieId" value="${movieId}" readonly/></td> <!-- MIGHT CAUSE AN ERROR -->
			</tr>
			<tr>
				<td>title:</td>
				<td><input type="text" name="reviewTitle"/></td>
			</tr>
			<tr>
				<td>rating:</td>
				<td><input type="text" name="reviewRating" placeholder="from 0~5"/></td>
			</tr>
			<tr>
				<td>comment:</td>
			</tr>
			<tr>
				<!-- code below will render to html like -> <textarea id="reviewComment" name="reviewComment" rows... -->
				<td><input type="text" name="reviewComment"/></td>
			</tr>
			<tr>
				<td colspan="2">
				<input type="submit" value="submit"/>
				</td>
			</tr>
		</table>
		<div style="p{color:red}"><p>${msg }</p></div>
	</spring:form>
</body>
</html>