<%@page import="com.mysql.cj.x.protobuf.MysqlxCursor.FetchOrBuilder"%>
<%@page import="java.util.List"%>
<%@page import="com.jsp.foodapp.dto.FoodOrder"%>
<%@page import="com.jsp.foodapp.dto.Item"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1 align="center">All Food Orders</h1>
	
	<table cellPadding="20px">
		<th>Id</th>
		<th>Name</th>
		<th>Number</th>
		<th>Username</th>
		<th>Items</th>
		
		
		
		<c:forEach var="fo" items="${allorders}">
			<tr>
				<td>${fo.getId()}</td>
				<td>${fo.getName()}</td>
				<td>${fo.getMobile()}</td>
				<td>${fo.getUser().getName()}</td>
				<td>${fo.getItems()}</td>
			</tr>
		</c:forEach>
	</table>
</body>
</html>