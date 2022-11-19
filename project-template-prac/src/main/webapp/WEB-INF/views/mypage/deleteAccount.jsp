<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="x-ua-compatible" content="ie=edge">
<meta charset="UTF-8">
<title>회원 탈퇴</title>
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
	    	<!--Page Title-->
	    	<br> <br> <br> <br>
	    	<div class="page section-header text-center mb-0">
				<div class="page-title">
				<div class="wrapper"><h1 class="page-width">회원 탈퇴</h1></div>
	      		</div>
			</div>
	        <!--End Page Title-->
		    <div class="bredcrumbWrap" style="text-align: left;">
	            <div class="container breadcrumbs">
	                <a href="index.html" title="Back to the home page">홈</a><span aria-hidden="true">›</span><a href="mypage" title="Back to the Mypage">마이 페이지</a><span aria-hidden="true">›</span><span>회원 탈퇴</span>
	            </div>
        	</div>
		
		<%
			
		
		%>
		
		<div class="editAccount-wrapper" style="text-align: center;">
			
			<div class="container" style="text-align: left;">
				<div class="row">
					<div class="col-12 col-sm-12 col-md-6 col-lg-6 main-col offset-md-3">
						<div class="mb-4">
						
						<form method="post" action="deleteAccount" id="deleteAccountForm">
								<div class="row">
									<div class="col-12 col-sm-12 col-md-12 col-lg-12">
										<div class="form-group">
											<br>
											${ loginuser.customerId }님의 회원 탈퇴를 진행합니다
										</div>
										<br><br>
									</div>
									<div class="col-12 col-sm-12 col-md-12 col-lg-12">
										<div class="form-group">
											<label for="oldPassword">비밀번호 확인</label>
											<input type="password" name="passwd"
												   placeholder="" id="Password">
										</div>
									</div>
									
									<div class="col-12 col-sm-12 col-md-12 col-lg-12">
										<div class="form-group">
											<br>
											<label for="textchecks">아래 텍스트를 입력해 주십시오</label>
											<br>
											<span style="font-weight:bold;">회원 탈퇴에 동의합니다</span>
										</div>
									</div>
									<div class="col-12 col-sm-12 col-md-12 col-lg-12">
										<div class="form-group">
											<input type="text" name="textchk"
												   placeholder="회원 탈퇴에 동의합니다" id="textCheck" required>
											<span id="check"></span>										
										</div>
									</div>
									</div>
									<br><br>
									<input class="form-group" type="text" name="customerId" value="${ loginuser.customerId }"
													   id="CustomerId" style="display:none;">
									<input type="text" name="deleted" value="0" id="deleted" style="display:none;">
									<div class="row">
									<div class="text-center col-12 col-sm-12 col-md-12 col-lg-12">
										<input type="submit" class="btn mb-3" value="회원 탈퇴">
									</div>
								</div>
								</form>
							</div>
						</div>
					</div>
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
			$("#textCheck").on("change", function(event) {
				if ($("#textCheck").val() != "회원 탈퇴에 동의합니다") {
					$("#check").text("회원 탈퇴 동의 텍스트가 일치하지 않습니다");
					$("#check").css("color", "red");
					$("#deleted").val("0");
				} else {
					$("#check").text("회원 탈퇴 동의 텍스트가 일치합니다");
					$("#check").css("color", "blue");
					$("#deleted").val("1");
				}
			});
			$('#textCheck').on("change", function(event) {
				$("#check").text("");
			});
			
			
			
			$("#btn mb-3").on("click", function() {
	 			
				if ($("#Password").val() != passwd ) {
					alert("비밀번호가 일치하지 않습니다");
					break;
				}
				
	 			pageContext.forward("deleteComplete");

	 		});
			
			
			
		}
		</script>
</body>
</html>