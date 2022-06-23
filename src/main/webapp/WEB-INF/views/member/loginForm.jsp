<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="contextPath"  value="${pageContext.request.contextPath}" />
<!DOCTYPE html >
<html lang="en">
	<head>
		<title>Blogzine - Blog and Magazine Bootstrap 5 Theme</title>
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
	
		<!-- Theme CSS -->
		<link id="style-switch" rel="stylesheet" type="text/css" href="resources/css/style.css">
	
	</head>
	<body>
	
	<!-- =======================
	Header START -->
	<header class="navbar-light navbar-sticky header-static">
		<!-- Logo Nav START -->
		<nav class="navbar navbar-expand-lg">
			<div class="container">
				<!-- Logo START -->
				<a class="navbar-brand" href="index.html">
					<img class="navbar-brand-item light-mode-item" src="assets/images/logo.svg" alt="logo">			
					<img class="navbar-brand-item dark-mode-item" src="assets/images/logo-light.svg" alt="logo">			
				</a>
				<!-- Logo END -->
	
				<!-- Responsive navbar toggler -->
				<button class="navbar-toggler ms-auto" type="button" data-bs-toggle="collapse" data-bs-target="#navbarCollapse" aria-controls="navbarCollapse" aria-expanded="false" aria-label="Toggle navigation">
				  <span class="text-body h6 d-none d-sm-inline-block">Menu</span>
				  <span class="navbar-toggler-icon"></span>
			  </button>
	
				<!-- Main navbar START -->
				<div class="collapse navbar-collapse" id="navbarCollapse">
					<ul class="navbar-nav navbar-nav-scroll ms-auto">
						
						<!-- Nav item 1 Demos -->
						<li class="nav-item dropdown">
							<a class="nav-link dropdown-toggle" href="#" id="homeMenu" data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Home</a>
							<ul class="dropdown-menu" aria-labelledby="homeMenu">
								<li> <a class="dropdown-item" href="index.html">Home default</a></li>
								<li> <a class="dropdown-item" href="index-lazy.html">Home lazy load</a></li>
								<li> <a class="dropdown-item" href="index-2.html">Magazine classic</a></li>
								<li> <a class="dropdown-item" href="index-3.html">Magazine</a></li>
								<li> <a class="dropdown-item" href="index-4.html">Home cards</a></li>
								<li> <a class="dropdown-item" href="index-5.html">Blog classic</a></li>
								<li> <a class="dropdown-item" href="index-6.html">Blog Personal <span class="badge bg-danger smaller me-1">New</span> </a></li>
								<li> <a class="dropdown-item" href="index-7.html">Blog Vintage <span class="badge bg-danger smaller me-1">New</span></a></li>
								<li> <a class="dropdown-item" href="index-8.html">Blog Tech <span class="badge bg-danger smaller me-1">New</span></a></li>
								<li> <a class="dropdown-item" href="index-9.html">Blog Fashion <span class="badge bg-danger smaller me-1">New</span></a></li>
								<li> <a class="dropdown-item" href="index-10.html">Blog Podcast <span class="badge bg-danger smaller me-1">New</span></a></li>
							</ul>
						</li>
	
						<!-- Nav item 2 Pages -->
						<li class="nav-item dropdown">
							<a class="nav-link dropdown-toggle" href="#" id="pagesMenu" data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Pages</a>
							<ul class="dropdown-menu" aria-labelledby="pagesMenu">
								<li> <a class="dropdown-item" href="about-us.html">About</a></li>
								<li> <a class="dropdown-item" href="contact-us.html">Contact</a></li>
								<!-- Dropdown submenu -->
								<li class="dropdown-submenu dropend"> 
									<a class="dropdown-item dropdown-toggle" href="#">Other Archives</a>
									<ul class="dropdown-menu dropdown-menu-start" data-bs-popper="none">
										<li> <a class="dropdown-item" href="author.html">Author Page</a> </li>
										<li> <a class="dropdown-item" href="categories.html">Category page 1</a> </li>
										<li> <a class="dropdown-item" href="categories-2.html">Category page 2</a> </li>
										<li> <a class="dropdown-item" href="tag.html"># tag</a> </li>
										<li> <a class="dropdown-item" href="search-result.html">Search result</a> </li>
									</ul>
								</li>
								<li> <a class="dropdown-item" href="404.html">Error 404</a></li>
								<li> <a class="dropdown-item" href="signin.html">signin</a></li>
								<li> <a class="dropdown-item" href="signup.html">signup</a></li>
								<li> <a class="dropdown-item" href="offline.html">offline</a></li>
								<!-- Dropdown submenu levels -->
								<li class="dropdown-divider"></li>
								<li class="dropdown-submenu dropend">
									<a class="dropdown-item dropdown-toggle" href="#">Dropdown levels</a>
									<ul class="dropdown-menu dropdown-menu-start" data-bs-popper="none">
										<!-- dropdown submenu open right -->
										<li class="dropdown-submenu dropend">
											<a class="dropdown-item dropdown-toggle" href="#">Dropdown (end)</a>
											<ul class="dropdown-menu" data-bs-popper="none">
												<li> <a class="dropdown-item" href="#">Dropdown item</a> </li>
												<li> <a class="dropdown-item" href="#">Dropdown item</a> </li>
											</ul>
										</li>
										<li> <a class="dropdown-item" href="#">Dropdown item</a> </li>
										<!-- dropdown submenu open left -->
										<li class="dropdown-submenu dropstart">
											<a class="dropdown-item dropdown-toggle" href="#">Dropdown (start)</a>
											<ul class="dropdown-menu dropdown-menu-end" data-bs-popper="none">
												<li> <a class="dropdown-item" href="#">Dropdown item</a> </li>
												<li> <a class="dropdown-item" href="#">Dropdown item</a> </li>
											</ul>
										</li>
										<li> <a class="dropdown-item" href="#">Dropdown item</a> </li>
									</ul>
								</li>
								<li class="dropdown-divider"></li>
								<li> 
									<a class="dropdown-item" href="https://support.webestica.com/" target="_blank">
										<i class="text-warning fa-fw bi bi-life-preserver me-2"></i>Support
									</a> 
								</li>
								<li> 
									<a class="dropdown-item" href="docs/index.html" target="_blank">
										<i class="text-danger fa-fw bi bi-card-text me-2"></i>Documentation
									</a> 
								</li>
								<li class="dropdown-divider"></li>
								<li> 
									<a class="dropdown-item" href="https://blogzine.webestica.com/rtl" target="_blank">
										<i class="text-info fa-fw bi bi-toggle-off me-2"></i>RTL demo
									</a> 
								</li>
								<li> 
									<a class="dropdown-item" href="https://themes.getbootstrap.com/store/webestica/" target="_blank">
										<i class="text-success fa-fw bi bi-cloud-download-fill me-2"></i>Buy blogzine!
									</a> 
								</li>
							</ul>
						</li>
	
						<!-- Nav item 3 Post -->
						<li class="nav-item dropdown">
							<a class="nav-link dropdown-toggle" href="#" id="postMenu" data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Post</a>
							<ul class="dropdown-menu" aria-labelledby="postMenu">
								<!-- dropdown submenu -->
								<li class="dropdown-submenu dropend"> 
									<a class="dropdown-item dropdown-toggle" href="#">Post grid</a>
									<ul class="dropdown-menu dropdown-menu-start" data-bs-popper="none">
										<li> <a class="dropdown-item" href="post-grid.html">Post grid</a> </li>
										<li> <a class="dropdown-item" href="post-grid-4-col.html">Post grid 4 col</a> </li>
										<li> <a class="dropdown-item" href="post-grid-masonry.html">Post grid masonry</a> </li>
										<li> <a class="dropdown-item" href="post-grid-masonry-filter.html">Post grid masonry filter</a> </li>
										<li> <a class="dropdown-item" href="post-large-and-grid.html">Post mixed large than grid</a> </li>
									</ul>
								</li>
								<li> <a class="dropdown-item" href="post-list.html">Post list</a> </li>
								<li> <a class="dropdown-item" href="post-list-2.html">Post list 2</a> </li>
								<li> <a class="dropdown-item" href="post-cards.html">Post card</a> </li>
								<li> <a class="dropdown-item" href="post-overlay.html">Post Overlay</a> </li>
								<li> <a class="dropdown-item" href="post-types.html">Post types <span class="badge bg-danger smaller me-1">New</span></a> </li>
								<li class="dropdown-divider"></li>
								<li> <a class="dropdown-item" href="post-single.html">Post single magazine</a> </li>
								<li> <a class="dropdown-item" href="post-single-2.html">Post single classic</a> </li>
								<li> <a class="dropdown-item" href="post-single-3.html">Post single minimal</a> </li>
								<li> <a class="dropdown-item" href="post-single-4.html">Post single card</a> </li>
								<li> <a class="dropdown-item" href="post-single-5.html">Post single review</a> </li>
								<li> <a class="dropdown-item" href="post-single-6.html">Post single video</a> </li>
								<li> <a class="dropdown-item" href="podcast-single.html">Podcast single <span class="badge bg-danger smaller me-1">New</span> </a> </li>
								<li class="dropdown-divider"></li>
								<li> <a class="dropdown-item" href="pagination-styles.html">Pagination styles</a> </li>
							</ul>
						</li>
	
						<!-- Nav item 4 Mega menu -->
						<li class="nav-item dropdown dropdown-fullwidth">
							<a class="nav-link dropdown-toggle" href="#" id="megaMenu" data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false"> Lifestyle</a>
							<div class="dropdown-menu" aria-labelledby="megaMenu">
								<div class="container">
									<div class="row g-4 p-3 flex-fill">
										<!-- Card item START -->
										<div class="col-sm-6 col-lg-3">
											<div class="card bg-transparent">
												<!-- Card img -->
												<img class="card-img rounded" src="assets/images/blog/16by9/small/01.jpg" alt="Card image">
												<div class="card-body px-0 pt-3">
													<h6 class="card-title mb-0"><a href="post-single-2.html" class="btn-link text-reset fw-bold">7 common mistakes everyone makes while traveling</a></h6>
													<!-- Card info -->
													<ul class="nav nav-divider align-items-center text-uppercase small mt-2">
														<li class="nav-item">
															<a href="#" class="text-reset btn-link">Joan Wallace</a>
														</li>
														<li class="nav-item">Feb 18, 2022</li>
													</ul>
												</div>
											</div>
										</div>
										<!-- Card item END -->
										<!-- Card item START -->
										<div class="col-sm-6 col-lg-3">
											<div class="card bg-transparent">
												<!-- Card img -->
												<img class="card-img rounded" src="assets/images/blog/16by9/small/02.jpg" alt="Card image">
												<div class="card-body px-0 pt-3">
													<h6 class="card-title mb-0"><a href="post-single-2.html" class="btn-link text-reset fw-bold">12 worst types of business accounts you follow on Twitter</a></h6>
													<!-- Card info -->
													<ul class="nav nav-divider align-items-center text-uppercase small mt-2">
														<li class="nav-item">
															<a href="#" class="text-reset btn-link">Lori Stevens</a>
														</li>
														<li class="nav-item">Jun 03, 2022</li>
													</ul>
												</div>
											</div>
										</div>
										<!-- Card item END -->
										<!-- Card item START -->
										<div class="col-sm-6 col-lg-3">
											<div class="card bg-transparent">
												<!-- Card img -->
												<img class="card-img rounded" src="assets/images/blog/16by9/small/03.jpg" alt="Card image">
												<div class="card-body px-0 pt-3">
													<h6 class="card-title mb-0"><a href="post-single-2.html" class="btn-link text-reset fw-bold">Skills that you can learn from business</a></h6>
													<!-- Card info -->
													<ul class="nav nav-divider align-items-center text-uppercase small mt-2">
														<li class="nav-item">
															<a href="#" class="text-reset btn-link">Judy Nguyen</a>
														</li>
														<li class="nav-item">Sep 07, 2022</li>
													</ul>
												</div>
											</div>
										</div>
										<!-- Card item END -->
										<!-- Card item START -->
										<div class="col-sm-6 col-lg-3">
											<div class="bg-primary-soft p-4 text-center h-100 w-100 rounded">
												<span>The Blogzine</span>
												<h3>Premium Membership</h3>
												<p>Become a Member Today!</p>
												<a href="#" class="btn btn-warning">View pricing plans</a>
											</div>
										</div>
										<!-- Card item END -->
									</div> <!-- Row END -->
									<!-- Trending tags -->
									<div class="row px-3">
										<div class="col-12">
											<ul class="list-inline mt-3">
												<li class="list-inline-item">Trending tags:</li>
												<li class="list-inline-item"><a href="#" class="btn btn-sm btn-primary-soft">Travel</a></li>
												<li class="list-inline-item"><a href="#" class="btn btn-sm btn-warning-soft">Business</a></li>
												<li class="list-inline-item"><a href="#" class="btn btn-sm btn-success-soft">Tech</a></li>
												<li class="list-inline-item"><a href="#" class="btn btn-sm btn-danger-soft">Gadgets</a></li>
												<li class="list-inline-item"><a href="#" class="btn btn-sm btn-info-soft">Lifestyle</a></li>
												<li class="list-inline-item"><a href="#" class="btn btn-sm btn-primary-soft">Vaccine</a></li>
												<li class="list-inline-item"><a href="#" class="btn btn-sm btn-success-soft">Sports</a></li>
												<li class="list-inline-item"><a href="#" class="btn btn-sm btn-danger-soft">Covid-19</a></li>
												<li class="list-inline-item"><a href="#" class="btn btn-sm btn-info-soft">Politics</a></li>
											</ul>
										</div>
									</div> <!-- Row END -->
								</div>
							</div>
						</li>
	
						<!-- Nav item 5 link-->
						<li class="nav-item"> <a class="nav-link" href="dashboard.html">Dashboard</a></li>
					</ul>
				</div>
				<!-- Main navbar END -->
	
				<!-- Nav right START -->
				<div class="nav ms-sm-3 flex-nowrap align-items-center">
					<!-- Dark mode switch -->
					<div class="nav-item">
						<div class="modeswitch" id="darkModeSwitch">
							<div class="switch"></div>
						</div>
					</div>
					<!-- Nav additional link -->
					<div class="nav-item dropdown dropdown-toggle-icon-none">
						<a class="nav-link dropdown-toggle" role="button" href="#" id="navAdditionalLink" data-bs-toggle="dropdown" aria-expanded="false">
							<i class="bi bi-three-dots fs-4"></i>
						</a>
						<ul class="dropdown-menu dropdown-menu-end min-w-auto shadow rounded text-end" aria-labelledby="navAdditionalLink">
							<li><a class="dropdown-item fw-normal" href="#">About</a></li>
							<li><a class="dropdown-item fw-normal" href="#">Newsletter</a></li>
							<li><a class="dropdown-item fw-normal" href="#">Author</a></li>
							<li><a class="dropdown-item fw-normal" href="#">#Tags</a></li>
							<li><a class="dropdown-item fw-normal" href="#">Contact</a></li>
							<li><a class="dropdown-item fw-normal" href="#"><span class="badge bg-danger me-2 align-middle">2 Job</span>Careers</a></li>
						</ul>
					</div>
					<!-- Nav Button -->
					<div class="nav-item d-none d-md-block">
						<a href="#" class="btn btn-sm btn-danger mb-0 mx-2">Subscribe!</a>
					</div>
					<!-- Nav Search -->
					<div class="nav-item dropdown nav-search dropdown-toggle-icon-none">
						<a class="nav-link pe-0 dropdown-toggle" role="button" href="#" id="navSearch" data-bs-toggle="dropdown" aria-expanded="false">
							<i class="bi bi-search fs-4"> </i>
						</a>
						<div class="dropdown-menu dropdown-menu-end shadow rounded p-2" aria-labelledby="navSearch">
						  <form class="input-group">
						    <input class="form-control border-success" type="search" placeholder="Search" aria-label="Search">
						    <button class="btn btn-success m-0" type="submit">Search</button>
						  </form>
						</div>
					</div>
				</div>
				<!-- Nav right END -->
			</div>
		</nav>
		<!-- Logo Nav END -->
	</header>
	<!-- =======================
	Header END -->
	
	<!-- **************** MAIN CONTENT START **************** -->
	<main>
	
	<!-- =======================
	Inner intro START -->
	<section>
		<div class="container">
			<div class="row">
	      <div class="col-md-10 col-lg-8 col-xl-6 mx-auto">
	        <div class="p-4 p-sm-5 bg-primary-soft rounded">
						<h2>Log in to your account</h2>
						<!-- Form START -->
						<form class="mt-4" action="/portfolio/login" method="post">
							<!-- Email -->
							<div class="mb-3">
								<label class="form-label" for="exampleInputEmail1">ID</label>
								<input type="text" class="form-control" id="exampleInputEmail1" placeholder="id" name="memberId">
							</div>
							<!-- Password -->
							<div class="mb-3">
								<label class="form-label" for="exampleInputPassword1">Password</label>
								<input type="password" class="form-control" id="exampleInputPassword1" placeholder="*********" name="memberPw">
							</div>
							<!-- Checkbox -->
							<div class="mb-3 form-check">
								<input type="checkbox" class="form-check-input" id="exampleCheck1">
								<label class="form-check-label" for="exampleCheck1">keep me signed in</label>
							</div>
							<!-- Button -->
							<div class="row align-items-center">
								<div class="col-sm-4">
									<button type="submit" class="btn btn-success">Sign me in</button>
								</div>
								<div class="col-sm-8 text-sm-end">
									<span>Don't have an account? <a href="signup.html"><u>Sign up</u></a></span>
								</div>
							</div>
						</form>
						<!-- Form END -->
						<hr>
						<!-- Social-media btn -->
						<div class="text-center">
							<p>Sign in with your social network for quick access</p>
							<ul class="list-unstyled d-sm-flex mt-3 justify-content-center">
								<li class="mx-2">
									<a href="#" class="btn bg-facebook d-inline-block"><i class="fab fa-facebook-f me-2"></i> Sign in with Facebook</a>
								</li>
								<li class="mx-2">
									<a href="#" class="btn bg-google d-inline-block"><i class="fab fa-google me-2"></i> Sign in with google</a>
								</li>
							</ul>
						</div>
	        </div>
	      </div>
	    </div>
		</div>
	</section>
	<!-- =======================
	Inner intro END -->
	
	</main>
	<!-- **************** MAIN CONTENT END **************** -->
	
	<!-- =======================
	Footer START -->
	<footer class="pb-0">
		<div class="container">
			<hr>
			<!-- Widgets START -->
			<div class="row pt-5">
				<!-- Footer Widget -->
				<div class="col-md-6 col-lg-4 mb-4">
					<img class="light-mode-item" src="assets/images/logo.svg" alt="logo">			
					<img class="dark-mode-item" src="assets/images/logo-light.svg" alt="logo">
					<p class="mt-3">The next-generation blog, news, and magazine theme for you to start sharing your stories today! This Bootstrap 5 based theme is ideal for all types of sites that deliver the news.</p>
					<div class="mt-4">©2022 <a href="https://www.webestica.com/" class="text-reset btn-link" target="_blank">Webestica</a>. All rights reserved
					</div>
				</div>
	
				<!-- Footer Widget -->
				<div class="col-md-6 col-lg-3 mb-4">
					<h5 class="mb-4">Navigation</h5>
					<div class="row">
						<div class="col-6">
							<ul class="nav flex-column">
								<li class="nav-item"><a class="nav-link pt-0" href="#">Features</a></li>
								<li class="nav-item"><a class="nav-link" href="#">Style Guide</a></li>
								<li class="nav-item"><a class="nav-link" href="#">Contact us</a></li>
								<li class="nav-item"><a class="nav-link" href="#">Get Theme</a></li>
								<li class="nav-item"><a class="nav-link" href="#">Support</a></li>
							</ul>
						</div>
	 					<div class="col-6">
							<ul class="nav flex-column">
								<li class="nav-item"><a class="nav-link pt-0" href="#">News</a></li>
								<li class="nav-item"><a class="nav-link" href="#">Career <span class="badge bg-danger ms-2">2 Job</span></a></li>
								<li class="nav-item"><a class="nav-link" href="#">Technology</a></li>
								<li class="nav-item"><a class="nav-link" href="#">Startups</a></li>
								<li class="nav-item"><a class="nav-link" href="#">Gadgets</a></li>
							</ul>
						</div>
					</div>
				</div>
	
				<!-- Footer Widget -->
				<div class="col-sm-6 col-lg-3 mb-4">
					<h5 class="mb-4">Browse by Tag</h5>
					<ul class="list-inline">
						<li class="list-inline-item"><a href="#" class="btn btn-sm btn-primary-soft">Travel</a></li>
						<li class="list-inline-item"><a href="#" class="btn btn-sm btn-warning-soft">Business</a></li>
						<li class="list-inline-item"><a href="#" class="btn btn-sm btn-success-soft">Tech</a></li>
						<li class="list-inline-item"><a href="#" class="btn btn-sm btn-danger-soft">Gadgets</a></li>
						<li class="list-inline-item"><a href="#" class="btn btn-sm btn-info-soft">Lifestyle</a></li>
						<li class="list-inline-item"><a href="#" class="btn btn-sm btn-primary-soft">Vaccine</a></li>
						<li class="list-inline-item"><a href="#" class="btn btn-sm btn-warning-soft">Marketing</a></li>
						<li class="list-inline-item"><a href="#" class="btn btn-sm btn-success-soft">Sports</a></li>
						<li class="list-inline-item"><a href="#" class="btn btn-sm btn-danger-soft">Covid-19</a></li>
						<li class="list-inline-item"><a href="#" class="btn btn-sm btn-info-soft">Politics</a></li>
					</ul>
				</div>
	
				<!-- Footer Widget -->
				<div class="col-sm-6 col-lg-2 mb-4">
					<h5 class="mb-4">Our Social handles</h5>
					<ul class="nav flex-column">
						<li class="nav-item"><a class="nav-link pt-0" href="#"><i class="fab fa-facebook-square fa-fw me-2 text-facebook"></i>Facebook</a></li>
						<li class="nav-item"><a class="nav-link" href="#"><i class="fab fa-twitter-square fa-fw me-2 text-twitter"></i>Twitter</a></li>
						<li class="nav-item"><a class="nav-link" href="#"><i class="fab fa-linkedin fa-fw me-2 text-linkedin"></i>Linkedin</a></li>
						<li class="nav-item"><a class="nav-link" href="#"><i class="fab fa-youtube-square fa-fw me-2 text-youtube"></i>YouTube</a></li>
					</ul>
				</div>
			</div>
			<!-- Widgets END -->
		</div>
	</footer>
	<!-- =======================
	Footer END -->
	
	<!-- Back to top -->
	<div class="back-top"><i class="bi bi-arrow-up-short"></i></div>
	
	<!-- =======================
	JS libraries, plugins and custom scripts -->
	
	<!-- Bootstrap JS -->
	<script src="assets/vendor/bootstrap/dist/js/bootstrap.bundle.min.js"></script>
	
	<!-- Template Functions -->
	<script src="assets/js/functions.js"></script>
	
	</body>
</html>