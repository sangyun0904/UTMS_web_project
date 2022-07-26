<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://code.jquery.com/jquery-3.6.0.min.js" ></script>
<script>
	
	$().ready(function(){
		
		$('#getSearchResult').click(function(){
			
			var searchWord = $("#searchWord").val();
			var url = "/productList?";
					url += "searchWord=" + searchWord;
					
					location.href=url;
			
		})
		
	})
	
</script>
</head>
<body>
<main>
<br><br>

<!-- =======================
Main content START -->
<section class="position-relative pt-0">
	<div class="container" data-sticky-container>
		<div class="container" align="right" style="margin:10px; padding:5px; background-color: orange">
			<input type="button" value="게시판">
			<input type="button" value="중고거래">
		</div>
		<div class="row">
			<!-- Main Post START -->
			<div class="col-lg-9">
				<div class="row gy-4">
					<!-- Card item START -->
					<c:forEach var="product" items="${productList }">
					<div class="col-sm-6">
						<div class="card">
							<!-- Card img -->
							<div class="position-relative">
								<img class="card-img" alt="Card image" style="width:400px;height:300px;" src="${contextPath}/thumbnails?goodsFileName=${product.productImages}">
								<div class="card-img-overlay d-flex align-items-start flex-column p-3">
									<!-- Card overlay bottom -->
									<div class="w-100 mt-auto">
										<!-- Card category -->
										<a href="#" class="badge bg-warning mb-2"><i class="fas fa-circle me-2 small fw-bold"></i>${product.productSort }</a>
									</div>
								</div>
							</div>
							<div class="card-body px-0 pt-3">
								<h4 class="card-title"><a href="/productInfo?num=${product.productId }"  class="btn-link text-reset fw-bold">${product.productName }</a></h4>
								<p class="card-text">${product.productDesc }</p>
								<!-- Card info -->
								<ul class="nav nav-divider align-items-center d-none d-sm-inline-block">
									<li class="nav-item">
										<div class="nav-link">
											<div class="d-flex align-items-center position-relative">
												<div class="avatar avatar-xs">
													<img class="avatar-img rounded-circle" src="resources/images/avatar/08.jpg" alt="avatar">
												</div>
												<span class="ms-3">by <a href="#" class="stretched-link text-reset btn-link"><c:out value="${product.memberName}"/></a></span>
											</div>
										</div>
									</li>
									<li class="nav-item"><fmt:formatDate value="${product.productCredate }" pattern="yyyy-MM-dd"/></li>
									<li class="nav-item">${product.productPrice } 원</li>
								</ul>
							</div>
						</div>
					</div>
					</c:forEach>
				<!-- Load more START -->
					<div class="col-12 text-center mt-5">
						<button type="button" class="btn btn-primary-soft">Load more post <i class="bi bi-arrow-down-circle ms-2 align-middle"></i></button>
					</div>
					<!-- Load more END -->
				</div>
			</div>
			<!-- Main Post END -->

			<!-- Sidebar START -->
			<div class="col-lg-3 mt-5 mt-lg-0">
				<div data-sticky data-margin-top="80" data-sticky-for="767">
					<!-- Nav Search -->
					<input type="text" id="searchWord" value="${searchWord }"> &emsp;
					<input type="button" value="search" id="getSearchResult">
					<br><br><br>
					</div>
					<!-- Nav right END -->
					<!-- Trending topics widget START -->
					<div>
						<h4 class="mb-3">Trending topics</h4>
						<!-- Category item -->
						<div class="text-center mb-3 card-bg-scale position-relative overflow-hidden rounded" style="background-image:url(resources/images/blog/4by3/01.jpg); background-position: center left; background-size: cover;">
							<div class="bg-dark-overlay-4 p-3">
								<a href="/sortedProduct?category=house" class="stretched-link btn-link fw-bold text-white h5">가전/가구/인테리어</a>
							</div>
						</div>
						<!-- Category item -->
						<div class="text-center mb-3 card-bg-scale position-relative overflow-hidden rounded" style="background-image:url(resources/images/blog/4by3/02.jpg); background-position: center left; background-size: cover;">
							<div class="bg-dark-overlay-4 p-3">
								<a href="/sortedProduct?category=sports" class="stretched-link btn-link fw-bold text-white h5">스포츠/레저</a>
							</div>
						</div>
						<!-- Category item -->
						<div class="text-center mb-3 card-bg-scale position-relative overflow-hidden rounded" style="background-image:url(resources/images/blog/4by3/03.jpg); background-position: center left; background-size: cover;">
							<div class="bg-dark-overlay-4 p-3">
								<a href="/sortedProduct?category=fashion" class="stretched-link btn-link fw-bold text-white h5">여성의류/남성패션/잡화</a>
							</div>
						</div>
						<!-- Category item -->
						<div class="text-center mb-3 card-bg-scale position-relative overflow-hidden rounded" style="background-image:url(resources/images/blog/4by3/04.jpg); background-position: center left; background-size: cover;">
							<div class="bg-dark-overlay-4 p-3">
								<a href="/sortedProduct?category=beauty" class="stretched-link btn-link fw-bold text-white h5">뷰티/미용</a>
							</div>
						</div>
						<!-- Category item -->
						<div class="text-center mb-3 card-bg-scale position-relative overflow-hidden rounded" style="background-image:url(resources/images/blog/4by3/05.jpg); background-position: center left; background-size: cover;">
							<div class="bg-dark-overlay-4 p-3">
								<a href="/sortedProduct?category=life" class="stretched-link btn-link fw-bold text-white h5">도서/티켓/음반</a>
							</div>
						</div>
						<!-- Category item -->
						<div class="text-center mb-3 card-bg-scale position-relative overflow-hidden rounded" style="background-image:url(resources/images/blog/4by3/05.jpg); background-position: center left; background-size: cover;">
							<div class="bg-dark-overlay-4 p-3">
								<a href="/sortedProduct?category=babies" class="stretched-link btn-link fw-bold text-white h5">유아용품</a>
							</div>
						</div>
						<!-- Category item -->
						<div class="text-center mb-3 card-bg-scale position-relative overflow-hidden rounded" style="background-image:url(resources/images/blog/4by3/05.jpg); background-position: center left; background-size: cover;">
							<div class="bg-dark-overlay-4 p-3">
								<a href="/sortedProduct?category=others" class="stretched-link btn-link fw-bold text-white h5">기타</a>
							</div>
						</div>
					</div>
					<!-- Trending topics widget END -->

					<div class="row">

						<!-- ADV widget START -->
						<div class="col-12 col-sm-6 col-lg-12 my-4">
							<a href="#" class="d-block card-img-flash">
								<img src="resources/images/adv.png" alt="">
							</a>
							<div class="smaller text-end mt-2">ads via <a href="#" class="text-muted"><u>Bootstrap</u></a></div>
						</div>
						<!-- ADV widget END -->
					</div>
				</div>
			</div>
			<!-- Sidebar END -->
		</div> <!-- Row end -->
	</div>
</section>
<!-- =======================
Main content END -->

</main>
</body>
</html>