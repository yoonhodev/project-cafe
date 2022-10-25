<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html class="no-js" lang="ko">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="x-ua-compatible" content="ie=edge">
<title>Create Account</title>
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
						<h1 class="page-width">회원가입</h1>
					</div>
				</div>
			</div>
			<!-- ./Page Title -->
			
			<!-- Create Account -->
			<div class="container">
				<div class="row">
					<div class="col-12 col-sm-12 col-md-6 col-lg-6 main-col offset-md-3">
						<div class="mb-4">
							<form method="post" action="register" id="registerform">
								<div class="row">
									<div class="col-12 col-sm-12 col-md-12 col-lg-12">
										<div class="form-group">
											<label for="CustomerId">아이디</label>
											<input type="text" name="customerId" placeholder=""
												   id="CustomerId" autofocus>
										</div>
									</div>
									<div class="col-12 col-sm-12 col-md-12 col-lg-12">
										<div class="form-group">
											<label for="Password">비밀번호</label>
											<input type="password" name="passwd"
												   placeholder="" id="Password">
										</div>
									</div>
									<div class="col-12 col-sm-12 col-md-12 col-lg-12">
										<div class="form-group">
											<label for="Phone">전화번호</label>
											<input type="text" name="phone"
												   placeholder="" id="Phone">
										</div>
									</div>
									<div class="col-12 col-sm-12 col-md-12 col-lg-12">
										<div class="form-group">
											<label for="Address">주소</label>
											<input type="text" name="address"
												   placeholder="" id="Address">
										</div>
									</div>
									<div class="col-12 col-sm-12 col-md-12 col-lg-12">
										<div class="form-group">
											<label for="Email">이메일</label>
											<input type="email" name="email"
												   placeholder="" id="Email">
										</div>
									</div>
									<div class="col-12 col-sm-12 col-md-12 col-lg-12">
										<div class="form-group">
											<label>성별</label><br>
											<div>&nbsp;
												&nbsp;&nbsp;남&nbsp;&nbsp;
												<input type="radio" name="sex" placeholder="" id="Sex">
												&nbsp;&nbsp;&nbsp;&nbsp;
												&nbsp;&nbsp;여&nbsp;&nbsp;
												<input type="radio" name="sex" placeholder="" id="Sex">
											</div> 
										</div>
									</div>
									<div class="col-12 col-sm-12 col-md-12 col-lg-12">
										<div class="form-group">
											<label for="Birth">생년월일</label>
											<input type="date" name="birth" placeholder="" id="Birth">
										</div>
									</div>
								</div>
								<br> <br>
								<div class="row">
									<div class="text-center col-12 col-sm-12 col-md-12 col-lg-12">
										<input type="submit" class="btn mb-3" value="회원가입 완료">
									</div>
								</div>
							</form>
						</div>
					</div>
				</div>
			</div>
			<!-- ./Create Account -->
			
		</div>
		<!--End Body Content-->

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
