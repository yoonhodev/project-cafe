<%@page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<!DOCTYPE html>
<html class="no-js" lang="ko">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="x-ua-compatible" content="ie=edge">
<title>마이 페이지</title>
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
	        		<div class="wrapper"><h1 class="page-width">마이 페이지</h1></div>
	      		</div>
			</div>
	        <!--End Page Title-->
		    <div class="bredcrumbWrap" style="text-align: left;">
	            <div class="container breadcrumbs">
	                <a href="index.html" title="Back to the home page">홈</a><span aria-hidden="true">›</span><span>마이 페이지</span>
	            </div>
        	</div>
		
		
		<div class="mypage-wrapper" style="text-align: center;">
		
		<!-- 로그인 여부 확인하고 로그인 안되어 있으면 로그인 페이지로 사출 -->
		
			<div class="mypage_logobox" style="display: inline-block;">
				<img src="https://via.placeholder.com/300.png?text=Logo" width="300px" height="300px">
			</div>
			
			
			<br><br>
			

			<div class="mypage_username" style="display: inline-block;">
				
				<span>${ loginuser.customerId }</span>님!
			
			</div>
		
		
			<br><br>
			<br><br>
			
			
			<div class="mypage_stampcouponbox" style="display: inline-block;">
			
				<table style="border:1px; width:300px;">
					<tr>
						<td style="text-align: center;">
							<a href="editAccount">
							스탬프 <span>${ loginuser.stamp }</span>개
							</a>
						</td>
						<td style="text-align: center;">
							<a href="coupon">
							쿠폰함
							</a>
						</td>
					</tr>
				</table>
				
			
			</div>
			
			<br><br>
			
			<div class="mypage_editaccount" style="display: inline-block;">
			
				<table style="width:300px;">
					<tr>
						<td style="text-align: center;">
							<a href="editAccount">
							개인정보 변경
							</a>
						</td>
						<td style="text-align: center;">
							<a href="orderHistory">
							주문내역
							</a>
						</td>
					</tr>
				</table>
			
			</div>
			
			<br><br>
			<br><br>
			<br><br>
		
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







