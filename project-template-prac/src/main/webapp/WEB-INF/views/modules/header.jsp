<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!-- Top Header -->
<div class="top-header">
	<div class="container-fluid">
		<div class="row">
			<div class="col-10 col-sm-8 col-md-5 col-lg-4"></div>
			<div class="col-sm-4 col-md-4 col-lg-4 d-none d-lg-none d-md-block d-lg-block">
				<div class="text-center">
					<p class="top-header_middle-text">Green Coffee</p>
				</div>
			</div>
			<div class="col-2 col-sm-4 col-md-3 col-lg-4 text-right">
				<span class="user-menu d-block d-lg-none">
				<i class="anm anm-user-al" aria-hidden="true"></i></span>
				<c:choose>
				<c:when test="${ empty loginuser }">
				<ul class="customer-links list-inline">
					<li><a href="login">Login</a></li>
					<li><a href="register">Create Account</a></li>
				</ul>
				</c:when>
				<c:otherwise>			
					
							
				<ul class="customer-links list-inline">
					<li><a href="#">${ loginuser.customerId }님</a></li>	
					
					<c:if test="${ loginuser.userType eq 'true' }">
					<li><a href="admin1">관리자페이지</a></li>
					</c:if>
					<c:if test="${ loginuser.userType eq 'false'}">		
					<li><a href="mypage">마이페이지</a></li>
					</c:if>	
					<li><a href="logout">로그아웃</a></li>
				</ul>
				
				</c:otherwise>
				</c:choose>
			</div>
		</div>
	</div>
</div>
<!-- ./Top Header -->

<div class="header-wrap classicHeader animated d-flex">
	<div class="container-fluid">
		<div class="row align-items-center">
			<!-- Desktop Logo -->
			<div class="logo col-md-2 col-lg-2 d-none d-lg-block">
				<a href="home"> <img
					src="/project-template-prac/resources/assets/images/logo.svg"
					alt="Belle Multipurpose Html Template"
					title="Belle Multipurpose Html Template" />
				</a>
			</div>
			<!-- ./Desktop Logo -->
			<div class="col-2 col-sm-3 col-md-3 col-lg-8">
				<div class="d-block d-lg-none">
					<button type="button"
						class="btn--link site-header__menu js-mobile-nav-toggle mobile-nav--open">
						<i class="icon anm anm-times-l"></i> <i class="anm anm-bars-r"></i>
					</button>
				</div>
				<!--Desktop Menu-->
				<nav class="grid__item" id="AccessibleNav">
					<!-- for mobile -->
					<ul id="siteNav" class="site-nav medium center hidearrow">
						<li class="lvl1 parent megamenu"><a href="shop"
							style="font-size: 15pt"><b>Menu</b> <i
								class="anm anm-angle-down-l"></i></a></li>
								
						<li class="lvl1 parent dropdown"><a href="noticeBoard"
							style="font-size: 15pt"><b>BOARD</b> <i
								class="anm anm-angle-down-l"></i></a>
							<ul class="dropdown">
								<li><a href="noticeBoard" class="site-nav">NOTICE
								</a>
								<li><a href="eventBoard" class="site-nav">EVENT
								</a>
							</ul></li>
						<li class="lvl1 parent dropdown"><a href="store"
							style="font-size: 15pt"><b>BRANCH OFFICE</b> <i
								class="anm anm-angle-down-l"></i></a>
							<ul class="dropdown">
							<c:if test="${ loginuser.userType }">
								<li><a href="writeStore" class="site-nav">지점 소개 추가</a></li>
								</c:if>	
								<li><a href="store" class="site-nav">지점 소개</a></li>
							</ul></li>
						<li class="lvl1"><a href="order" style="font-size: 15pt"><b>CART</b> <i class="anm anm-angle-down-l"></i></a></li>
						<c:if test="${ loginuser.userType }">			
<!-- 						<li class="lvl1 parent dropdown"><a href="admin" -->
<!-- 							style="font-size: 15pt"><b>ADMIN PAGE</b> <i -->
<!-- 								class="anm anm-angle-down-l"></i></a> -->
<!-- 							<ul class="dropdown"> -->
<!-- 							<li><a href="fixedSpend" class="site-nav">고정 지출</a></li> -->
								
<!-- 							<li><a href="#" class="site-nav">필요하면 추가하세요</a></li> -->
							
<!-- 							</ul></li> -->
						</c:if>					
					</ul>
				</nav>
				<!--End Desktop Menu-->
			</div>
			<!--Mobile Logo-->
			<div
				class="col-6 col-sm-6 col-md-6 col-lg-2 d-block d-lg-none mobile-logo">
				<div class="logo">
					<a href="home"> <img
						src="/project-template-prac/resources/assets/images/logo.svg"
						alt="Belle Multipurpose Html Template"
						title="Belle Multipurpose Html Template" />
					</a>
				</div>
			</div>
			<!--Mobile Logo-->
			<div class="col-4 col-sm-3 col-md-3 col-lg-2">
				<div class="site-cart">
					<a href="cart" class="site-header__cart" title="Cart"> <i
						class="icon anm anm-bag-l"></i>
					</a>
					<!--Minicart Popup-->
				
				<div id="header-cart" class="block block-cart">
					<c:forEach var="product" items="${ products }" varStatus="status">
						<ul class="mini-products-list">
							<li class="item"><a class="product-image" href="#"> <img
									src=${ product.prodImg } title="" />
							</a>
								<div class="product-details">
									<a href="delete-order?prodId=${ product.prodId }" class="remove"><i class="anm anm-times-l"
										aria-hidden="true"></i></a> <a href="shop" class="edit-i remove"><i
										class="anm anm-edit" aria-hidden="true"></i></a> <a class="pName"
										href="shop">${ product.prodName }</a>
									<!-- <div class="variant-cart">Black / XL</div> -->
									<%-- <div class="wrapQtyBtn">
										<div class="qtyField">
											<span class="label">Qty:</span>
											<a class="qtyBtn minus" href="javascript:void(0);" data-productId="${ product.prodId }"><i class="icon icon-minus"></i></a>
											<input class="cart__qty-input qty" type="text" name="updates[]" id="qty" value="1" pattern="[0-9]*" disabled>
											<a class="qtyBtn plus"  href="javascript:void(0);" data-productId="${ product.prodId }"><i class="icon icon-plus"></i></a>
										</div>
									</div>
									<div class="priceRow">
										<div class="product-price">
											<span class="money"><span id="price-${ product.prodId }">${ product.prodPrice }</span></span>
										</div>
									</div> --%>
								</div>
							</li>
						</ul>
					</c:forEach>
						<!-- <div class="total">
							<div class="total-in">
								<span class="label">Cart Subtotal:</span><span
									class="product-price"><span class="money">$748.00</span></span>
							</div> -->
						<br>
							<div class="buttonSet text-center">
								<a href="order" class="btn btn-secondary btn--small">View
									Cart</a> <a href="#"
									class="btn btn-secondary btn--small">Checkout</a>
							</div>
						</div>
					</div>
				</div>

			</div>
		</div>
	</div>
</div>
<!-- ./Header -->

<!-- Mobile Menu -->
<div class="mobile-nav-wrapper" role="navigation">
	<div class="closemobileMenu">
		<i class="icon anm anm-times-l pull-right"></i> Close Menu
	</div>
	<ul id="MobileNav" class="mobile-nav">
		<li class="lvl1 parent megamenu"><a href="home">Home</a></li>
		<li class="lvl1 parent megamenu"><a href="shop">MENU</a></li>
		
		<li class="lvl1 parent megamenu"><a href="noticeBoard">BOARD
				<i class="anm anm-plus-l"></i>
		</a>
			<ul>
				<li><a href="noticeBoard" class="site-nav">NOTICE</a></li>
				<li><a href="eventBoard" class="site-nav">EVENT</a></li>
				
			</ul></li>
		<li class="lvl1 parent megamenu"><a href="store">BRANCH OFFICE
				<i class="anm anm-plus-l"></i>
		</a>
			<ul>
				<li><a href="store" class="site-nav">지점 소개</a></li>
				<c:if test="${ loginuser.userType }">
				<li><a href="writeStore" class="site-nav">지점 소개 추가</a></li>
				</c:if>		

			</ul></li>
		<li class="lvl1"><a href="order"><b>CART</b></a></li>
	</ul>
</div>
<!-- ./Mobile Menu -->
