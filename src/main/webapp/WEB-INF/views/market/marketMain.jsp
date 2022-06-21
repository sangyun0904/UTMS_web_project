<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Market Main</title>
</head>
<body>

	<table border="1">
		<tr>
			<th>상품명</th>
			<th>판매자</th>
			<th>업로드 날짜</th>
			<th>가격</th>
		</tr>
		<c:forEach var="product" items="productList">
			<tr align="center">
				<th>${product.productName }</th>
				<th>${product.productSeller }</th>
				<th>${product.productCredate }</th>
				<th>${product.productPrice }</th>
			</tr>
		</c:forEach>
	</table>

</body>
</html>