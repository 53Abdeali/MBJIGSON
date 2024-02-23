<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="coverLetter.css"></link>
<link rel="stylesheet" href="TechnicalSpecification.css"></link>
<meta charset="ISO-8859-1">
<title>Review Section</title>
</head>
<body>
	<div class="specr">
		<h3>REVIEW YOUR QUOTATION.</h3>
	</div>
	<%@ include file="coverLetter.jsp" %>
    <%@ include file="Description.jsp" %>
    <%@ include file="TechnicalSpecification.jsp" %>
    <%@ include file="OptionalAccessories.jsp" %>
    <%@ include file="Parts.jsp" %>
    <%@ include file="price.jsp" %>
</body>
</html>