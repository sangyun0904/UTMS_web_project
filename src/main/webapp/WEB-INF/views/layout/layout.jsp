<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="contextPath"  value="${pageContext.request.contextPath}" />

<!DOCTYPE html>
<html lang="en">
<head>
	<title><tiles:insertAttribute name="title"/></title>
	<!-- Meta Tags -->
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<meta name="author" content="Webestica.com">
	<meta name="description" content="Bootstrap based News, Magazine and Blog Theme">

	<!-- Favicon -->
	<link rel="shortcut icon" href="${contextPath }/resources/images/favicon.ico">

	<!-- Google Font -->
	<link rel="preconnect" href="https://fonts.gstatic.com">
	<link href="https://fonts.googleapis.com/css2?family=Nunito+Sans:wght@400;700&family=Rubik:wght@400;500;700&display=swap" rel="stylesheet">

	<!-- Plugins CSS -->
	<link rel="stylesheet" type="text/css" href="${contextPath }/resources/vendor/font-awesome/css/all.min.css">
	<link rel="stylesheet" type="text/css" href="${contextPath }/resources/vendor/bootstrap-icons/bootstrap-icons.css">

	<!-- Theme CSS -->
	<link id="style-switch" rel="stylesheet" type="text/css" href="${contextPath }/resources/css/style.css">

</head>

<body>

<!-- =======================
Header START -->
	<tiles:insertAttribute name="header"/>
<!-- =======================
Header END -->

<!-- **************** MAIN CONTENT START **************** -->
	<tiles:insertAttribute name="body"/>
<!-- **************** MAIN CONTENT END **************** -->

<!-- =======================
Footer START -->
	<tiles:insertAttribute name="footer"/>
<!-- =======================
Footer END -->

<!-- Back to top -->
<div class="back-top"><i class="bi bi-arrow-up-short"></i></div>

<!-- =======================
JS libraries, plugins and custom scripts -->

<!-- Bootstrap JS -->
<script src="${contextPath }/resources/vendor/bootstrap/dist/js/bootstrap.bundle.min.js"></script>

<!-- Vendors -->
<script src="${contextPath }/resources/vendor/sticky-js/sticky.min.js"></script>

<!-- Template Functions -->
<script src="${contextPath }/resources/js/functions.js"></script>

</body>
</html>  