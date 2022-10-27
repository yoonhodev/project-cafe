<%@page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<!DOCTYPE html>
<html class="no-js" lang="ko">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="x-ua-compatible" content="ie=edge">
<title>My Page</title>
<meta name="description" content="description">
<meta name="viewport" content="width=device-width, initial-scale=1">
	<!-- Common-css -->
	<jsp:include page="/WEB-INF/views/modules/common-css.jsp"></jsp:include>
</head>
<body class="template-index belle home9-parallax">
	<div id="pre-loader">
		<img src="/project-template-prac/resources/assets/images/loader.gif"
			alt="Loading..." />
	</div>
	<div class="pageWrapper">

		<!-- Header -->
		<jsp:include page="/WEB-INF/views/modules/header.jsp"></jsp:include>
		<!-- ./Header -->

		<!-- Body Content -->
		
		<div class="mypage-wrapper">
		
		<!-- 로그인 여부 확인하고 로그인 안되어 있으면 로그인 페이지로 사출 -->
		<c:if test="${ not empty loginuser and loginuser.memberId eq account/login }"></c:if>
		
		
			<div id="page-content">
	    	<!--Page Title-->
	    	<div class="page section-header text-center mb-0">
				<div class="page-title">
	        		<div class="wrapper"><h1 class="page-width">마이 페이지</h1></div>
	      		</div>
			</div>
	        <!--End Page Title-->
		    <div class="bredcrumbWrap">
	            <div class="container breadcrumbs">
	                <a href="index.html" title="Back to the home page">홈</a><span aria-hidden="true">›</span><span>마이 페이지</span>
	            </div>
        	</div>
		
		
			<div class="mypage_logobox">
				<img src="logo.png" width="500px" height="500px">
			</div>

			<div class="mypage_username">
				
				<span>${ userName }</span>님!
			
			</div>
			
			
			<div class="mypage_stampcouponbox">
			
				<table style="border:1px">
					<tr>
						<td>
							스탬프<span>n</span>개
						</td>
						<td>
							<a href="#">
							쿠폰<span>n</span>개
							</a>
						</td>
					</tr>
				</table>
			
			</div>
			
			
			<div class="mypage_editandfavorite">
			
				<table>
					<tr>
						<td>
							<a href="#">
							개인정보 변경
							</a>
						</td>
					</tr>
				</table>
			
			</div>
			
			
			<div class="mypage_orderlist">
			
				<table>
					<tr>
						<td>주문내역</td>
					</tr>
					<tr>
						<td>(orderlist)</td>
					</tr>
				</table>
			
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
</body>
</html>







