<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
	<title>header</title>
</head>

<body>

	<header>
	<!-- Logo Nav START -->
	<nav class="navbar navbar-expand-lg">
		<div class="container">
			<!-- Logo START -->
			<a class="navbar-brand" href="/">
				<img class="navbar-brand-item light-mode-item" src="resources/images/logo.png" alt="logo">			
				<img class="navbar-brand-item dark-mode-item" src="resources/images/logo-light.svg" alt="logo">			
			</a>
			<!-- Logo END -->

			<!-- Responsive navbar toggler -->
			<button class="navbar-toggler ms-auto" type="button" data-bs-toggle="collapse" data-bs-target="#navbarCollapse" aria-controls="navbarCollapse" aria-expanded="false" aria-label="Toggle navigation">
			  <span class="text-body h6 d-none d-sm-inline-block">Menu</span>
			  <span class="navbar-toggler-icon"></span>
		  </button>

			<!-- Main navbar START -->
		<c:choose>
			<c:when test="${sessionScope.memberId != null}">
				<div class="collapse navbar-collapse" id="navbarCollapse">
					<a href="/logout" class="btn btn-sm btn-danger mb-0 mx-2">logout!</a>
					<!-- Nav item 5 link-->
					<ul class="navbar-nav navbar-nav-scroll ms-auto">
							<li class="nav-item"> <a class="nav-link" href="/uploadProduct">물건 판매하기</a></li>
							<li class="nav-item"> <a class="nav-link" ><c:out value="${sessionScope.memberName}"/> 님</a></li>
					</ul>
					<!-- Avatar -->
					<div class="nav-item ms-2 ms-md-3 dropdown">
						<a class="avatar avatar-sm p-0" href="/profile" id="profileDropdown" role="button" data-bs-auto-close="outside" data-bs-display="static" data-bs-toggle="dropdown" aria-expanded="false">
							<img class="avatar-img rounded-circle" src="resources/images/avatar/03.jpg" alt="avatar">
						</a> &emsp;
					</div>
				</div>
			</c:when>
			<c:otherwise>
				<!-- Nav Button -->
				<div class="collapse navbar-collapse">
					<a href="${contextpath }/loginForm" class="btn btn-sm btn-danger mb-0 mx-2">login!</a>
				</div>
			</c:otherwise>
		</c:choose>
				<!-- Nav Search -->
				<input type="text">
				<div class="nav-item dropdown nav-search dropdown-toggle-icon-none">
					<a class="nav-link pe-0 dropdown-toggle" role="button" href="#" id="navSearch" data-bs-toggle="dropdown" aria-expanded="false">
						<i class="bi bi-search fs-4"> </i>
					</a>
				</div>
			</div>
			<!-- Nav right END -->
	</nav>
	<!-- Logo Nav END -->
	<div align="right" style="margin:10px; padding:5px; background-color: orange">
	<input type="button" value="게시판">
	<input type="button" value="중고거래">
	</div>
</header>
</body>