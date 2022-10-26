<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html class="no-js" lang="ko">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="x-ua-compatible" content="ie=edge">
<title>Green-Coffee</title>
<meta name="description" content="description">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- Common-css -->
<jsp:include page="/WEB-INF/views/modules/common-css.jsp"></jsp:include>
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
											<label for="newPassword">새 비밀번호</label>
											<input type="password" name="passwd" placeholder=""
												   id="newPassword">
										</div>
									</div>
									<div class="col-12 col-sm-12 col-md-12 col-lg-12">
										<div class="form-group">
											<label for="PasswordCheck">비밀번호 확인</label>
											<input type="password" name="passwdCheck" placeholder=""
												   id="PasswordCheck">
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
</body>
</html>
