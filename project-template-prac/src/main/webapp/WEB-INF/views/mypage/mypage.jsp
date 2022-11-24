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
	<style>
		@font-face {
			font-family: 'neon';
			src: url('../fonts/TmonMonsori.ttf') format('truetype');
		}
		
		body, h1 {
			font-family: 'neon';
		}
		
		@media screen and (max-width: 700px) {
			#logo_pic {
				width: 90%;
				height: 100%;
			}
		}
		
		@media screen and (min-width: 420px) {
			#logo_pic {
				width: 320px;
				height: 100%;
			}
		}
		
		table tr td {
			padding: 0 20px;
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
	                <a href="home" title="Back to the home page">홈</a><span aria-hidden="true">›</span><span>마이 페이지</span>
	            </div>
        	</div>
			<div class="mypage-wrapper" style="text-align: center;">

			<div class="mypage_logobox" style="display: inline-block;">
				<img id="logo_pic" src="/project-template-prac/resources/assets/images/logo_icon.png" width="400px" height="400px" />
			</div>
			<br><br><br>
			<div class="mypage_username" style="display: inline-block; font-weight: bold">	
				<span>${ loginuser.customerId }</span>님 환영합니다.
			</div>
			<br><br><br><br><br><br>
			<div class="mypage_menubox" style="display: inline-block;">
				<table style="font-weight: bold; margin: 0 auto; margin-left: 20px">
					<tr>
						<td style="text-align: left;">
							<a href="orderHistory">주문내역</a>
						</td>
						<td style="text-align: left;">
							<a href="coupon">
								쿠폰함 (보유 쿠폰 : <span>${ couponcount }</span>)
							</a>
						</td>
					</tr>
					<tr style="height:40px;"></tr>
					<tr>
						<td style="text-align: left;">
							<a href="editAccount?customerId=${loginuser.customerId}">개인정보 변경</a>
						</td>
						<td style="text-align: left;">
							<a href="deleteAccount" style="color: #cc0000 ;">
							회원 탈퇴
							</a>
						</td>
					</tr>
				</table>
				<input type="hidden" value="${ customer.customerId }" id="customerId">
			</div>
			<br><br>
			<br><br>
			<br><br>
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







