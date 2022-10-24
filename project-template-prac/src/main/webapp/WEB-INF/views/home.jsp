<%@page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html class="no-js" lang="ko">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="x-ua-compatible" content="ie=edge">
<title>Green Coffee</title>
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

		<!-- Top Header --> <!-- Header --> <!-- Mobile Menu -->
		<jsp:include page="/WEB-INF/views/modules/header.jsp"></jsp:include>
		<!-- ./Top Header --> <!-- ./Header --> <!-- ./Mobile Menu -->

		<!-- Body Content -->
		<div id="page-content">
			<!--Home slider-->
			<div class="slideshow slideshow-wrapper">
				<div class="home-slideshow">
					<div class="slide">
						<div class="blur-up lazyload">
							<img class="blur-up lazyload"
								data-src="/project-template-prac/resources/assets/images/imageforproject/KakaoTalk_20221020_165234064.jpg"
								src="/project-template-prac/resources/assets/images/imageforproject/KakaoTalk_20221020_165234064.jpg"
								alt="Gift For her" title="Gift For her" />
							<div
								class="slideshow__text-wrap slideshow__overlay classic bottom">
								<div class="slideshow__text-content left">
									<div class="container">
										<div class="wrap-caption left">
											<h2 class="h1 mega-title slideshow__title">Gift For her</h2>
											<span class="mega-subtitle slideshow__subtitle">The
												latest collection from italian brands</span> <span class="btn">Shop
												now</span>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<!--End Home slider-->

			<!--Hero Parallax Section1-->
			<div class="section">
				<div class="hero hero--large hero__overlay bg-size">
					<img class="bg-img blur-up"
						src="/project-template-prac/resources/assets/images/parallax-banners/home9-parallax-banner1.jpg"
						alt="" />
					<div class="hero__inner">
						<div class="container">
							<div class="wrap-text  right text-medium font-bold">
								<h2 class="h2 mega-title">Kids Collection</h2>
								<div class="rte-setting mega-subtitle">Plenty of options
									for your kids. Be the first to buy</div>
								<a href="#" class="btn">Shop Kids</a>
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
						src="/project-template-prac/resources/assets/images/parallax-banners/home9-parallax-banner2.jpg"
						alt="" />
					<div class="hero__inner">
						<div class="container">
							<div class="wrap-text  left text-large font-bold">
								<h2 class="h2 mega-title">
									The mid season SALE.<br>UP TO 50% OFF
								</h2>
								<div class="rte-setting mega-subtitle">
									Live life Comfortable.<br>This flip flops switch, flip
									&amp; reverse to make up to 246 combos!
									<p>
										<b>FREE SHIPPING on all orders over $199</b>
									</p>
								</div>
								<a href="#" class="btn">Shop Now</a>
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
						src="/project-template-prac/resources/assets/images/parallax-banners/home9-parallax-banner3.jpg"
						alt="" />
					<div class="hero__inner">
						<div class="container">
							<div class="wrap-text  center text-medium font-bold">
								<h2 class="h2 mega-title">Women Wallets</h2>
								<div class="rte-setting mega-subtitle">Carry this stylist
									wallets for party</div>
								<a href="#" class="btn">Explore more</a>
							</div>
						</div>
					</div>
				</div>
			</div>
			<!--End Hero Parallax Section3-->

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







