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
	<thead>
	<tr>
	<th>S.no</th>
	<th>Item Name</th>
	<th>Item Type</th>
	<th>Cost</th>
	<th>Update-Item</th>
	<th>Delete-Item</th>
	</tr>
	</thead>
	<c:forEach var="p" items="${products}">
		<tr>
			<td>${p.getId()}</td>
			<td>${p.getName()}</td>
			<td>${p.getType()}</td>
			<td>${p.getCost()}</td>
			<td><a href="updateproduct?id=${p.getId()}">Update</a></td>
			<td><a href="deleteproduct?id=${p.getId()}">Delete</a></td>
		</tr>
	</c:forEach>

</table>
</body>
</html>