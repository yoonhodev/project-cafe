<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html class="no-js" lang="ko">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="x-ua-compatible" content="ie=edge">
<title>GREEN CAFE - 로그인</title>
<meta name="description" content="description">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- Common-css -->
<jsp:include page="/WEB-INF/views/modules/common-css.jsp"></jsp:include>
<style>
@font-face {
    font-family: 'neon';
    src: url('../fonts/TmonMonsori.ttf') format('truetype');
}
body {
	font-family: 'neon';
}
h1 {
	font-family: 'neon';
}

	
</style>
</head>
<body class="page-template belle">
	<div class="pageWrapper">
		<!-- Header -->
		<jsp:include page="/WEB-INF/views/modules/header.jsp"></jsp:include>
		<!-- ./Header -->

		<!-- Body Content -->
		<div id="page-content">
			<!-- Page Title -->
			<br> <br> <br> <br>
			<div class="page section-header text-center">
				<div class="page-title">
					<div class="wrapper">
						<h1 class="page-width">로그인</h1>
					</div>
				</div>
			</div>
			<!-- ./Page Title -->

			<!-- Login -->
			<div class="container">
				<div class="row">
					<div class="col-12 col-sm-12 col-md-6 col-lg-6 main-col offset-md-3">
						<div class="mb-4">
							<form method="post" action="login" id="loginform">
								<div class="row">
									<div class="col-12 col-sm-12 col-md-12 col-lg-12">
										<div class="form-group">
											<label for="CustomerId">아이디</label>
											<input class="form-control" type="text" name="customerId" placeholder="아이디를 입력하세요"
												   id="CustomerId" autofocus required minlength="3">
										</div>
									</div>
									<div class="col-12 col-sm-12 col-md-12 col-lg-12">
										<div class="form-group">
											<label for="Password">비밀번호</label>
											<input class="form-control" type="password" name="passwd" placeholder="비밀번호를 입력하세요"
												   id="Password" required>
										</div>
									</div>
								</div>
								<div class="row">
									<div class="text-center col-12 col-sm-12 col-md-12 col-lg-12">
										<input id="loginbtn" type="submit" class="btn mb-3" value="로그인">
										<p class="mb-4">
											<a href="findpasswd" id="RecoverPassword">Forgot your password?</a>
											&nbsp; | &nbsp;
											<a href="register" id="CreateAccount">Create account</a>
										</p>
									</div>
								</div>
							</form>
						</div>
					</div>
				</div>
			</div>
			<!-- ./Login -->

		</div>
		<!-- ./Body Content -->

		<!-- Footer -->
		<jsp:include page="/WEB-INF/views/modules/footer.jsp"></jsp:include>
		<!-- ./Footer -->

		<!-- Scoll Top -->
		<span id="site-scroll"><i class="icon anm anm-angle-up-r"></i></span>
		<!-- ./Scoll Top -->

		<!-- Common-js -->
		<jsp:include page="/WEB-INF/views/modules/common-js.jsp"></jsp:include>
	</div>
	<script src="https://code.jquery.com/jquery-3.6.1.js"></script>
	<script type="text/javascript">
		$(function() {
			var formData = $("#loginform").serialize();
			$.ajax({
				"url": "login",
				"method": "post",
				"data": formData,
				"success": function(data, status, xhr) {
					$('#loginform').load('account/login');
					<c:if test="${ not empty loginfail }">
						alert('로그인 실패 : 아이디와 패스워드를 확인하세요');
		 			</c:if>	
				},
				"error": function(xhr, status, err) {}
			});
		});
	</script>
</body>
</html>
