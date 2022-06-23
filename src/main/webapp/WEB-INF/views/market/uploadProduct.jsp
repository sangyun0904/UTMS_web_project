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
		<tr>
			<td>
				<label>카테고리 </label>
			</td>
			<td>
				<select name="productSort" >
					<option value="house">가전/가구/인테리어</option>
					<option value="sports">스포츠/레저</option>
					<option value="fashion">여성의류/남성패션/잡화</option>
					<option value="beauty">뷰티/미용</option>
					<option value="life">도서/티켓/음반</option>
					<option value="babies">유아용품</option>
				</select>
			</td>
		</tr>
	</table>
	<br>
	<input type="submit" value="상품 등록"/>
	</form>
</body>
</html>