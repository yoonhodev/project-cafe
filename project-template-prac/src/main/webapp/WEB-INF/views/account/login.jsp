<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html class="no-js" lang="ko">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="x-ua-compatible" content="ie=edge">
<title>Login</title>
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
			<br> <br> <br> <br> <br>
			<div class="page section-header text-center">
				<div class="page-title">
					<div class="wrapper">
						<h1 class="page-width">Login</h1>
					</div>
				</div>
			</div>
			<!-- ./Page Title -->

			<div class="container">
				<div class="row">
					<div
						class="col-12 col-sm-12 col-md-6 col-lg-6 main-col offset-md-3">
						<div class="mb-4">
							<form method="post" action="#" id="CustomerLoginForm"
								accept-charset="UTF-8" class="contact-form">
								<div class="row">
									<div class="col-12 col-sm-12 col-md-12 col-lg-12">
										<div class="form-group">
											<label for="CustomerEmail">Email</label> <input type="email"
												name="customer[email]" placeholder="" id="CustomerEmail"
												class="" autocorrect="off" autocapitalize="off" autofocus="">
										</div>
									</div>
									<div class="col-12 col-sm-12 col-md-12 col-lg-12">
										<div class="form-group">
											<label for="CustomerPassword">Password</label> <input
												type="password" value="" name="customer[password]"
												placeholder="" id="CustomerPassword" class="">
										</div>
									</div>
								</div>
								<div class="row">
									<div class="text-center col-12 col-sm-12 col-md-12 col-lg-12">
										<input type="submit" class="btn mb-3" value="Sign In">
										<p class="mb-4">
											<a href="#" id="RecoverPassword">Forgot your password?</a>
											&nbsp; | &nbsp; <a href="register.html"
												id="customer_register_link">Create account</a>
										</p>
									</div>
								</div>
							</form>
						</div>
					</div>
				</div>
			</div>

		</div>
		<!--End Body Content-->

		<!--Footer-->
		<footer id="footer">
			<div class="newsletter-section">
				<div class="container">
					<div class="row">
						<div
							class="col-12 col-sm-12 col-md-12 col-lg-7 w-100 d-flex justify-content-start align-items-center">
							<div class="display-table">
								<div class="display-table-cell footer-newsletter">
									<div class="section-header text-center">
										<label class="h2"><span>sign up for </span>newsletter</label>
									</div>
									<form action="#" method="post">
										<div class="input-group">
											<input type="email"
												class="input-group__field newsletter__input" name="EMAIL"
												value="" placeholder="Email address" required=""> <span
												class="input-group__btn">
												<button type="submit" class="btn newsletter__submit"
													name="commit" id="Subscribe">
													<span class="newsletter__submit-text--large">Subscribe</span>
												</button>
											</span>
										</div>
									</form>
								</div>
							</div>
						</div>
						<div
							class="col-12 col-sm-12 col-md-12 col-lg-5 d-flex justify-content-end align-items-center">
							<div class="footer-social">
								<ul class="list--inline site-footer__social-icons social-icons">
									<li><a class="social-icons__link" href="#" target="_blank"
										title="Belle Multipurpose Bootstrap 4 Template on Facebook"><i
											class="icon icon-facebook"></i></a></li>
									<li><a class="social-icons__link" href="#" target="_blank"
										title="Belle Multipurpose Bootstrap 4 Template on Twitter"><i
											class="icon icon-twitter"></i> <span
											class="icon__fallback-text">Twitter</span></a></li>
									<li><a class="social-icons__link" href="#" target="_blank"
										title="Belle Multipurpose Bootstrap 4 Template on Pinterest"><i
											class="icon icon-pinterest"></i> <span
											class="icon__fallback-text">Pinterest</span></a></li>
									<li><a class="social-icons__link" href="#" target="_blank"
										title="Belle Multipurpose Bootstrap 4 Template on Instagram"><i
											class="icon icon-instagram"></i> <span
											class="icon__fallback-text">Instagram</span></a></li>
									<li><a class="social-icons__link" href="#" target="_blank"
										title="Belle Multipurpose Bootstrap 4 Template on Tumblr"><i
											class="icon icon-tumblr-alt"></i> <span
											class="icon__fallback-text">Tumblr</span></a></li>
									<li><a class="social-icons__link" href="#" target="_blank"
										title="Belle Multipurpose Bootstrap 4 Template on YouTube"><i
											class="icon icon-youtube"></i> <span
											class="icon__fallback-text">YouTube</span></a></li>
									<li><a class="social-icons__link" href="#" target="_blank"
										title="Belle Multipurpose Bootstrap 4 Template on Vimeo"><i
											class="icon icon-vimeo-alt"></i> <span
											class="icon__fallback-text">Vimeo</span></a></li>
								</ul>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="site-footer">
				<div class="container">
					<!--Footer Links-->
					<div class="footer-top">
						<div class="row">
							<div class="col-12 col-sm-12 col-md-3 col-lg-3 footer-links">
								<h4 class="h4">Quick Shop</h4>
								<ul>
									<li><a href="#">Women</a></li>
									<li><a href="#">Men</a></li>
									<li><a href="#">Kids</a></li>
									<li><a href="#">Sportswear</a></li>
									<li><a href="#">Sale</a></li>
								</ul>
							</div>
							<div class="col-12 col-sm-12 col-md-3 col-lg-3 footer-links">
								<h4 class="h4">Informations</h4>
								<ul>
									<li><a href="#">About us</a></li>
									<li><a href="#">Careers</a></li>
									<li><a href="#">Privacy policy</a></li>
									<li><a href="#">Terms &amp; condition</a></li>
									<li><a href="#">My Account</a></li>
								</ul>
							</div>
							<div class="col-12 col-sm-12 col-md-3 col-lg-3 footer-links">
								<h4 class="h4">Customer Services</h4>
								<ul>
									<li><a href="#">Request Personal Data</a></li>
									<li><a href="#">FAQ's</a></li>
									<li><a href="#">Contact Us</a></li>
									<li><a href="#">Orders and Returns</a></li>
									<li><a href="#">Support Center</a></li>
								</ul>
							</div>
							<div class="col-12 col-sm-12 col-md-3 col-lg-3 contact-box">
								<h4 class="h4">Contact Us</h4>
								<ul class="addressFooter">
									<li><i class="icon anm anm-map-marker-al"></i>
										<p>
											55 Gallaxy Enque,<br>2568 steet, 23568 NY
										</p></li>
									<li class="phone"><i class="icon anm anm-phone-s"></i>
										<p>(440) 000 000 0000</p></li>
									<li class="email"><i class="icon anm anm-envelope-l"></i>
										<p>sales@yousite.com</p></li>
								</ul>
							</div>
						</div>
					</div>
					<!--End Footer Links-->
					<hr>
					<div class="footer-bottom">
						<div class="row">
							<!--Footer Copyright-->
							<div
								class="col-12 col-sm-12 col-md-6 col-lg-6 order-1 order-md-0 order-lg-0 order-sm-1 copyright text-sm-center text-md-left text-lg-left">
								<span></span> <a href="templateshub.net">Templates Hub</a>
							</div>
							<!--End Footer Copyright-->
							<!--Footer Payment Icon-->
							<div
								class="col-12 col-sm-12 col-md-6 col-lg-6 order-0 order-md-1 order-lg-1 order-sm-0 payment-icons text-right text-md-center">
								<ul class="payment-icons list--inline">
									<li><i class="icon fa fa-cc-visa" aria-hidden="true"></i></li>
									<li><i class="icon fa fa-cc-mastercard" aria-hidden="true"></i></li>
									<li><i class="icon fa fa-cc-discover" aria-hidden="true"></i></li>
									<li><i class="icon fa fa-cc-paypal" aria-hidden="true"></i></li>
									<li><i class="icon fa fa-cc-amex" aria-hidden="true"></i></li>
									<li><i class="icon fa fa-credit-card" aria-hidden="true"></i></li>
								</ul>
							</div>
							<!--End Footer Payment Icon-->
						</div>
					</div>
				</div>
			</div>
		</footer>
		<!--End Footer-->
		
		<!--Scoll Top-->
		<span id="site-scroll"><i class="icon anm anm-angle-up-r"></i></span>
		<!--End Scoll Top-->
		
	</div>
</body>
</html>