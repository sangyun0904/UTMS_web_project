<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html lang="en">
<head>
	<title>Connpeop - Product Info</title>
	<!-- Meta Tags -->
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<meta name="author" content="Webestica.com">
	<meta name="description" content="Bootstrap based News, Magazine and Blog Theme">

	<!-- Favicon -->
	<link rel="shortcut icon" href="resources/images/favicon.ico">

	<!-- Google Font -->
	<link rel="preconnect" href="https://fonts.gstatic.com">
	<link href="https://fonts.googleapis.com/css2?family=Nunito+Sans:wght@400;700&family=Rubik:wght@400;500;700&display=swap" rel="stylesheet">

	<!-- Plugins CSS -->
	<link rel="stylesheet" type="text/css" href="resources/vendor/font-awesome/css/all.min.css">
	<link rel="stylesheet" type="text/css" href="resources/vendor/bootstrap-icons/bootstrap-icons.css">
	<link rel="stylesheet" type="text/css" href="resources/vendor/tiny-slider/tiny-slider.css">
	<link rel="stylesheet" type="text/css" href="resources/vendor/glightbox/css/glightbox.css">

	<!-- Theme CSS -->
	<link id="style-switch" rel="stylesheet" type="text/css" href="resources/css/style.css">

</head>

<body data-bs-spy="scroll" data-bs-target="#nav-scroll" data-bs-offset="100" tabindex="0">

<!-- **************** MAIN CONTENT START **************** -->
<main>
<!-- Divider -->
<div class="border-bottom border-primary border-1 opacity-1"></div>

<!-- =======================
Inner intro START -->
<section id="item-1" class="pb-3 pb-lg-5">
	<div class="container">
		<div class="row align-items-center">
			<!-- Image -->
			<div class="col-md-6 position-relative">
				<img class="card-img" alt="Card image"  style="width:400px;height:300px;" src="${contextPath}/thumbnails?goodsFileName=${productDto.productImages}">
				<!-- Card format icon -->
				<h5 class="p-3 pe-4 position-absolute top-0 end-0">
					<span class="badge bg-success text-white fw-bold rounded-pill"> 8.5 rating</span>
				</h5>
			</div>
			<!-- Content -->
			<div class="col-md-6 mt-4 mt-md-0">
        <a href="#" class="badge bg-primary-soft text-primary mb-2"><i class="fas fa-circle me-2 small fw-bold"></i>Review</a>
				<span class="ms-2 small">Updated: 15 April 2022 07:30 IST</span>
				<h1 class="display-6">${productDto.productName }</h1>
				<p class="lead">${productDto.productDesc }</p>
				<h3>${productDto.productPrice } 원</h3>
			</div>			 
		</div>
	</div>
</section>
<!-- =======================
Inner intro END -->

<!-- =======================
Main START -->
<section class="pt-0">
	<div class="container position-relative" data-sticky-container>
		<div class="row">
			<!-- Main Content START -->

				<!-- Tags and info START -->
				<div class="d-md-flex justify-content-between text-center text-md-start my-4">
					<!-- Info -->
					<ul class="nav nav-divider align-items-center justify-content-center justify-content-md-end">
						<li class="nav-item"><a href="#" class="btn-link"><i class="far fa-comment-alt me-1"></i> ${productDto.productComments } Comments</a></li>
						<li class="nav-item"><i class="far fa-eye me-1"></i> ${productDto.productViews } Views</li>
						<li class="nav-item"><a href="#"><i class="fas fa-heart me-1 text-danger"></i></a> ${productDto.productLikes }</li>
					</ul>
				</div>
				<!-- Tags and info END -->
				
				<!-- Related post START -->
				<div class="mt-5">
					<h2 class="my-3"><i class="bi bi-symmetry-vertical me-2"></i>Related products</h2>
					<div class="tiny-slider arrow-hover arrow-dark arrow-round">
						<div class="tiny-slider-inner"
							data-autoplay="true"
							data-hoverpause="true"
							data-gutter="24"
							data-arrow="true"
							data-dots="false"
							data-items-xl="2" 
							data-items-xs="1">

							<!-- Card item START -->
							<div class="card">
								<!-- Card img -->
								<div class="position-relative">
									<img class="card-img" src="resources/images/blog/4by3/07.jpg" alt="Card image">
									<div class="card-img-overlay d-flex align-items-start flex-column p-3">
										<!-- Card overlay Top -->
										<div class="w-100 mb-auto d-flex justify-content-end">
											<div class="text-end ms-auto">
												<!-- Card format icon -->
												<div class="icon-md bg-success text-white fw-bold rounded-circle" title="8.5 rating">8.5</div>
											</div>
										</div>
										<!-- Card overlay bottom -->
										<div class="w-100 mt-auto">
											<a href="#" class="badge bg-info mb-2"><i class="fas fa-circle me-2 small fw-bold"></i>Marketing</a>
										</div>
									</div>
								</div>
								<div class="card-body px-0 pt-3">
									<h5 class="card-title"><a href="post-single-6.html" class="btn-link text-reset fw-bold">7 common mistakes everyone makes while traveling</a></h5>
									<!-- Card info -->
									<ul class="nav nav-divider align-items-center d-none d-sm-inline-block">
										<li class="nav-item">
											<div class="nav-link">
												<div class="d-flex align-items-center position-relative">
													<div class="avatar avatar-xs">
														<img class="avatar-img rounded-circle" src="resources/images/avatar/07.jpg" alt="avatar">
													</div>
													<span class="ms-3">by <a href="#" class="stretched-link text-reset btn-link">Lori</a></span>
												</div>
											</div>
										</li>
										<li class="nav-item">Mar 07, 2022</li>
									</ul>
								</div>
							</div>
							<!-- Card item END -->
							<!-- Card item START -->
							<div class="card">
								<!-- Card img -->
								<div class="position-relative">
									<img class="card-img" src="resources/images/blog/4by3/08.jpg" alt="Card image">
									<div class="card-img-overlay d-flex align-items-start flex-column p-3">
										<!-- Card overlay Top -->
										<div class="w-100 mb-auto d-flex justify-content-end">
											<div class="text-end ms-auto">
												<!-- Card format icon -->
												<div class="icon-md bg-warning text-white fw-bold rounded-circle" title="5.2 rating">5.2</div>
											</div>
										</div>
										<!-- Card overlay bottom -->
										<div class="w-100 mt-auto">
											<a href="#" class="badge bg-danger mb-2"><i class="fas fa-circle me-2 small fw-bold"></i>Sports</a>
										</div>
									</div>
								</div>
								<div class="card-body px-0 pt-3">
									<h5 class="card-title"><a href="post-single-6.html" class="btn-link text-reset fw-bold">Skills that you can learn from business</a></h5>
									<!-- Card info -->
									<ul class="nav nav-divider align-items-center d-none d-sm-inline-block">
										<li class="nav-item">
											<div class="nav-link">
												<div class="d-flex align-items-center position-relative">
													<div class="avatar avatar-xs">
														<img class="avatar-img rounded-circle" src="resources/images/avatar/08.jpg" alt="avatar">
													</div>
													<span class="ms-3">by <a href="#" class="stretched-link text-reset btn-link">Joan</a></span>
												</div>
											</div>
										</li>
										<li class="nav-item">Aug 15, 2022</li>
									</ul>
								</div>
							</div>
							<!-- Card item END -->
							<!-- Card item START -->
							<div class="card">
								<!-- Card img -->
								<div class="position-relative">
									<img class="card-img" src="resources/images/blog/4by3/09.jpg" alt="Card image">
									<div class="card-img-overlay d-flex align-items-start flex-column p-3">
										<!-- Card overlay Top -->
										<div class="w-100 mb-auto d-flex justify-content-end">
											<div class="text-end ms-auto">
												<!-- Card format icon -->
												<div class="icon-md bg-danger text-white fw-bold rounded-circle" title="2.5 rating">2.5</div>
											</div>
										</div>
										<!-- Card overlay bottom -->
										<div class="w-100 mt-auto">
											<a href="#" class="badge bg-success mb-2"><i class="fas fa-circle me-2 small fw-bold"></i>Marketing</a>
										</div>
									</div>
								</div>
								<div class="card-body px-0 pt-3">
									<h5 class="card-title"><a href="post-single-6.html" class="btn-link text-reset fw-bold">10 tell-tale signs you need to get a new business</a></h5>
									<!-- Card info -->
									<ul class="nav nav-divider align-items-center d-none d-sm-inline-block">
										<li class="nav-item">
											<div class="nav-link">
												<div class="d-flex align-items-center position-relative">
													<div class="avatar avatar-xs">
														<img class="avatar-img rounded-circle" src="resources/images/avatar/09.jpg" alt="avatar">
													</div>
													<span class="ms-3">by <a href="#" class="stretched-link text-reset btn-link">Bryan</a></span>
												</div>
											</div>
										</li>
										<li class="nav-item">Jun 01, 2022</li>
									</ul>
								</div>
							</div>
							<!-- Card item END -->
						</div>
					</div> <!-- Slider END -->
				</div>
				<!-- Related post END -->

				<!-- Comments START -->
				<div class="mt-5">
				
					<h3>${productDto.productComments } comments</h3>
					  <c:forEach var="commentMap" items="${commentMapList }">
						<!-- Comment level 1-->
						<div class="my-4 d-flex">
						  <img class="avatar avatar-md rounded-circle float-start me-3" src="resources/images/avatar/01.jpg" alt="avatar">
						  <div>
						    <div class="mb-2">
						    	<h5 class="m-0"> ${commentMap.memberName } </h5>
						    	<span class="me-3 small"><fmt:formatDate value="${commentMap.commentCredate }" type="both"/> </span>
						    </div>
						    <p> ${commentMap.commentContent } </p>
						  </div>
						</div>
					  </c:forEach>

				</div>
				<!-- Comments END -->
				<!-- Reply START -->
				<div>
					<h3>Leave a reply</h3>
					<small>Your email address will not be published. Required fields are marked *</small>
					<form class="row g-3 mt-2" method="post">
					  <input type="hidden" name="productId" value="${productDto.productId }">
					  <input type="hidden" name="memberId" value="<c:out value="${sessionScope.memberId}"/>">
					  <div class="col-12">
					    <label class="form-label">Your Comment *</label>
					  	<textarea class="form-control" rows="3" name="content"></textarea>
					  </div>
					  <div class="col-12">
					    <button type="submit" class="btn btn-primary">Post comment</button>
					  </div>
					</form>
				</div>
				<!-- Reply END -->
			<!-- Main Content END -->
		</div>
	</div>
</section>
<!-- =======================
Main END -->

</main>
<!-- **************** MAIN CONTENT END **************** -->

<!-- Back to top -->
<div class="back-top"><i class="bi bi-arrow-up-short"></i></div>

<!-- =======================
JS libraries, plugins and custom scripts -->

<!-- Bootstrap JS -->
<script src="resources/vendor/bootstrap/dist/js/bootstrap.bundle.min.js"></script>

<!-- Vendors -->
<script src="resources/vendor/tiny-slider/tiny-slider.js"></script>
<script src="resources/vendor/sticky-js/sticky.min.js"></script>
<script src="resources/vendor/glightbox/js/glightbox.js"></script>

<!-- Template Functions -->
<script src="resources/js/functions.js"></script>

</body>
</html>