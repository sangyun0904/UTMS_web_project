<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
	<title>Upload new product</title>

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
	<link rel="stylesheet" type="text/css" href="resources/vendor/apexcharts/css/apexcharts.css">
    <link rel="stylesheet" type="text/css" href="resources/vendor/quill/css/quill.snow.css">

	<!-- Theme CSS -->
	<link id="style-switch" rel="stylesheet" type="text/css" href="resources/css/style.css">
	
</head>

<body>

<!-- =======================
Header START -->
<header class="navbar-light navbar-sticky header-static border-bottom navbar-dashboard">
	<!-- Logo Nav START -->
	<nav class="navbar navbar-expand-xl">
		<div class="container">
			<!-- Logo START -->
			<a class="navbar-brand me-3" href="index.html">
				<img class="navbar-brand-item light-mode-item" src="resources/images/logo.svg" alt="logo">			
				<img class="navbar-brand-item dark-mode-item" src="resources/images/logo-light.svg" alt="logo">			
			</a>
			<!-- Logo END -->

			<!-- Responsive navbar toggler -->
			<button class="navbar-toggler ms-auto" type="button" data-bs-toggle="collapse" data-bs-target="#navbarCollapse" aria-controls="navbarCollapse" aria-expanded="false" aria-label="Toggle navigation">
				<span class="text-body h6 d-none d-sm-inline-block">Menu</span>
				<span class="navbar-toggler-icon"></span>
			</button>

			<!-- Main navbar START -->
			<div class="collapse navbar-collapse" id="navbarCollapse">
				<ul class="navbar-nav navbar-nav-scroll mx-auto">

					<!-- Nav item 1 Demos -->
					<li class="nav-item"><a class="nav-link" href="dashboard.html"><i class="bi bi-house-door me-1"></i>Dashboard</a></li>

					<!-- Nav item 2 Post -->
					<li class="nav-item dropdown">
						<a class="nav-link dropdown-toggle" href="#" id="postMenu" data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><i class="bi bi-pencil me-1"></i>Post</a>
						<ul class="dropdown-menu" aria-labelledby="postMenu">
							<!-- dropdown submenu -->
							<li> <a class="dropdown-item" href="dashboard-post-list.html">Post List</a> </li>
							<li> <a class="dropdown-item" href="dashboard-post-categories.html">Post Categories</a> </li>
							<li> <a class="dropdown-item" href="dashboard-post-create.html">Create a Post</a> </li>
							<li> <a class="dropdown-item" href="dashboard-post-edit.html">Edit Post</a> </li>
						</ul>
					</li>

					<!-- Nav item 3 Pages -->
					<li class="nav-item dropdown">
						<a class="nav-link dropdown-toggle" href="#" id="pagesMenu" data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><i class="bi bi-folder me-1"></i>Pages</a>
						<ul class="dropdown-menu" aria-labelledby="pagesMenu">
							<li> <a class="dropdown-item" href="dashboard-author-list.html">Author List</a></li>
							<li> <a class="dropdown-item" href="dashboard-author-single.html">Author Single</a></li>
							<li> <a class="dropdown-item" href="dashboard-edit-profile.html">Edit Profile</a></li>
							<li> <a class="dropdown-item" href="dashboard-reviews.html">Reviews</a></li>
							<li> <a class="dropdown-item" href="dashboard-settings.html">Settings</a></li>
							<li class="dropdown-divider"></li>
							<li> <a class="dropdown-item" href="https://support.webestica.com/" target="_blank"> <i class="text-warning fa-fw bi bi-life-preserver me-2"></i>Support</a></li>
							<li> <a class="dropdown-item" href="docs/index.html" target="_blank"> <i class="text-danger fa-fw bi bi-card-text me-2"></i>Documentation</a></li>
							<li class="dropdown-divider"></li>
							<li><a class="dropdown-item" href="https://blogzine.webestica.com/rtl" target="_blank"> <i class="text-info fa-fw bi bi-toggle-off me-2"></i>RTL demo</a></li>
							<li><a class="dropdown-item" href="https://themes.getbootstrap.com/store/webestica/" target="_blank"> <i class="text-success fa-fw bi bi-cloud-download-fill me-2"></i>Buy blogzine!</a> </li>
						</ul>
					</li>
				</ul>
				
				<!-- Search dropdown START -->
				<div class="nav my-3 my-xl-0 px-4 px-lg-1 flex-nowrap align-items-center">
					<div class="nav-item w-100">
						<form class="position-relative">
							<input class="form-control pe-5 bg-transparent" type="search" placeholder="Search" aria-label="Search">
							<button class="btn bg-transparent px-2 py-0 position-absolute top-50 end-0 translate-middle-y" type="submit"><i class="fas fa-search fs-6 "></i></button>
						</form>
					</div>
				</div>
				<!-- Search dropdown END -->
			</div>
		  <!-- Main navbar END -->

			<!-- Nav right START -->
			<div class="nav flex-nowrap align-items-center">

				<!-- Notification dropdown START -->
				<div class="nav-item ms-2 ms-md-3 dropdown">
					<!-- Notification button -->
					<a class="btn btn-primary-soft btn-round mb-0" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false" data-bs-auto-close="outside">
						<i class="bi bi-bell fa-fw"></i>
					</a>
					<!-- Notification dote -->
					<span class="notif-badge animation-blink"></span>

					<!-- Notification dropdown menu START -->
					<div class="dropdown-menu dropdown-animation dropdown-menu-end dropdown-menu-size-md p-0 shadow-lg border-0">
						<div class="card bg-transparent">
							<div class="card-header bg-transparent border-bottom p-3 d-flex justify-content-between align-items-center">
								<h6 class="m-0">Notifications <span class="badge bg-danger bg-opacity-10 text-danger ms-2">2 new</span></h6>
								<a class="small" href="#">Clear all</a>
							</div>
							<div class="card-body p-0">
								<ul class="list-group list-unstyled list-group-flush">
									<!-- Notif item -->
									<li>
										<a href="#" class="list-group-item-action border-0 border-bottom d-flex p-3">
											<div class="me-3">
												<div class="avatar avatar-sm">
													<img class="avatar-img rounded-circle" src="resources/images/avatar/08.jpg" alt="avatar">
												</div>
											</div>
											<div>
                        <h6 class="mb-1">12 new members joined</h6>
												<span class="small"> <i class="bi bi-clock"></i> 3 min ago</span>
											</div>
										</a>
									</li>

									<!-- Notif item -->
									<li>
										<a href="#" class="list-group-item-action border-0 border-bottom d-flex p-3">
											<div class="me-3">
												<div class="avatar avatar-sm">
													<img class="avatar-img rounded-circle" src="resources/images/avatar/02.jpg" alt="avatar">
												</div>
											</div>
											<div>
												<h6 class="mb-1">Larry Lawson deleted account</h6>
												<span class="small"> <i class="bi bi-clock"></i> 6 min ago</span>
											</div>
										</a>
									</li>

									<!-- Notif item -->
									<li>
										<a href="#" class="list-group-item-action border-0 border-bottom d-flex p-3">
											<div class="me-3">
												<div class="avatar avatar-sm">
													<img class="avatar-img rounded-circle" src="resources/images/avatar/05.jpg" alt="avatar">
												</div>
											</div>
											<div>
												<h6 class="mb-1">Byan commented on your post</h6>
												<span class="small"> <i class="bi bi-clock"></i> 10 min ago</span>
											</div>
										</a>
									</li>

									<!-- Notif item -->
									<li>
										<a href="#" class="list-group-item-action border-0 border-bottom d-flex p-3">
											<div class="me-3">
												<div class="avatar avatar-sm">
													<img class="avatar-img rounded-circle" src="resources/images/avatar/03.jpg" alt="avatar">
												</div>
											</div>
											<div>
												<h6 class="mb-1">Settings updated</h6>
												<span class="small"> <i class="bi bi-clock"></i> Yesterday</span>
											</div>
										</a>
									</li>
								</ul>
							</div>
							<!-- Button -->
							<div class="card-footer bg-transparent border-0 py-3 text-center position-relative">
								<a href="#" class="stretched-link">See all incoming activity</a>
							</div>
						</div>
					</div>
					<!-- Notification dropdown menu END -->
				</div>
				<!-- Notification dropdown END -->

				<!-- Profile dropdown START -->
				<div class="nav-item ms-2 ms-md-3 dropdown">
					<!-- Avatar -->
					<a class="avatar avatar-sm p-0" href="#" id="profileDropdown" role="button" data-bs-auto-close="outside" data-bs-display="static" data-bs-toggle="dropdown" aria-expanded="false">
						<img class="avatar-img rounded-circle" src="resources/images/avatar/03.jpg" alt="avatar">
					</a>

					<!-- Profile dropdown START -->
					<ul class="dropdown-menu dropdown-animation dropdown-menu-end shadow pt-3" aria-labelledby="profileDropdown">
						<!-- Profile info -->
						<li class="px-3">
							<div class="d-flex align-items-center">
								<!-- Avatar -->
								<div class="avatar me-3">
									<img class="avatar-img rounded-circle shadow" src="resources/images/avatar/03.jpg" alt="avatar">
								</div>
								<div>
									<a class="h6 mt-2 mt-sm-0" href="#"> Louis Ferguson</a>
									<p class="small m-0">example@gmail.com</p>
								</div>
							</div>
							<hr>
						</li>
						<!-- Links -->
						<li><a class="dropdown-item" href="#"><i class="bi bi-person fa-fw me-2"></i>Edit Profile</a></li>
						<li><a class="dropdown-item" href="#"><i class="bi bi-gear fa-fw me-2"></i>Account Settings</a></li>
						<li><a class="dropdown-item" href="#"><i class="bi bi-info-circle fa-fw me-2"></i>Help</a></li>
						<li><a class="dropdown-item bg-danger-soft-hover" href="#"><i class="bi bi-power fa-fw me-2"></i>Sign Out</a></li>
						<li class="dropdown-divider mb-3"></li>
						<li>
							<div class="dropdown-item">
								<div class="modeswitch m-0" id="darkModeSwitch">
									<div class="switch"></div>
								</div>
							</div>
						</li>
					</ul>
					<!-- Profile dropdown END -->
				</div>
				<!-- Profile dropdown END -->

			<!-- Nav right END -->
			</div>
		</div>
	</nav>
	<!-- Logo Nav END -->
</header>
<!-- =======================
Header END -->

<!-- **************** MAIN CONTENT START **************** -->
<main>

<!-- =======================
Main contain START -->
<section class="py-4">
	<div class="container">
    <div class="row pb-4">
			<div class="col-12">
        <!-- Title -->
					<h1 class="mb-0 h2">Create a post</h1>
			</div>
		</div>
		<div class="row">
			<div class="col-12">
				<!-- Chart START -->
				<div class="card border">
					<!-- Card body -->
					<div class="card-body">
            <!-- Form START -->
            <form action="/uploadProduct" method="post" enctype="multipart/form-data">
              <!-- Main form -->
              <div class="row">
                <div class="col-12">
                  <!-- Post name -->
                  <div class="mb-3">
                    <label class="form-label">Product name</label>
                    <input required id="con-name" name="productName" type="text" class="form-control" placeholder="Product name">
                  </div>
                </div>
                <!-- Post type START -->
                <div class="col-12">
                  <div class="mb-3">
                    <label class="form-label">Post Category</label>
                    <div class="d-flex flex-wrap gap-3">
                      <!-- Post type item -->
                      <div class="flex-fill">
                        <input type="radio" class="btn-check" name="productSort" id="option" value="house" checked>
                        <label class="btn btn-outline-light w-100" for="option">
                          <i class="bi bi-chat-left-text fs-1"></i>
                          <span class="d-block"> 가전/가구/인테리어 </span>
                        </label>
                      </div>
                      <!-- Post type item -->
                      <div class="flex-fill">
                        <input type="radio" class="btn-check" name="productSort" id="option2" value="sports">
                        <label class="btn btn-outline-light w-100" for="option2">
                            <i class="bi bi-patch-question fs-1"></i>
                          <span class="d-block"> 스포츠/레저 </span>
                        </label>
                      </div>
                      <!-- Post type item -->
                      <div class="flex-fill">
                        <input type="radio" class="btn-check" name="productSort" id="option3" value="fashion">
                        <label class="btn btn-outline-light w-100" for="option3">
                          <i class="bi bi-chat-right-dots fs-1"></i>
                          <span class="d-block"> 여성의류/남성패션/잡화 </span>
                        </label>
                      </div>
                      <!-- Post type item -->
                      <div class="flex-fill">
                        <input type="radio" class="btn-check" name="productSort" id="option4" value="beauty">
                        <label class="btn btn-outline-light w-100" for="option4">
                          <i class="bi bi-ui-checks-grid fs-1"></i>
                          <span class="d-block"> 뷰티/미용 </span>
                        </label>
                      </div>
                      <!-- Post type item -->
                      <div class="flex-fill">
                        <input type="radio" class="btn-check" name="productSort" id="option5" value="life">
                        <label class="btn btn-outline-light w-100" for="option5">
                          <i class="bi bi-camera-reels fs-1"></i>
                          <span class="d-block"> 도서/티켓/음반 </span>
                        </label>
                      </div>
                      <!-- Post type item -->
                      <div class="flex-fill">
                        <input type="radio" class="btn-check" name="productSort" id="option6" value="babies">
                        <label class="btn btn-outline-light w-100" for="option6">
                          <i class="bi bi-chat-square fs-1"></i>
                          <span class="d-block"> 유아용품 </span>
                        </label>
                      </div>
                      <!-- Post type item -->
                      <div class="flex-fill">
                        <input type="radio" class="btn-check" name="productSort" id="option7" value="others">
                        <label class="btn btn-outline-light w-100" for="option7">
                          <i class="bi bi-chat-square fs-1"></i>
                          <span class="d-block"> 기타 </span>
                        </label>
                      </div>
                    <!-- Post type item -->
                  </div>
                </div>
              </div>
              <!-- Post type END -->
              
              <!-- Short description -->
              <div class="col-12">
                <div class="mb-3">
                    <label class="form-label">상품 설명 </label>
                    <textarea class="form-control" rows="3" placeholder="Add description" name="productDesc"></textarea>
                </div>
              </div>

              <!-- Main toolbar -->
                <div class="col-md-12">
                  <!-- Subject -->
                  <div class="mb-3">
                    <label class="form-label">상품 설명</label>
                    <!-- Editor toolbar -->
                      <div class="bg-light border border-bottom-0 rounded-top py-3" id="quilltoolbar">
                        <span class="ql-formats">
                          <select class="ql-size"></select>
                        </span>
                        <span class="ql-formats">
                          <button class="ql-bold"></button>
                          <button class="ql-italic"></button>
                          <button class="ql-underline"></button>
                          <button class="ql-strike"></button>
                        </span>
                        <span class="ql-formats">
                          <select class="ql-color"></select>
                          <select class="ql-background"></select>
                        </span>
                        <span class="ql-formats">
                          <button class="ql-code-block"></button>
                        </span>
                        <span class="ql-formats">
                          <button class="ql-list" value="ordered"></button>
                          <button class="ql-list" value="bullet"></button>
                          <button class="ql-indent" value="-1"></button>
                          <button class="ql-indent" value="+1"></button>
                        </span>
                        <span class="ql-formats">
                          <button class="ql-link"></button>
                          <button class="ql-image"></button>
                        </span>
                        <span class="ql-formats">
                          <button class="ql-clean"></button>
                        </span>
                      </div>
                      <!-- Main toolbar -->
                      <div class="bg-body border rounded-bottom h-300 overflow-hidden" id="quilleditor">
                      </div>
                    </div>	
                </div>
                <div class="col-12">
                  <!-- Post name -->
                  <div class="mb-3">
                    <label class="form-label">상품 가격</label>&emsp;
                    <input required id="con-name" name="productPrice" type="text" placeholder="0" style="text-align: right; padding-right: 5px;"> ₩
                  </div>
                </div>
                <div class="col-12">
                  <div class="mb-3">
                  <!-- Image -->
                  <div class="position-relative">
                    <h6 class="my-2">Upload post image here, or<a href="#!" class="text-primary"> Browse</a></h6>
                    <label class="w-100" style="cursor:pointer;">
                      <span> 
                        <input class="form-control stretched-link" type="file" name="productImages" id=""productImages"" accept="image/gif, image/jpeg, image/png">
                      </span>
                    </label>
                  </div>
                  <p class="small mb-0 mt-2"><b>Note:</b> Only JPG, JPEG and PNG. Our suggested dimensions are 600px * 450px. Larger image will be cropped to 4:3 to fit our thumbnails/previews.</p>
                  </div>
                </div>
                <!-- Create post button -->
                <div class="col-md-12 text-start">
                  <button class="btn btn-primary w-100" type="submit">판매하기</button>
                </div>
              </div>
            </form>
            <!-- Form END -->
					</div>
				</div>
				<!-- Chart END -->
			</div>
    </div>
	</div>
</section>
<!-- =======================
Main contain END -->

</main>
<!-- **************** MAIN CONTENT END **************** -->

<!-- =======================
Footer START -->
<footer class="mb-3">
  <div class="container">
    <div class="card card-body bg-light">
      <div class="row align-items-center justify-content-between">
        <div class="col-lg-6">
          <!-- Copyright -->
          <div class="text-center text-lg-start">©2022 <a href="https://www.webestica.com/" class="text-reset btn-link" target="_blank">Webestica</a>. All rights reserved
          </div>
        </div>
        <div class="col-lg-6 d-sm-flex align-items-center justify-content-center justify-content-lg-end">
          <!-- Language switcher -->
          <div class="dropup me-0 me-sm-3 mt-3 mt-md-0 text-center text-sm-end">
            <a class="dropdown-toggle text-body" href="#" role="button" id="languageSwitcher" data-bs-toggle="dropdown" aria-expanded="false">
              English Edition
            </a>
            <ul class="dropdown-menu min-w-auto" aria-labelledby="languageSwitcher">
              <li><a class="dropdown-item" href="#">English</a></li>
              <li><a class="dropdown-item" href="#">German </a></li>
              <li><a class="dropdown-item" href="#">French</a></li>
            </ul>
          </div>
          <!-- Links -->
          <ul class="nav text-center text-sm-end justify-content-center justify-content-center mt-3 mt-md-0">
            <li class="nav-item"><a class="nav-link" href="#">Terms</a></li>
            <li class="nav-item"><a class="nav-link" href="#">Privacy</a></li>
            <li class="nav-item"><a class="nav-link pe-0" href="#">Cookies</a></li>
          </ul>
        </div>
      </div>
    </div>
  </div>
</footer>
<!-- =======================
Footer END -->

<!-- Back to top -->
<div class="back-top"><i class="bi bi-arrow-up-short"></i></div>

<!-- =======================
JS libraries, plugins and custom scripts -->

<!-- Bootstrap JS -->
<script src="resources/vendor/bootstrap/dist/js/bootstrap.bundle.min.js"></script>

<!-- Vendors -->
<script src="resources/vendor/apexcharts/js/apexcharts.min.js"></script>
<script src="resources/vendor/quill/js/quill.min.js"></script>

<!-- Template Functions -->
<script src="resources/js/functions.js"></script>

</body>
</html>