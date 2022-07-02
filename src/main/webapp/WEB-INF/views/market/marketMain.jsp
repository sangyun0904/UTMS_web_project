<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<main><br><br>

<!-- =======================
Inner intro END -->

<!-- =======================
Main content START -->
<section class="position-relative pt-0">
	<div class="container" data-sticky-container>
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
								<img class="card-img" alt="Card image" style="width:400px;height:300px;" src="${contextPath}/utms/thumbnails?goodsFileName=${product.productImages}">
								<div class="card-img-overlay d-flex align-items-start flex-column p-3">
									<!-- Card overlay bottom -->
									<div class="w-100 mt-auto">
										<!-- Card category -->
										<a href="#" class="badge bg-warning mb-2"><i class="fas fa-circle me-2 small fw-bold"></i>Technology</a>
									</div>
								</div>
							</div>
							<div class="card-body px-0 pt-3">
								<h4 class="card-title"><a href="/utms/productInfo?num=${product.productId }"  class="btn-link text-reset fw-bold">${product.productName }</a></h4>
								<p class="card-text">${product.productDesc }</p>
								<!-- Card info -->
								<ul class="nav nav-divider align-items-center d-none d-sm-inline-block">
									<li class="nav-item">
										<div class="nav-link">
											<div class="d-flex align-items-center position-relative">
												<div class="avatar avatar-xs">
													<img class="avatar-img rounded-circle" src="resources/images/avatar/08.jpg" alt="avatar">
												</div>
												<span class="ms-3">by <a href="#" class="stretched-link text-reset btn-link"><c:out value="${sessionScope.memberName}"/></a></span>
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
					<!-- Card item END -->
					<!-- Card item START -->
					<div class="col-sm-6">
						<div class="card">
							<!-- Card img -->
							<div class="position-relative">
								<img class="card-img" src="resources/images/blog/4by3/06.jpg" alt="Card image">
								<div class="card-img-overlay d-flex align-items-start flex-column p-3">
									<!-- Card overlay Top -->
									<div class="w-100 mb-auto d-flex justify-content-end">
										<div class="text-end ms-auto">
											<!-- Card format icon -->
											<div class="icon-md bg-white-soft bg-blur text-white rounded-circle" title="This post has video"><i class="fas fa-video"></i></div>
										</div>
									</div>
									<!-- Card overlay bottom -->
									<div class="w-100 mt-auto">
										<!-- Card category -->
										<a href="#" class="badge bg-danger mb-2"><i class="fas fa-circle me-2 small fw-bold"></i>Travel</a>
									</div>
								</div>
							</div>
							<div class="card-body px-0 pt-3">
								<h4 class="card-title"><a href="post-single-4.html" class="btn-link text-reset fw-bold">Dirty little secrets about the business industry</a></h4>
								<p class="card-text">Place voice no arises along to. Parlors waiting so against me no. Wishing calling is warrant settled was lucky. Express besides it present if at an opinion visitor.</p>
								<!-- Card info -->
								<ul class="nav nav-divider align-items-center d-none d-sm-inline-block">
									<li class="nav-item">
										<div class="nav-link">
											<div class="d-flex align-items-center position-relative">
												<div class="avatar avatar-xs">
													<img class="avatar-img rounded-circle" src="resources/images/avatar/02.jpg" alt="avatar">
												</div>
												<span class="ms-3">by <a href="#" class="stretched-link text-reset btn-link">Dennis</a></span>
											</div>
										</div>
									</li>
									<li class="nav-item">Mar 07, 2022</li>
								</ul>
							</div>
						</div>
					</div>
					<!-- Card item END -->
					<!-- Card item START -->
					<div class="col-sm-6">
						<div class="card">
							<!-- Card img -->
							<div class="position-relative">
								<img class="card-img" src="resources/images/blog/4by3/03.jpg" alt="Card image">
								<div class="card-img-overlay d-flex align-items-start flex-column p-3">
									<!-- Card overlay bottom -->
									<div class="w-100 mt-auto">
										<!-- Card category -->
										<a href="#" class="badge bg-success mb-2"><i class="fas fa-circle me-2 small fw-bold"></i>Gadgets</a>
									</div>
								</div>
							</div>
							<div class="card-body px-0 pt-3">
								<h4 class="card-title"><a href="post-single-4.html" class="btn-link text-reset fw-bold">Bad habits that people in the industry need to quit</a></h4>
								<p class="card-text">For who thoroughly her boy estimating conviction. Removed demands expense account in outward tedious do. Particular way thoroughly unaffected</p>
								<!-- Card info -->
								<ul class="nav nav-divider align-items-center d-none d-sm-inline-block">
									<li class="nav-item">
										<div class="nav-link">
											<div class="d-flex align-items-center position-relative">
												<div class="avatar avatar-xs">
													<img class="avatar-img rounded-circle" src="resources/images/avatar/03.jpg" alt="avatar">
												</div>
												<span class="ms-3">by <a href="#" class="stretched-link text-reset btn-link">Bryan</a></span>
											</div>
										</div>
									</li>
									<li class="nav-item">Jun 17, 2022</li>
								</ul>
							</div>
						</div>
					</div>
					<!-- Card item END -->
					<!-- Card item START -->
					<div class="col-sm-6">
						<div class="card">
							<!-- Card img -->
							<div class="position-relative">
								<img class="card-img" src="resources/images/blog/4by3/04.jpg" alt="Card image">
								<div class="card-img-overlay d-flex align-items-start flex-column p-3">
									<!-- Card overlay bottom -->
									<div class="w-100 mt-auto">
										<!-- Card category -->
										<a href="#" class="badge bg-primary mb-2"><i class="fas fa-circle me-2 small fw-bold"></i>Sports</a>
									</div>
								</div>
							</div>
							<div class="card-body px-0 pt-3">
								<h4 class="card-title"><a href="post-single-4.html" class="btn-link text-reset fw-bold">Around the web: 20 fabulous infographics about business</a></h4>
								<p class="card-text">Projection favorable Mrs can be projecting own. Thirty it matter enable become admire in giving. See resolved goodness felicity shy civility domestic had but.</p>
								<!-- Card info -->
								<ul class="nav nav-divider align-items-center d-none d-sm-inline-block">
									<li class="nav-item">
										<div class="nav-link">
											<div class="d-flex align-items-center position-relative">
												<div class="avatar avatar-xs">
													<img class="avatar-img rounded-circle" src="resources/images/avatar/04.jpg" alt="avatar">
												</div>
												<span class="ms-3">by <a href="#" class="stretched-link text-reset btn-link">Billy</a></span>
											</div>
										</div>
									</li>
									<li class="nav-item">Dec 29, 2022</li>
								</ul>
							</div>
						</div>
					</div>
					<!-- Card item END -->
					<!-- Card item START -->
					<div class="col-sm-6">
						<div class="card">
							<!-- Card img -->
							<div class="position-relative">
								<img class="card-img" src="resources/images/blog/4by3/05.jpg" alt="Card image">
								<div class="card-img-overlay d-flex align-items-start flex-column p-3">
									<!-- Card overlay Top -->
									<div class="w-100 mb-auto d-flex justify-content-end">
										<div class="text-end ms-auto">
											<!-- Card format icon -->
											<div class="icon-md bg-white-soft bg-blur text-white rounded-circle" title="This post has audio"><i class="fas fa-volume-up"></i></div>
										</div>
									</div>
									<!-- Card overlay bottom -->
									<div class="w-100 mt-auto">
										<!-- Card category -->
										<a href="#" class="badge bg-info mb-2"><i class="fas fa-circle me-2 small fw-bold"></i>Marketing</a>
									</div>
								</div>
							</div>
							<div class="card-body px-0 pt-3">
								<h4 class="card-title"><a href="post-single-4.html" class="btn-link text-reset fw-bold">7 common mistakes everyone makes while traveling</a></h4>
								<p class="card-text">Drawings offended yet answered Jennings perceive laughing six did far. Rooms oh fully taken by worse do. Points afraid but may end law lasted. </p>
								<!-- Card info -->
								<ul class="nav nav-divider align-items-center d-none d-sm-inline-block">
									<li class="nav-item">
										<div class="nav-link">
											<div class="d-flex align-items-center position-relative">
												<div class="avatar avatar-xs">
													<img class="avatar-img rounded-circle" src="resources/images/avatar/05.jpg" alt="avatar">
												</div>
												<span class="ms-3">by <a href="#" class="stretched-link text-reset btn-link">Jacqueline</a></span>
											</div>
										</div>
									</li>
									<li class="nav-item">Nov 11, 2022</li>
								</ul>
							</div>
						</div>
					</div>
					<!-- Card item END -->
					<!-- Card item START -->
					<div class="col-sm-6">
						<div class="card">
							<!-- Card img -->
							<div class="position-relative">
								<img class="card-img" src="resources/images/blog/4by3/12.jpg" alt="Card image">
								<div class="card-img-overlay d-flex align-items-start flex-column p-3">
									<!-- Card overlay bottom -->
									<div class="w-100 mt-auto">
										<!-- Card category -->
										<a href="#" class="badge bg-danger mb-2"><i class="fas fa-circle me-2 small fw-bold"></i>Photography</a>
									</div>
								</div>
							</div>
							<div class="card-body px-0 pt-3">
								<h4 class="card-title"><a href="post-single-4.html" class="btn-link text-reset fw-bold">5 investment doubts you should clarify</a></h4>
								<p class="card-text">Was out laughter raptures returned outweigh. Luckily cheered colonel I do we attack highest enabled. Tried law yet style child. The bore of true of no be deal.</p>
								<!-- Card info -->
								<ul class="nav nav-divider align-items-center d-none d-sm-inline-block">
									<li class="nav-item">
										<div class="nav-link">
											<div class="d-flex align-items-center position-relative">
												<div class="avatar avatar-xs">
													<img class="avatar-img rounded-circle" src="resources/images/avatar/06.jpg" alt="avatar">
												</div>
												<span class="ms-3">by <a href="#" class="stretched-link text-reset btn-link">Carolyn</a></span>
											</div>
										</div>
									</li>
									<li class="nav-item">Sep 01, 2022</li>
								</ul>
							</div>
						</div>
					</div>
					<!-- Card item END -->
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
					<!-- Trending topics widget START -->
					<div>
						<h4 class="mb-3">Trending topics</h4>
						<!-- Category item -->
						<div class="text-center mb-3 card-bg-scale position-relative overflow-hidden rounded" style="background-image:url(resources/images/blog/4by3/01.jpg); background-position: center left; background-size: cover;">
							<div class="bg-dark-overlay-4 p-3">
								<a href="#" class="stretched-link btn-link fw-bold text-white h5">Travel</a>
							</div>
						</div>
						<!-- Category item -->
						<div class="text-center mb-3 card-bg-scale position-relative overflow-hidden rounded" style="background-image:url(resources/images/blog/4by3/02.jpg); background-position: center left; background-size: cover;">
							<div class="bg-dark-overlay-4 p-3">
								<a href="#" class="stretched-link btn-link fw-bold text-white h5">Business</a>
							</div>
						</div>
						<!-- Category item -->
						<div class="text-center mb-3 card-bg-scale position-relative overflow-hidden rounded" style="background-image:url(resources/images/blog/4by3/03.jpg); background-position: center left; background-size: cover;">
							<div class="bg-dark-overlay-4 p-3">
								<a href="#" class="stretched-link btn-link fw-bold text-white h5">Marketing</a>
							</div>
						</div>
						<!-- Category item -->
						<div class="text-center mb-3 card-bg-scale position-relative overflow-hidden rounded" style="background-image:url(resources/images/blog/4by3/04.jpg); background-position: center left; background-size: cover;">
							<div class="bg-dark-overlay-4 p-3">
								<a href="#" class="stretched-link btn-link fw-bold text-white h5">Photography</a>
							</div>
						</div>
						<!-- Category item -->
						<div class="text-center mb-3 card-bg-scale position-relative overflow-hidden rounded" style="background-image:url(resources/images/blog/4by3/05.jpg); background-position: center left; background-size: cover;">
							<div class="bg-dark-overlay-4 p-3">
								<a href="#" class="stretched-link btn-link fw-bold text-white h5">Sports</a>
							</div>
						</div>
						<!-- View All Category button -->
						<div class="text-center mt-3">
							<a href="#" class="fw-bold text-muted text-primary-hover"><u>View all categories</u></a>
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
<hr>
<!-- =======================
Inner intro START -->
<section class="pt-4">
	<div class="container">
		<div class="row">
      <div class="col-12">
				<div class="bg-danger-soft p-4 text-center rounded-3" onclick="location.href='/protfolio/uploadProduct'">
					<h1 class="text-danger m-0">Upload Product</h1>
					<p class="lead m-0">sell product, earn money</p>
				</div>
      </div>
    </div>
	</div>
</section>

</main>
</body>
</html>