<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html class="no-js" lang="ko">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="x-ua-compatible" content="ie=edge">
<title>GREEN CAFE - 개인정보 변경</title>
<meta name="description" content="description">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- Common-css -->
<jsp:include page="/WEB-INF/views/modules/common-css.jsp"></jsp:include>
<style>
@font-face {
    font-family: 'neon';
    src: url('../fonts/TmonMonsori.ttf') format('truetype');
}
body, h1 {
	font-family: 'neon';
}
	
</style>
</head>
<body class="page-template belle">
<body>
	
	<div class="pageWrapper">
		<!-- Header -->
		<jsp:include page="/WEB-INF/views/modules/header.jsp"></jsp:include>
		<!-- ./Header -->

		<!-- Body Content -->
		
		<div id="page-content">
	    	<!--Page Title-->
	    	<br> <br> <br> <br>
	    	<div class="page section-header text-center  mb-0">
				<div class="page-title">
	        		<div class="wrapper"><h1 class="page-width">개인정보 변경</h1></div>
	      		</div>
			</div>
	        <!--End Page Title-->
		    <div class="bredcrumbWrap" style="text-align: left;">
	            <div class="container breadcrumbs">
	                <a href="home" title="Back to the home page">홈</a><span aria-hidden="true">›</span><a href="mypage" title="Back to the Mypage">마이 페이지</a><span aria-hidden="true">›</span><span>개인정보 변경</span>
	            </div>
        	</div>
        	
        	<!-- Edit Account -->
			<div class="editAccount-wrapper" style="text-align: center;">
				<div class="container" style="text-align: left;">
					<div class="row">
						<div class="col-12 col-sm-12 col-md-6 col-lg-6 main-col offset-md-3">
							<div class="mb-4">
								<c:set var="customers" value="${ customers }" />
								<c:forEach var="customer" items="${ customers }" varStatus="status">
									<input type="hidden" value="${ customer.customerId }" id="customer-${ status.index }">
								</c:forEach>
								<form method="post" action="editAccount" id="editAccountForm">
									<div class="row">
										<div class="col-12 col-sm-12 col-md-12 col-lg-12">
											<div class="form-group">
												<label for="CustomerId">아이디</label>
												<br>
												${ loginuser.customerId }
												<input type="hidden" value="${ customer.customerId }" id="customerId">
											</div>
											<br>
										</div>
										<div class="col-12 col-sm-12 col-md-12 col-lg-12">
											<div class="form-group">
												<label for="oldPassword">기존 비밀번호</label>
												<input class="form-control"  type="password" name="oldpasswd"
													   placeholder="" id="oldPassword">
											</div>
										</div>
										<div class="col-12 col-sm-12 col-md-12 col-lg-12">
											<div class="form-group">
												<label for="Password">새 비밀번호</label>
												<input class="form-control"  type="password" name="passwd"
													   placeholder="" id="Password" required
													   minlength="8" maxlength="20" pattern="^(?=.*[A-Za-z])(?=.*\d)(?=.*[$@$!%*#?&])[A-Za-z\d$@$!%*#?&]{8,16}$">
											</div>
										</div>
										<div class="col-12 col-sm-12 col-md-12 col-lg-12">
											<div class="form-group">
												<label for="PasswordCheck">새 비밀번호 확인</label>
												<input class="form-control"  type="password" name="passwdchk"
													   id="PasswordCheck" required>
												<span id="pwcheck"></span>										
											</div>
										</div>
										<div class="col-12 col-sm-12 col-md-12 col-lg-12">
											<div class="form-group">
												<label for="Phone">전화번호</label>
												<input class="form-control"  type="tel" name="phone"
													   value="${ loginuser.phone }" id="Phone" required>
											</div>
										</div>
										<div class="col-12 col-sm-12 col-md-12 col-lg-12">
											<div class="form-group">
												<label for="Address">주소</label>
												<div style="line-height: 80%">
													<div class="input-group">
														<input style="width: 80px" class="form-control" name="postId" value="${ addressDto.postId }" type="text" id="sample2_postcode" required>
														<div style="width: 20px"></div>
														<input class="btn" style="width: px" class="form-control" type="button" onclick="sample2_execDaumPostcode()" value="우편번호 찾기">
														<div style="width: 100px"></div><div style="width: 100px"></div>
														<div style="width: 100px"></div><div style="width: 100px"></div>
													</div><br>
													<input class="form-control" name="address" type="text" id="sample2_address" value="${ addressDto.address }" required><br>
													<div class="input-group">
														<input class="form-control" name="detailAddress" type="text" id="sample2_detailAddress" value="${ addressDto.detailAddress }" >
														&nbsp;&nbsp;&nbsp;&nbsp;
														<input class="form-control" name="extraAddress" type="text" id="sample2_extraAddress"  value="${ addressDto.extraAddress }">
														<!-- <input class="form-group" type="text" name="addressId" value=""
														   id="addressId" style="display:none;"> -->
													</div>
												</div>
												
												<!-- iOS에서는 position:fixed 버그가 있음, 적용하는 사이트에 맞게 position:absolute 등을 이용하여 top,left값 조정 필요 -->
												<div id="layer" style="display:none;position:fixed;overflow:hidden;z-index:1;-webkit-overflow-scrolling:touch;">
													<img src="//t1.daumcdn.net/postcode/resource/images/close.png" id="btnCloseLayer" style="cursor:pointer;position:absolute;right:-3px;top:-3px;z-index:1" onclick="closeDaumPostcode()" alt="닫기 버튼">
												</div>
											</div>
										</div>
										<div class="col-12 col-sm-12 col-md-12 col-lg-12">
											<div class="form-group">
												<label for="Email">이메일</label>
												<input class="form-control"  type="email" name="email"
													   value="${ loginuser.email }" id="Email" required>
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
			</div>
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
				if ($("#Password").val() != $("#PasswordCheck").val()) {
					$("#pwcheck").text("새 비밀번호가 일치하지 않습니다.");
					$("#pwcheck").css("color", "red");
				} else {
					$("#pwcheck").text("새 비밀번호가 일치합니다.");
					$("#pwcheck").css("color", "blue");
				}
			});
			$('#Password').on("change", function(event) {
				$("#pwcheck").text("");
			});
		});
	</script>
	<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
	<script>
	    // 우편번호 찾기 화면을 넣을 element
	    var element_layer = document.getElementById('layer');
	
	    function closeDaumPostcode() {
	        // iframe을 넣은 element를 안보이게 한다.
	        element_layer.style.display = 'none';
	    }
	
	    function sample2_execDaumPostcode() {
	        new daum.Postcode({
	            oncomplete: function(data) {
	                // 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.
	
	                // 각 주소의 노출 규칙에 따라 주소를 조합한다.
	                // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
	                var addr = ''; // 주소 변수
	                var extraAddr = ''; // 참고항목 변수
	
	                //사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
	                if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
	                    addr = data.roadAddress;
	                } else { // 사용자가 지번 주소를 선택했을 경우(J)
	                    addr = data.jibunAddress;
	                }
	
	                // 사용자가 선택한 주소가 도로명 타입일때 참고항목을 조합한다.
	                if(data.userSelectedType === 'R'){
	                    // 법정동명이 있을 경우 추가한다. (법정리는 제외)
	                    // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
	                    if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
	                        extraAddr += data.bname;
	                    }
	                    // 건물명이 있고, 공동주택일 경우 추가한다.
	                    if(data.buildingName !== '' && data.apartment === 'Y'){
	                        extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
	                    }
	                    // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
	                    if(extraAddr !== ''){
	                        extraAddr = ' (' + extraAddr + ')';
	                    }
	                    // 조합된 참고항목을 해당 필드에 넣는다.
	                    document.getElementById("sample2_extraAddress").value = extraAddr;
	                
	                } else {
	                    document.getElementById("sample2_extraAddress").value = '';
	                }
	
	                // 우편번호와 주소 정보를 해당 필드에 넣는다.
	                document.getElementById('sample2_postcode').value = data.zonecode;
	                document.getElementById("sample2_address").value = addr;
	                // 커서를 상세주소 필드로 이동한다.
	                document.getElementById("sample2_detailAddress").focus();
	
	                // iframe을 넣은 element를 안보이게 한다.
	                // (autoClose:false 기능을 이용한다면, 아래 코드를 제거해야 화면에서 사라지지 않는다.)
	                element_layer.style.display = 'none';
	            },
	            width : '100%',
	            height : '100%',
	            maxSuggestItems : 5
	        }).embed(element_layer);
	
	        // iframe을 넣은 element를 보이게 한다.
	        element_layer.style.display = 'block';
	
	        // iframe을 넣은 element의 위치를 화면의 가운데로 이동시킨다.
	        initLayerPosition();
	    }
	
	    // 브라우저의 크기 변경에 따라 레이어를 가운데로 이동시키고자 하실때에는
	    // resize이벤트나, orientationchange이벤트를 이용하여 값이 변경될때마다 아래 함수를 실행 시켜 주시거나,
	    // 직접 element_layer의 top,left값을 수정해 주시면 됩니다.
	    function initLayerPosition(){
	        var width = 300; //우편번호서비스가 들어갈 element의 width
	        var height = 400; //우편번호서비스가 들어갈 element의 height
	        var borderWidth = 5; //샘플에서 사용하는 border의 두께
	
	        // 위에서 선언한 값들을 실제 element에 넣는다.
	        element_layer.style.width = width + 'px';
	        element_layer.style.height = height + 'px';
	        element_layer.style.border = borderWidth + 'px solid';
	        // 실행되는 순간의 화면 너비와 높이 값을 가져와서 중앙에 뜰 수 있도록 위치를 계산한다.
	        element_layer.style.left = (((window.innerWidth || document.documentElement.clientWidth) - width)/2 - borderWidth) + 'px';
	        element_layer.style.top = (((window.innerHeight || document.documentElement.clientHeight) - height)/2 - borderWidth) + 'px';
	    }
		</script>
	</body>
</html>







