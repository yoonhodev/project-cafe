<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

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
							<c:set var="customers" value="${ customers }" />
							<c:forEach var="customer" items="${ customers }" varStatus="status">
								<input type="hidden" value="${ customer.customerId }" id="customer-${ status.index }">	
							</c:forEach>
							<form method="post" action="register" id="registerform">
								<div class="row">
									<div class="col-12 col-sm-12 col-md-12 col-lg-12">
										<div class="form-group">
											<label for="CustomerId">아이디</label>
											<div class="input-group">
												<input class="form-control userid" type="text" name="customerId" placeholder="아이디를 입력하세요"
													   id="CustomerId" autofocus required pattern="[A-Za-z0-9]"
													   minlength="3" maxlength="20">
												&nbsp;
												<span class="input-group-btn">
													<input class="btn" type="button" style="float: right" id="idcheckbtn" value="중복확인">
												</span>
											</div>
											<span id="idcheck"></span>
										</div>
									</div>
									<div class="col-12 col-sm-12 col-md-12 col-lg-12">
										<div class="form-group">
											<label for="Password">비밀번호</label>
											<input type="password" name="passwd"
												   placeholder="" id="Password" required
												   minlength="8" maxlength="20" pattern="^(?=.*[A-Za-z])(?=.*\d)(?=.*[$@$!%*#?&])[A-Za-z\d$@$!%*#?&]{8,16}$">
										</div>
									</div>
									<div class="col-12 col-sm-12 col-md-12 col-lg-12">
										<div class="form-group">
											<label for="PasswordCheck">비밀번호 확인</label>
											<input type="password" name="passwdchk"
												   placeholder="" id="PasswordCheck" required
												   onchange="check_pw()">
											<span id="check"></span>										
										</div>
									</div>
									<div class="col-12 col-sm-12 col-md-12 col-lg-12">
										<div class="form-group">
											<label for="Phone">전화번호</label>
											<input type="tel" name="phone"
												   placeholder="" id="Phone" required>
										</div>
									</div>
									<div class="col-12 col-sm-12 col-md-12 col-lg-12">
										<div class="form-group">
											<label for="Address">주소</label>
											<input type="text" name="address"
												   placeholder="" id="Address" required>
										</div>
									</div>
									<div class="col-12 col-sm-12 col-md-12 col-lg-12">
										<div class="form-group">
											<label for="Email">이메일</label>
											<input type="email" name="email"
												   placeholder="" id="Email" required>
										</div>
									</div>
									<div class="col-12 col-sm-12 col-md-12 col-lg-12">
										<div class="form-group">
											<label>성별</label><br>
											<div>&nbsp;
												&nbsp;&nbsp;남&nbsp;&nbsp;
												<input type="radio" name="sex" placeholder="" id="Sex" required>
												&nbsp;&nbsp;&nbsp;&nbsp;
												&nbsp;&nbsp;여&nbsp;&nbsp;
												<input type="radio" name="sex" placeholder="" id="Sex">
											</div>
										</div>
									</div>
									<div class="col-12 col-sm-12 col-md-12 col-lg-12">
										<div class="form-group">
											<label for="Birth">생년월일</label>
											<input type="date" name="birth" placeholder="" id="Birth" required>
										</div>
									</div>
								</div>
								<br> <br>
								<div class="row refresh">
									<div class="text-center col-12 col-sm-12 col-md-12 col-lg-12">
										<input id="generatebtn" type="submit" class="btn mb-3" value="회원가입 완료">
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
	<script src="https://code.jquery.com/jquery-3.6.1.js"></script>
	<script type="text/javascript">
		$(function() {
			$("#PasswordCheck").on("change", function(event) {
				if ($("#Password").val() != $("#PasswordCheck").val()) {
					$("#check").text("비밀번호가 일치하지 않습니다.");
					$("#check").css("color", "red");
				} else {
					$("#check").text("비밀번호가 일치합니다.");
					$("#check").css("color", "blue");
				}
			});
			$('#Password').on("change", function(event) {
				$("#check").text("hi");
			});
			
			$('.userid').on("change", function(event) {
				$("#idcheck").text("");
			});
			    
			$("#idcheckbtn").on("click", function() {
	 			var customerId = $("#CustomerId").val();
				var chk = 0;
	 			if (customerId == "") {
	 				alert("널");
	 				return;
	 			} else {
					$.ajax({
						"url": "duplecheck",
						"method": "get",
						"data": 'customerId=' + customerId,
						"success": function(data, status, xhr) {
							alert(customerId)
							<c:if test="${ not empty duple }">
								alert("1")
								$("#idcheck").text("아이디 중복입니다.");
								$("#check").css("color", "red");
				 			</c:if>
// 				 			<c:if test="${ not empty noneduple }">
// 				 				alert("2")
// 				 				$("#idcheck").text("사용가능한 아이디입니다.");
// 				 				$("#check").css("color", "blue");
// 			 				</c:if>
						},
						"error": function(xhr, status, err) {}
					});
	 			}
	 		});
		});
			

			
		
			
			
		
// 		function check_pw() {
			
// 		}
// 		$("#idcheckbtn").on("click", function() {
// 			alert("확인");
// 			var customerId = $("#CustomerId").val();
// 			var chk = 0;
// 			if (customerId != null) {
// 				for (int i = 0; i < customers.length; i++) {
// 					if ($("#customer-" + i).eq(customerId)) {
// 						$("#CustomerId").val("");
// 						$("#idcheck").text("이미 가입된 아이디입니다.")
// 						$("#idcheck").css("color", "red");
// 						chk = 1;
// 					}
// 				}
// 				if(!chk.eq(1)) {
// 					$("#idcheck").text("사용 가능한 아이디 입니다.")
// 					$("#idcheck").css("color", "blue");
// 				}
// 			}
// 		});
	</script>
</body>
</html>
