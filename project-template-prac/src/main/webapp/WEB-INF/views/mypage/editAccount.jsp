<%@page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<!DOCTYPE html>
<html class="no-js" lang="ko">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="x-ua-compatible" content="ie=edge">
<title>개인정보 변경</title>
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
	        		<div class="wrapper"><h1 class="page-width">개인정보 변경</h1></div>
	      		</div>
			</div>
	        <!--End Page Title-->
		    <div class="bredcrumbWrap" style="text-align: left;">
	            <div class="container breadcrumbs">
	                <a href="index.html" title="Back to the home page">홈</a><span aria-hidden="true">›</span><a href="mypage" title="Back to the Mypage">마이 페이지</a><span aria-hidden="true">›</span><span>개인정보 변경</span>
	            </div>
        	</div>
		
		<%
			
		
		%>
		
		<div class="editAccount-wrapper" style="text-align: center;">
			
			<div class="container" style="text-align: left;">
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
											<br>
											${ loginuser.customerId }
										</div>
										<br>
									</div>
									<div class="col-12 col-sm-12 col-md-12 col-lg-12">
										<div class="form-group">
											<label for="oldPassword">기존 비밀번호</label>
											<input type="password" name="oldpasswd"
												   placeholder="" id="oldPassword" required
												   minlength="8" maxlength="20" pattern="^(?=.*[A-Za-z])(?=.*\d)(?=.*[$@$!%*#?&])[A-Za-z\d$@$!%*#?&]{8,16}$">
										</div>
									</div>
									<div class="col-12 col-sm-12 col-md-12 col-lg-12">
										<div class="form-group">
											<label for="Password">새 비밀번호</label>
											<input type="password" name="passwd"
												   placeholder="" id="Password" required
												   minlength="8" maxlength="20" pattern="^(?=.*[A-Za-z])(?=.*\d)(?=.*[$@$!%*#?&])[A-Za-z\d$@$!%*#?&]{8,16}$">
										</div>
									</div>
									<div class="col-12 col-sm-12 col-md-12 col-lg-12">
										<div class="form-group">
											<label for="PasswordCheck">새 비밀번호 확인</label>
											<input type="password" name="passwdchk"
												   placeholder="" id="PasswordCheck" required
												   minlength="8" maxlength="20" onchange="check_newpw()">
											<span id="check"></span>										
										</div>
									</div>
									<div class="col-12 col-sm-12 col-md-12 col-lg-12">
										<div class="form-group">
											<label for="Phone">전화번호</label>
											<input type="tel" name="phone"
												   value="${ loginuser.phone }" id="Phone" required>
										</div>
									</div>
									<div class="col-12 col-sm-12 col-md-12 col-lg-12">
										<div class="form-group">
											<label for="Address">주소</label>
											<input type="text" name="address"
												   value="${ loginuser.address }" id="Address" required>
										</div>
									</div>
									<div class="col-12 col-sm-12 col-md-12 col-lg-12">
										<div class="form-group">
											<label for="Email">이메일</label>
											<input type="email" name="email"
												   value="${ loginuser.email }" id="Email" required>
										</div>
									</div>
									<div class="col-12 col-sm-12 col-md-12 col-lg-12">
										<div class="form-group">
											<label for="Birth">생년월일</label>
											<input type="date" name="birth" placeholder="${ loginuser.birth }" id="Birth" required>
										</div>
									</div>
								</div>
								<br> <br>
								<div class="row">
									<div class="text-center col-12 col-sm-12 col-md-12 col-lg-12">
										<input type="submit" class="btn mb-3" value="회원정보 수정 완료" onchange="check_oldpw()">
									</div>
								</div>
							</form>
						</div>
					</div>
				</div>
			</div>
			<!-- ./Create Account -->
			
		
		
		
		
			
		
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
		<script src="https://code.jquery.com/jquery-3.6.1.js"></script>
		<script type="text/javascript">
			function check_newpw() {
				if ($("#Password").val() != $("#PasswordCheck").val())  {
					$("#check").text("새 비밀번호가 일치하지 않습니다.");
					$("#check").css("color", "red");
				} else {
					$("#check").text("새 비밀번호가 일치합니다.")
					$("#check").css("color", "blue");
				}
			}
			
			function check_oldpw() {
				if ($("#oldPassword").val() = passwd ) {
					pageContext.forward("mypage");
				}
				else {
					alert("기존 비밀번호가 일치하지 않습니다");
					break;
				}
			}
		</script>
		
	</div>
</body>
</html>







