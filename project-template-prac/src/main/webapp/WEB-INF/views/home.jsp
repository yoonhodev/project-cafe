<%@page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html class="no-js" lang="ko">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="x-ua-compatible" content="ie=edge">
<title>Home</title>
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
		<div id="page-content">
			<!-- Home slider -->
			<div class="slideshow slideshow-wrapper">
				<div class="home-slideshow">
					<div class="slide">
						<div class="blur-up lazyload">
							<img class="blur-up lazyload"
								data-src="/project-template-prac/resources/assets/images/imageforproject/KakaoTalk_20221020_165234064.jpg"
								src="/project-template-prac/resources/assets/images/imageforproject/KakaoTalk_20221020_165234064.jpg"
								alt="Gift For her" title="Gift For her" />
							<div class="slideshow__text-wrap slideshow__overlay classic bottom">
								<div class="slideshow__text-content left">
									<div class="container">
										<div class="wrap-caption left">
											<h2 class="h1 mega-title slideshow__title">CHECK OUR MENU</h2>
											<span class="mega-subtitle slideshow__subtitle">
												Order now!</span>
											<a href="shop"><span class="btn">MENU</span></a>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<!-- ./Home slider -->

			<!--Hero Parallax Section1-->
			<div class="section">
				<div class="hero hero--large hero__overlay bg-size">
					<img class="bg-img blur-up"
						src="/project-template-prac/resources/assets/images/cafe-out-image-folder/cafe_light01.png"
						alt="1" />
					<div class="hero__inner">
						<div class="container">
							<div class="wrap-text right text-medium font-bold">
								<h2 class="h2 mega-title">STORE INTRODUCE</h2>
								<div class="rte-setting mega-subtitle">
									Check our cafe introduce</div>
								<a href="store" class="btn">지점 소개</a>
							</div>
						</div>
					</div>
				</div>
			</div>
			<!--End Hero Parallax Section1-->

			<!--Hero Parallax Section2-->
			<div class="section">
				<div class="hero hero--large hero__overlay bg-size">
					<img class="bg-img"
						src="/project-template-prac/resources/assets/images/cafe-out-image-folder/coffee_for_home.jpg"
						alt="" />
					<div class="hero__inner">
						<div class="container">
							<div class="wrap-text  left text-large font-bold">
								<h2 class="h2 mega-title">
									NOTICE / EVENT BOARD
								</h2>
								<div class="rte-setting mega-subtitle">
									Check event board and enter event!!
									<p>
										<b></b>
									</p>
								</div>
								<a href="noticeBoard" class="btn">BOARD</a>
							</div>
						</div>
					</div>
				</div>
			</div>
			<!--End Hero Parallax Section2-->

			<!--Hero Parallax Section3-->
			<div class="section">
				<div class="hero hero--large hero__overlay bg-size">
					<img class="bg-img"
						src="/project-template-prac/resources/assets/images/cafe-out-image-folder/cafe_for_home01.jpg"
						alt="" />
					<div class="hero__inner">
						<div class="container">
							<div class="wrap-text  center text-medium font-bold">
								<h2 class="h2 mega-title">CREATE YOUR ACCOUNT</h2>
								<div class="rte-setting mega-subtitle">Create your own account and get coupon!!</div>
								<a href="register" class="btn">REGISTER</a>
							</div>
						</div>
					</div>
				</div>
			</div>
			<!--End Hero Parallax Section3-->

		</div>
		<!-- ./Body Content -->

		<!-- Footer -->
		<jsp:include page="/WEB-INF/views/modules/home-footer.jsp"></jsp:include>
		<!-- ./Footer -->

		<!-- Scoll Top -->
		<span id="site-scroll"><i class="icon anm anm-angle-up-r"></i></span>
		<!-- ./Scoll Top -->

		<!-- Common-js -->
		<jsp:include page="/WEB-INF/views/modules/common-js.jsp"></jsp:include>
	</div>
</body>
</html>
