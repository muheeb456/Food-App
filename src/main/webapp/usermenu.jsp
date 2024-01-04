<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Items</title>
</head>
<body>
<h1 align="center">ITEMS</h1>
<table cellPadding="20px" align="center" >

	<th>S.no</th>
	<th>Item Name</th>
	<th>Item Type</th>
	<th>Cost</th>
	<th>Add to Order</th>

	<c:forEach var="q" items="${products}">
		<tr>
			<td>${q.getId()}</td>
			<td>${q.getName()}</td>
			<td>${q.getType()}</td>
			<td>${q.getCost()}</td>
			<td><a href="addtoorder?id=${q.getId()}">Add</a></td>
		</tr>
	</c:forEach>

</table>
<h1><a href="submitorder">Submit Order</a></h1>
</body>
</html>