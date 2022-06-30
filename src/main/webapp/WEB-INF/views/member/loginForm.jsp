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
									<span>Don't have an account? <a href="/portfolio/memberForm"><u>Sign up</u></a></span>
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
	
	<!-- Back to top -->
	<div class="back-top"><i class="bi bi-arrow-up-short"></i></div>
	
	<!-- =======================
	JS libraries, plugins and custom scripts -->
	
	<!-- Bootstrap JS -->
	<script src="resources/vendor/bootstrap/dist/js/bootstrap.bundle.min.js"></script>
	
	<!-- Template Functions -->
	<script src="resources/js/functions.js"></script>
	
	</body>
</html>