<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html class="no-js" lang="ko">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="x-ua-compatible" content="ie=edge">
<title>GREEN CAFE - 새비밀번호 설정</title>
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
						<h1 class="page-width">비밀번호 재설정</h1>
					</div>
				</div>
			</div>
			<!-- ./Page Title -->

			<!-- Reset Password -->
			<div class="container">
				<div class="row">
					<div class="col-12 col-sm-12 col-md-6 col-lg-6 main-col offset-md-3">
						<div class="mb-4">
							<form method="post" action="resetpasswd" id="resetpasswdform">
								<div class="row">
									<div class="col-12 col-sm-12 col-md-12 col-lg-12">
										<div class="form-group">
											<label for="CustomerId">아이디는 "${ founduser.customerId }" 입니다.</label>
										</div>
									</div>
									<div class="col-12 col-sm-12 col-md-12 col-lg-12">
										<div class="form-group">
											<label for="newPassword">새 비밀번호<span style="color: lightgray">(3~20자의 영문 대 소문자, 숫자, 특수문자를 사용 하세요)</span></label>
											<input class="form-control" type="password" name="passwd" placeholder="새로운 비밀번호를 입력하세요"
												   id="newPassword" required
												   minlength="8" maxlength="20" pattern="^(?=.*[A-Za-z])(?=.*\d)(?=.*[$@$!%*#?&])[A-Za-z\d$@$!%*#?&]{8,16}$">
										</div>
									</div>
									<div class="col-12 col-sm-12 col-md-12 col-lg-12">
										<div class="form-group">
											<label for="PasswordCheck">비밀번호 확인</label>
											<input class="form-control" type="password" name="passwdCheck" placeholder="비밀번호를 똑같이 입력해주세요"
												   id="PasswordCheck" required>
											<span id="pwcheck"></span>
										</div>
									</div>
								</div>
								<div class="row">
									<div class="text-center col-12 col-sm-12 col-md-12 col-lg-12">
										<input type="submit" class="btn mb-3" value="비밀번호 변경">
									</div>
								</div>
							</form>
						</div>
					</div>
				</div>
			</div>
			<!-- ./Reset Password -->

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
			$("#PasswordCheck").on("change", function(event) {
				if ($("#newPassword").val() != $("#PasswordCheck").val()) {
					$("#pwcheck").text("비밀번호가 일치하지 않습니다.");
					$("#pwcheck").css("color", "red");
				} else {
					$("#pwcheck").text("비밀번호가 일치합니다.");
					$("#pwcheck").css("color", "blue");
				}
			});
			$('#Password').on("change", function(event) {
				$("#pwcheck").text("");
			});
		});
	</script>
</body>
</html>
