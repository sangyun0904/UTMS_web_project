<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>New Product</title>
</head>
<body>
	<form action="/portfolio/uploadProduct" method="post">
	<h3>상품 판매</h3>
	<table class="table table-borderd table-hover">
		<tr>
			<td>
				<label>상품명 </label>
			</td>
			<td><input type="text" name="productName"/></td>
		</tr>
		<tr>
			<td>
				<label>가격 </label>
			</td>
			<td><input type="text" name="productPrice"/> 원</td>
		</tr>
		<tr>
			<td>
				<label>상품 설명 </label>
			</td>
			<td><textarea rows="10" cols="50" name="productDesc" ></textarea></td>
		</tr>
	</table>
	</form>
</body>
</html>