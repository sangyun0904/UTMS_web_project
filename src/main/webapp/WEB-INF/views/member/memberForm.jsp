<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="contextPath"  value="${pageContext.request.contextPath}"  />
<!DOCTYPE html >
<html>
<head>
<meta charset="utf-8">

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


<script>

	$().ready(function() {
	
		$("#select_email").change(function(){
			$("#email2").val($("#select_email option:selected").val());
		});
		
		$("#btnOverlapped").click(function(){
			
		    var memberId = $("#memberId").val();
		   
		    if (memberId == ''){
		   		alert("ID를 입력하세요");
		   		return;
		    }
		   
		    $.ajax({
		       type : "get",
		       url  : "${contextPath}/member/overlapped",
		       data : {"memberId" : memberId},
		       success : function (data){
		          if (data == 'false'){
					  alert("사용할 수 있는 ID입니다.");
		          }
		          else {
		          	  alert("사용할 수 없는 ID입니다.");
		          }
		       }
		    });
		    
		 });	
		
	});
</script>
<style>
	td:first-child {
		text-align: center;
		font-weight: bold;
	}
</style>
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
        <div class="bg-primary-soft rounded p-4 p-sm-5">
					<h2>Create your free account </h2>
					<!-- Form START -->
					<form class="mt-4" action="/memberForm" method="post">
						<!-- Email -->
						<div class="mb-3">
							<label class="form-label" for="exampleInputEmail1">Email address</label>
							<input type="email" class="form-control" id="exampleInputEmail1" name="memberId"  aria-describedby="emailHelp" placeholder="E-mail"><br>
			                    <input class="custom-control-input" id="emailstsYn" type="checkbox" name="emailstsYn"  value="Y" checked/>
			                    <label for="emailstsYn">BMS에서 발송하는 E-mail을 수신합니다.</label>
						</div>
						<!-- User name -->
						<div class="mb-3">
							<label class="form-label" for="exampleInputPassword2">이름</label>
							<input type="text" class="form-control"  id="memberName" name="memberName"  maxlength="15" placeholder="이름을 입력하세요." >
						</div>							
						<!-- Password -->
						<div class="mb-3">
							<label class="form-label" for="exampleInputPassword1">비밀번호</label>
							<input type="password" class="form-control" id="exampleInputPassword1" placeholder="*********" name="memberPw">
						</div>
						<!-- Password -->
						<div class="mb-3">
							<label class="form-label" for="exampleInputPassword2">비밀번호 확인</label>
							<input type="password" class="form-control" id="exampleInputPassword2" placeholder="*********">
						</div>					
						<div class="mb-3">								
				        	<label class="small mb-1" for="memberBirthY">생년월일</label>
			                <select class="form-control" id="memberBirthY" name="memberBirthY" style="display:inline; width:70px; padding:0" >
							<c:forEach var="year" begin="1" end="100">
								<c:choose>
									<c:when test="${year==80}">
										<option value="${1921+year}" selected>${ 1921+year}</option>
									</c:when>
									<c:otherwise>
										<option value="${1921+year}">${ 1921+year}</option>
									</c:otherwise>
								</c:choose>
							</c:forEach>
							</select> 년 
							<select class="form-control" name="memberBirthM" style="display:inline; width:50px; padding:0">
							  <c:forEach var="month" begin="1" end="12">
							    <c:choose>
							        <c:when test="${month==5}">
									   <option value="${month}" selected>${month }</option>
									</c:when>
									<c:otherwise>
									  <option value="${month}">${month}</option>
									</c:otherwise>
								</c:choose>
							  </c:forEach>
							</select> 월  
							<select class="form-control" name="memberBirthD" style="display:inline; width:50px; padding:0">
							<c:forEach var="day" begin="1" end="31">
							   <c:choose>
								    <c:when test="${day==10}">
									   <option value="${day}" selected>${day}</option>
									</c:when>
									<c:otherwise>
									  <option value="${day}">${day}</option>
									</c:otherwise>
								</c:choose>
							 </c:forEach>
							</select> 일 &nbsp;
							<div class="custom-control custom-radio" style="display:inline;">
								<input class="custom-control-input" type="radio" id="memberBirthGn2" name="memberBirthGn" value="2" checked />
								<label class="custom-control-label" for="memberBirthGn2">양력</label>
							</div>  
							<div class="custom-control custom-radio" style="display:inline;">
								<input class="custom-control-input" type="radio" id="memberBirthGn1" name="memberBirthGn" value="1" />
								<label class="custom-control-label" for="memberBirthGn1">음력</label>
				            </div>  
			        </div>                                             
			        <div class="mb-3">
				        	<label class="small mb-1" for="hp1">핸드폰 번호</label>
				        	<select class="form-control" id="hp1" name="hp1" style="display:inline; width:70px; padding:0">
								<option>없음</option>
								<option selected value="010">010</option>
								<option value="011">011</option>
								<option value="016">016</option>
								<option value="017">017</option>
								<option value="018">018</option>
								<option value="019">019</option>
							</select> - 
							<input class="form-control"  size="10px"  type="text" name="hp2" style="display:inline; width:100px; padding:0"> - 
							<input class="form-control"  size="10px"  type="text"name="hp3" style="display:inline; width:100px; padding:0"><br><br>
							<input class="custom-control-input" id="smsstsYn" type="checkbox" name="smsstsYn"  value="Y" checked/>
			                <label for="smsstsYn" >BMS에서 발송하는 SMS 소식을 수신합니다.</label>
			        </div>                                                                               			
						<!-- Checkbox -->
						<div class="mb-3 form-check">
							<input type="checkbox" class="form-check-input" id="exampleCheck1">
							<label class="form-check-label" for="exampleCheck1">Yes i'd also like to sign up for additional subscription</label>
						</div>
						<!-- Button -->
						<div class="row align-items-center">
							<div class="col-sm-4">
								<button type="submit" class="btn btn-success">Sign me up</button>
							</div>
							<div class="col-sm-8 text-sm-end">
								<span>Have an account? <a href="signin.html"><u>Sign in</u></a></span>
							</div>
						</div>
					</form>
					<!-- Form END -->
					<hr>
					<!-- Social-media btn -->
					<div class="text-center">
						<p>Sign up with your social network for quick access</p>
						<ul class="list-unstyled d-sm-flex mt-3 justify-content-center">
							<li class="mx-2">
								<a href="#" class="btn bg-facebook d-inline-block"><i class="fab fa-facebook-f me-2"></i> Sign up with Facebook</a>
							</li>
							<li class="mx-2">
								<a href="#" class="btn bg-google d-inline-block"><i class="fab fa-google me-2"></i> Sign up with google</a>
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