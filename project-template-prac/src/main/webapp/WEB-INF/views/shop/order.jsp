<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

    <!DOCTYPE html>
<html class="no-js" lang="en">

<!-- belle/cart-variant1.html   11 Nov 2019 12:44:31 GMT -->
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="x-ua-compatible" content="ie=edge">
<title>Cart Page &ndash; Belle Multipurpose Bootstrap 4 Template</title>
<meta name="description" content="description">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- Favicon -->
<link rel="shortcut icon" href="assets/images/favicon.png" />
<!-- stylesheet -->
<jsp:include page="/WEB-INF/views/modules/common-css.jsp"></jsp:include>

</head>

<body class="page-template belle cart-variant1">
<div class="pageWrapper">
	<!--Search Form Drawer-->
	<div class="search">
        <div class="search__form">
            <form class="search-bar__form" action="#">
                <button class="go-btn search__button" type="submit"><i class="icon anm anm-search-l"></i></button>
                <input class="search__input" type="search" name="q" value="" placeholder="Search entire store..." aria-label="Search" autocomplete="off">
            </form>
            <button type="button" class="search-trigger close-btn"><i class="icon anm anm-times-l"></i></button>
        </div>
    </div>
    <!--End Search Form Drawer-->
    <!--Top Header-->  	     <!--Header-->
    <jsp:include page="/WEB-INF/views/modules/header.jsp"></jsp:include>
    <!--End Header-->		<!--End Top Header-->
<!--     Header
    <div class="header-wrap animated d-flex">
    	<div class="container-fluid">        
            <div class="row align-items-center">
            	Desktop Logo
                <div class="logo col-md-2 col-lg-2 d-none d-lg-block">
                    <a href="index.html">
                    	<img src="assets/images/logo.svg" alt="Belle Multipurpose Html Template" title="Belle Multipurpose Html Template" />
                    </a>
                </div>
                End Desktop Logo
                <div class="col-2 col-sm-3 col-md-3 col-lg-8">
                	<div class="d-block d-lg-none">
                        <button type="button" class="btn--link site-header__menu js-mobile-nav-toggle mobile-nav--open">
                        	<i class="icon anm anm-times-l"></i>
                            <i class="anm anm-bars-r"></i>
                        </button>
                    </div>
                	Desktop Menu
                	<nav class="grid__item" id="AccessibleNav">for mobile
                        <ul id="siteNav" class="site-nav medium center hidearrow">
                            <li class="lvl1 parent megamenu"><a href="#">Home <i class="anm anm-angle-down-l"></i></a>
                                <div class="megamenu style1">
                                    <ul class="grid mmWrapper">
                                        <li class="grid__item large-up--one-whole">
                                            <ul class="grid">
                                                <li class="grid__item lvl-1 col-md-3 col-lg-3"><a href="#" class="site-nav lvl-1">Home Group 1</a>
                                                    <ul class="subLinks">
                                                      <li class="lvl-2"><a href="index.html" class="site-nav lvl-2">Home 1 - Classic</a></li>
                                                      <li class="lvl-2"><a href="home2-default.html" class="site-nav lvl-2">Home 2 - Default</a></li>
                                                      <li class="lvl-2"><a href="home15-funiture.html" class="site-nav lvl-2">Home 15 - Furniture <span class="lbl nm_label1">New</span></a></li>
                                                      <li class="lvl-2"><a href="home3-boxed.html" class="site-nav lvl-2">Home 3 - Boxed</a></li>
                                                      <li class="lvl-2"><a href="home4-fullwidth.html" class="site-nav lvl-2">Home 4 - Fullwidth</a></li>
                                                      <li class="lvl-2"><a href="home5-cosmetic.html" class="site-nav lvl-2">Home 5 - Cosmetic</a></li>
                                                      <li class="lvl-2"><a href="home6-modern.html" class="site-nav lvl-2">Home 6 - Modern</a></li>
                                                      <li class="lvl-2"><a href="home7-shoes.html" class="site-nav lvl-2">Home 7 - Shoes</a></li>
                                                    </ul>
                                                  </li>
                                                <li class="grid__item lvl-1 col-md-3 col-lg-3"><a href="#" class="site-nav lvl-1">Home Group 2</a>
                                                    <ul class="subLinks">
                                                        <li class="lvl-2"><a href="home8-jewellery.html" class="site-nav lvl-2">Home 8 - Jewellery</a></li>
                                                        <li class="lvl-2"><a href="home9-parallax.html" class="site-nav lvl-2">Home 9 - Parallax</a></li>
                                                        <li class="lvl-2"><a href="home10-minimal.html" class="site-nav lvl-2">Home 10 - Minimal</a></li>
                                                        <li class="lvl-2"><a href="home11-grid.html" class="site-nav lvl-2">Home 11 - Grid</a></li>
                                                        <li class="lvl-2"><a href="home12-category.html" class="site-nav lvl-2">Home 12 - Category</a></li>
                                                        <li class="lvl-2"><a href="home13-auto-parts.html" class="site-nav lvl-2">Home 13 - Auto Parts</a></li>
                                                        <li class="lvl-2"><a href="home14-bags.html" class="site-nav lvl-2">Home 14 - Bags <span class="lbl nm_label1">New</span></a></li>
                                                    </ul>
                                                </li>
                                                <li class="grid__item lvl-1 col-md-3 col-lg-3"><a href="#" class="site-nav lvl-1">New Sections</a>
                                                    <ul class="subLinks">
                                                        <li class="lvl-2"><a href="home11-grid.html" class="site-nav lvl-2">Image Gallery</a></li>
                                                        <li class="lvl-2"><a href="home5-cosmetic.html" class="site-nav lvl-2">Featured Product</a></li>
                                                        <li class="lvl-2"><a href="home7-shoes.html" class="site-nav lvl-2">Columns with Items</a></li>
                                                        <li class="lvl-2"><a href="home6-modern.html" class="site-nav lvl-2">Text columns with images</a></li>
                                                        <li class="lvl-2"><a href="home2-default.html" class="site-nav lvl-2">Products Carousel</a></li>
                                                        <li class="lvl-2"><a href="home9-parallax.html" class="site-nav lvl-2">Parallax Banner</a></li>
                                                    </ul>
                                                </li>
                                                <li class="grid__item lvl-1 col-md-3 col-lg-3"><a href="#" class="site-nav lvl-1">New Features</a>
                                                    <ul class="subLinks">
                                                        <li class="lvl-2"><a href="home13-auto-parts.html" class="site-nav lvl-2">Top Information Bar <span class="lbl nm_label1">New</span></a></li>
                                                        <li class="lvl-2"><a href="#" class="site-nav lvl-2">Age Varification <span class="lbl nm_label1">New</span></a></li>
                                                        <li class="lvl-2"><a href="#" class="site-nav lvl-2">Footer Blocks</a></li>
                                                        <li class="lvl-2"><a href="#" class="site-nav lvl-2">2 New Megamenu style</a></li>
                                                        <li class="lvl-2"><a href="#" class="site-nav lvl-2">Show Total Savings <span class="lbl nm_label3">Hot</span></a></li>
                                                        <li class="lvl-2"><a href="#" class="site-nav lvl-2">New Custom Icons</a></li>
                                                        <li class="lvl-2"><a href="#" class="site-nav lvl-2">Auto Currency</a></li>
                                                    </ul>
                                                </li>
                                            </ul>
                                        </li>
                                    </ul>
                                </div>
                            </li>
                            <li class="lvl1 parent megamenu"><a href="#">Shop <i class="anm anm-angle-down-l"></i></a>
                            	<div class="megamenu style4">
                                    <ul class="grid grid--uniform mmWrapper">
                                    	<li class="grid__item lvl-1 col-md-3 col-lg-3"><a href="#" class="site-nav lvl-1">Shop Pages</a>
                                            <ul class="subLinks">
                                                <li class="lvl-2"><a href="shop-left-sidebar.html" class="site-nav lvl-2">Left Sidebar</a></li>
                                                <li class="lvl-2"><a href="shop-right-sidebar.html" class="site-nav lvl-2">Right Sidebar</a></li>
                                                <li class="lvl-2"><a href="shop-fullwidth.html" class="site-nav lvl-2">Fullwidth</a></li>
                                                <li class="lvl-2"><a href="shop-grid-3.html" class="site-nav lvl-2">3 items per row</a></li>
                                                <li class="lvl-2"><a href="shop-grid-4.html" class="site-nav lvl-2">4 items per row</a></li>
                                                <li class="lvl-2"><a href="shop-grid-5.html" class="site-nav lvl-2">5 items per row</a></li>
                                                <li class="lvl-2"><a href="shop-grid-6.html" class="site-nav lvl-2">6 items per row</a></li>
                                                <li class="lvl-2"><a href="shop-grid-7.html" class="site-nav lvl-2">7 items per row</a></li>
                                                <li class="lvl-2"><a href="shop-listview.html" class="site-nav lvl-2">Product Listview</a></li>
                                            </ul>
                                      	</li>
                                      	<li class="grid__item lvl-1 col-md-3 col-lg-3"><a href="#" class="site-nav lvl-1">Shop Features</a>
                                            <ul class="subLinks">
                                                <li class="lvl-2"><a href="shop-left-sidebar.html" class="site-nav lvl-2">Product Countdown <span class="lbl nm_label3">Hot</span></a></li>
                                                <li class="lvl-2"><a href="shop-right-sidebar.html" class="site-nav lvl-2">Infinite Scrolling</a></li>
                                                <li class="lvl-2"><a href="shop-grid-3.html" class="site-nav lvl-2">Pagination - Classic</a></li>
                                                <li class="lvl-2"><a href="shop-grid-6.html" class="site-nav lvl-2">Pagination - Load More</a></li>
                                                <li class="lvl-2"><a href="product-labels.html" class="site-nav lvl-2">Dynamic Product Labels</a></li>
                                                <li class="lvl-2"><a href="product-swatches-style.html" class="site-nav lvl-2">Product Swatches <span class="lbl nm_label2">Sale</span></a></li>
                                                <li class="lvl-2"><a href="product-hover-info.html" class="site-nav lvl-2">Product Hover Info</a></li>
                                                <li class="lvl-2"><a href="shop-grid-3.html" class="site-nav lvl-2">Product Reviews</a></li>
                                                <li class="lvl-2"><a href="shop-left-sidebar.html" class="site-nav lvl-2">Discount Label <span class="lbl nm_label1">New</span></a></li>
                                            </ul>
                                      	</li>
                                        <li class="grid__item lvl-1 col-md-6 col-lg-6">
                                        	<a href="#"><img src="assets/images/megamenu-bg1.jpg" alt="" title="" /></a>
                                        </li>
                                    </ul>
                              	</div>
                            </li>
                        <li class="lvl1 parent megamenu"><a href="#">Product <i class="anm anm-angle-down-l"></i></a>
                        	<div class="megamenu style2">
                                <ul class="grid mmWrapper">
                                    <li class="grid__item one-whole">
                                        <ul class="grid">
                                            <li class="grid__item lvl-1 col-md-3 col-lg-3"><a href="#" class="site-nav lvl-1">Product Page</a>
                                                <ul class="subLinks">
                                                    <li class="lvl-2"><a href="product-layout-1.html" class="site-nav lvl-2">Product Layout 1</a></li>
                                                    <li class="lvl-2"><a href="product-layout-2.html" class="site-nav lvl-2">Product Layout 2</a></li>
                                                    <li class="lvl-2"><a href="product-layout-3.html" class="site-nav lvl-2">Product Layout 3</a></li>
                                                    <li class="lvl-2"><a href="product-with-left-thumbs.html" class="site-nav lvl-2">Product With Left Thumbs</a></li>
                                                    <li class="lvl-2"><a href="product-with-right-thumbs.html" class="site-nav lvl-2">Product With Right Thumbs</a></li>
                                                    <li class="lvl-2"><a href="product-with-bottom-thumbs.html" class="site-nav lvl-2">Product With Bottom Thumbs</a></li>
                                                </ul>
                                            </li>
                                            <li class="grid__item lvl-1 col-md-3 col-lg-3"><a href="#" class="site-nav lvl-1">Product Features</a>
                                                    <ul class="subLinks">
                                                      <li class="lvl-2"><a href="short-description.html" class="site-nav lvl-2">Short Description</a></li>
                                                      <li class="lvl-2"><a href="product-countdown.html" class="site-nav lvl-2">Product Countdown</a></li>
                                                      <li class="lvl-2"><a href="product-video.html" class="site-nav lvl-2">Product Video</a></li>
                                                      <li class="lvl-2"><a href="product-quantity-message.html" class="site-nav lvl-2">Product Quantity Message</a></li>
                                                      <li class="lvl-2"><a href="product-visitor-sold-count.html" class="site-nav lvl-2">Product Visitor/Sold Count <span class="lbl nm_label3">Hot</span></a></li>
                                                      <li class="lvl-2"><a href="product-zoom-lightbox.html" class="site-nav lvl-2">Product Zoom/Lightbox <span class="lbl nm_label1">New</span></a></li>
                                                    </ul>
                                                  </li>
                                            <li class="grid__item lvl-1 col-md-3 col-lg-3"><a href="#" class="site-nav lvl-1">Product Features</a>
                                                    <ul class="subLinks">
                                                      <li class="lvl-2"><a href="product-with-variant-image.html" class="site-nav lvl-2">Product with Variant Image</a></li>
                                                      <li class="lvl-2"><a href="product-with-color-swatch.html" class="site-nav lvl-2">Product with Color Swatch</a></li>
                                                      <li class="lvl-2"><a href="product-with-image-swatch.html" class="site-nav lvl-2">Product with Image Swatch</a></li>
                                                      <li class="lvl-2"><a href="product-with-dropdown.html" class="site-nav lvl-2">Product with Dropdown</a></li>
                                                      <li class="lvl-2"><a href="product-with-rounded-square.html" class="site-nav lvl-2">Product with Rounded Square</a></li>
                                                      <li class="lvl-2"><a href="swatches-style.html" class="site-nav lvl-2">Product Swatches All Style</a></li>
                                                    </ul>
                                                </li>
                                                <li class="grid__item lvl-1 col-md-3 col-lg-3"><a href="#" class="site-nav lvl-1">Product Features</a>
                                                    <ul class="subLinks">
                                                      <li class="lvl-2"><a href="product-accordion.html" class="site-nav lvl-2">Product Accordion</a></li>
                                                      <li class="lvl-2"><a href="product-pre-orders.html" class="site-nav lvl-2">Product Pre-orders <span class="lbl nm_label1">New</span></a></li>
                                                      <li class="lvl-2"><a href="product-labels-detail.html" class="site-nav lvl-2">Product Labels</a></li>
                                                      <li class="lvl-2"><a href="product-discount.html" class="site-nav lvl-2">Product Discount In %</a></li>
                                                      <li class="lvl-2"><a href="product-shipping-message.html" class="site-nav lvl-2">Product Shipping Message</a></li>
                                                      <li class="lvl-2"><a href="size-guide.html" class="site-nav lvl-2">Size Guide <span class="lbl nm_label1">New</span></a></li>
                                                    </ul>
                                                </li>
                                        </ul>
                                    </li>
                                  	<li class="grid__item large-up--one-whole imageCol"><a href="#"><img src="assets/images/megamenu-bg2.jpg" alt=""></a></li>
                                </ul>
                          	</div>
                        </li>
                        <li class="lvl1 parent dropdown"><a href="#">Pages <i class="anm anm-angle-down-l"></i></a>
                          <ul class="dropdown">
                          	<li><a href="cart-variant1.html" class="site-nav">Cart Page <i class="anm anm-angle-right-l"></i></a>
                            	<ul class="dropdown">
                                    <li><a href="cart-variant1.html" class="site-nav">Cart Variant1</a></li>
                                    <li><a href="cart-variant2.html" class="site-nav">Cart Variant2</a></li>
                                 </ul>
                            </li>
                            <li><a href="compare-variant1.html" class="site-nav">Compare Product <i class="anm anm-angle-right-l"></i></a>
                                <ul class="dropdown">
                                    <li><a href="compare-variant1.html" class="site-nav">Compare Variant1</a></li>
                                    <li><a href="compare-variant2.html" class="site-nav">Compare Variant2</a></li>
                                 </ul>
                            </li>
							<li><a href="checkout.html" class="site-nav">Checkout</a></li>
                            <li><a href="about-us.html" class="site-nav">About Us <span class="lbl nm_label1">New</span> </a></li>
                            <li><a href="contact-us.html" class="site-nav">Contact Us</a></li>
                            <li><a href="faqs.html" class="site-nav">FAQs</a></li>
                            <li><a href="lookbook1.html" class="site-nav">Lookbook <i class="anm anm-angle-right-l"></i></a>
                              <ul>
                                <li><a href="lookbook1.html" class="site-nav">Style 1</a></li>
                                <li><a href="lookbook2.html" class="site-nav">Style 2</a></li>
                              </ul>
                            </li>
                            <li><a href="404.html" class="site-nav">404</a></li>
                            <li><a href="coming-soon.html" class="site-nav">Coming soon <span class="lbl nm_label1">New</span> </a></li>
                          </ul>
                        </li>
                        <li class="lvl1 parent dropdown"><a href="#">Blog <i class="anm anm-angle-down-l"></i></a>
                          <ul class="dropdown">
                            <li><a href="blog-left-sidebar.html" class="site-nav">Left Sidebar</a></li>
                            <li><a href="blog-right-sidebar.html" class="site-nav">Right Sidebar</a></li>
                            <li><a href="blog-fullwidth.html" class="site-nav">Fullwidth</a></li>
                            <li><a href="blog-grid-view.html" class="site-nav">Gridview</a></li>
                            <li><a href="blog-article.html" class="site-nav">Article</a></li>
                          </ul>
                        </li>
                        <li class="lvl1"><a href="#"><b>Buy Now!</b></a></li>
                      </ul>
                    </nav>
                    End Desktop Menu
                </div>
                <div class="col-6 col-sm-6 col-md-6 col-lg-2 d-block d-lg-none mobile-logo">
                	<div class="logo">
                        <a href="index.html">
                            <img src="assets/images/logo.svg" alt="Belle Multipurpose Html Template" title="Belle Multipurpose Html Template" />
                        </a>
                    </div>
                </div>
                <div class="col-4 col-sm-3 col-md-3 col-lg-2">
                	<div class="site-cart">
                    	<a href="#" class="site-header__cart" title="Cart">
                        	<i class="icon anm anm-bag-l"></i>
                            <span id="CartCount" class="site-header__cart-count" data-cart-render="item_count">2</span>
                        </a>
                        Minicart Popup
                        <div id="header-cart" class="block block-cart">
                        	<ul class="mini-products-list">
                                <li class="item">
                                	<a class="product-image" href="#">
                                    	<img src="assets/images/product-images/cape-dress-1.jpg" alt="3/4 Sleeve Kimono Dress" title="" />
                                    </a>
                                    <div class="product-details">
                                    	<a href="#" class="remove"><i class="anm anm-times-l" aria-hidden="true"></i></a>
                                        <a href="#" class="edit-i remove"><i class="anm anm-edit" aria-hidden="true"></i></a>
                                        <a class="pName" href="cart.html">Sleeve Kimono Dress</a>
                                        <div class="variant-cart">Black / XL</div>
                                        <div class="wrapQtyBtn">
                                            <div class="qtyField">
                                            	<span class="label">Qty:</span>
                                                <a class="qtyBtn minus" href="javascript:void(0);"><i class="fa anm anm-minus-r" aria-hidden="true"></i></a>
                                                <input type="text" id="Quantity" name="quantity" value="1" class="product-form__input qty">
                                                <a class="qtyBtn plus" href="javascript:void(0);"><i class="fa anm anm-plus-r" aria-hidden="true"></i></a>
                                            </div>
                                        </div>
                                        <div class="priceRow">
                                        	<div class="product-price">
                                            	<span class="money">$59.00</span>
                                            </div>
                                         </div>
									</div>
                                </li>
                                <li class="item">
                                	<a class="product-image" href="#">
                                    	<img src="assets/images/product-images/cape-dress-2.jpg" alt="Elastic Waist Dress - Black / Small" title="" />
                                    </a>
                                    <div class="product-details">
                                    	<a href="#" class="remove"><i class="anm anm-times-l" aria-hidden="true"></i></a>
                                        <a href="#" class="edit-i remove"><i class="anm anm-edit" aria-hidden="true"></i></a>
                                        <a class="pName" href="cart.html">Elastic Waist Dress</a>
                                        <div class="variant-cart">Gray / XXL</div>
                                        <div class="wrapQtyBtn">
                                            <div class="qtyField">
                                            	<span class="label">Qty:</span>
                                                <a class="qtyBtn minus" href="javascript:void(0);"><i class="fa anm anm-minus-r" aria-hidden="true"></i></a>
                                                <input type="text" id="Quantity" name="quantity" value="1" class="product-form__input qty">
                                                <a class="qtyBtn plus" href="javascript:void(0);"><i class="fa anm anm-plus-r" aria-hidden="true"></i></a>
                                            </div>
                                        </div>
                                       	<div class="priceRow">
                                            <div class="product-price">
                                                <span class="money">$99.00</span>
                                            </div>
                                        </div>
                                    </div>
                                </li>
                            </ul>
                            <div class="total">
                            	<div class="total-in">
                                	<span class="label">Cart Subtotal:</span><span class="product-price"><span class="money">$748.00</span></span>
                                </div>
                                 <div class="buttonSet text-center">
                                    <a href="cart.html" class="btn btn-secondary btn--small">View Cart</a>
                                    <a href="checkout.html" class="btn btn-secondary btn--small">Checkout</a>
                                </div>
                            </div>
                        </div>
                        End Minicart Popup
                    </div>
                    <div class="site-header__search">
                    	<button type="button" class="search-trigger"><i class="icon anm anm-search-l"></i></button>
                    </div>
                </div>
        	</div>
        </div>
    </div>
    End Header -->

    <br><br><br><br>
    <!--Body Content-->
    <div id="page-content">
    	<!--Page Title-->
    	<div class="page section-header text-center">
			<div class="page-title">
        		<div class="wrapper"><h1 class="page-width">Shopping Cart</h1></div>
      		</div>
		</div>
        <!--End Page Title-->
        
        <div class="container">
        	<div class="row">
                <div class="col-12 col-sm-12 col-md-12 col-lg-12 main-col">
                	<div class="alert alert-success text-uppercase" role="alert">
						<i class="icon anm anm-truck-l icon-large"></i> &nbsp;<strong>Congratulations!</strong> You've got free shipping!
					</div>
                	<form action="#" method="post" class="cart style2">
                		<table>
                            <thead class="cart__row cart__header">
                                <tr>
                                	<th class="text-center">No</th>
                                    <th class="text-center">Product</th>
                                    <th class="text-center">Price</th>
                                    <th class="text-center">Quantity</th>
                                    <th class="text-right">Total</th>
                                    <th class="action">&nbsp;</th>
                                </tr>
                            </thead>
                            <c:forEach var="order" items="${ orders }">
                            
                            </c:forEach>
                    		<%-- <tbody>
                                <tr class="cart__row border-bottom line1 cart-flex border-top">
                                    <td class="cart__image-wrapper cart-flex-item">
                                        <a href="#"><img class="cart__image" src="assets/images/product-images/product-image30.jpg" alt=></a>
                                    </td>
                                    <td class="cart__meta small--text-left cart-flex-item">
                                        <div class="list-view-item__title">
                                            <a href="#">Elastic Waist Dress </a>
                                        </div>
                                        
                                        <div class="cart__meta-text">
                                            Color: Navy<br>Size: Small<br>
                                        </div>
                                    </td>
                                    <td class="cart__price-wrapper cart-flex-item">
                                        <span class="money">$735.00</span>
                                    </td>
                                    <td class="cart__update-wrapper cart-flex-item text-right">
                                        <div class="cart__qty text-center">
                                            <div class="qtyField">
                                                <a class="qtyBtn minus" href="javascript:void(0);"><i class="icon icon-minus"></i></a>
                                                <input class="cart__qty-input qty" type="text" name="updates[]" id="qty" value="1" pattern="[0-9]*">
                                                <a class="qtyBtn plus" href="javascript:void(0);"><i class="icon icon-plus"></i></a>
                                            </div>
                                        </div>
                                    </td>
                                    <td class="text-right small--hide cart-price">
                                        <div><span class="money">$735.00</span></div>
                                    </td>
                                    <td class="text-center small--hide"><a href="#" class="btn btn--secondary cart__remove" title="Remove tem"><i class="icon icon anm anm-times-l"></i></a></td>
                                </tr>
                                <tr class="cart__row border-bottom line1 cart-flex border-top">
                                    <td class="cart__image-wrapper cart-flex-item">
                                        <a href="#"><img class="cart__image" src="assets/images/product-images/home7-product5.jpg" alt="3/4 Sleeve Kimono Dress"></a>
                                    </td>
                                    <td class="cart__meta small--text-left cart-flex-item">
                                        <div class="list-view-item__title">
                                            <a href="#">3/4 Sleeve Kimono Dress</a>
                                        </div>
                                        <div class="cart__meta-text">
                                            Color: Gray<br>Size: Large<br>
                                        </div>
                                    </td>
                                    <td class="cart__price-wrapper cart-flex-item">
                                        <span class="money">$735.00</span>
                                    </td>
                                    <td class="cart__update-wrapper cart-flex-item text-right">
                                        <div class="cart__qty text-center">
                                            <div class="qtyField">
                                                <a class="qtyBtn minus" href="javascript:void(0);"><i class="icon icon-minus"></i></a>
                                                <input class="cart__qty-input qty" type="text" name="updates[]" id="qty" value="1" pattern="[0-9]*">
                                                <a class="qtyBtn plus" href="javascript:void(0);"><i class="icon icon-plus"></i></a>
                                            </div>
                                        </div>
                                    </td>
                                    <td class="text-right small--hide cart-price">
                                        <div><span class="money">$735.00</span></div>
                                    </td>
                                    <td class="text-center small--hide"><a href="#" class="btn btn--secondary cart__remove" title="Remove tem"><i class="icon icon anm anm-times-l"></i></a></td>
                                </tr>
                                <tr class="cart__row border-bottom line1 cart-flex border-top">
                                    <td class="cart__image-wrapper cart-flex-item">
                                        <a href="#"><img class="cart__image" src="assets/images/product-images/home7-product4.jpg" alt="Minerva Dress black"></a>
                                    </td>
                                    <td class="cart__meta small--text-left cart-flex-item">
                                        <div class="list-view-item__title">
                                            <a href="#">Minerva Dress black</a>
                                        </div>
                                    </td>
                                    <td class="cart__price-wrapper cart-flex-item">
                                        <span class="money">$526.00</span>
                                    </td>
                                    <td class="cart__update-wrapper cart-flex-item text-right">
                                        <div class="cart__qty text-center">
                                            <div class="qtyField">
                                                <a class="qtyBtn minus" href="javascript:void(0);"><i class="icon icon-minus"></i></a>
                                                <input class="cart__qty-input qty" type="text" name="updates[]" id="qty" value="1" pattern="[0-9]*">
                                                <a class="qtyBtn plus" href="javascript:void(0);"><i class="icon icon-plus"></i></a>
                                            </div>
                                        </div>
                                    </td>
                                    <td class="text-right small--hide cart-price">
                                        <div><span class="money">$735.00</span></div>
                                    </td>
                                    <td class="text-center small--hide"><a href="#" class="btn btn--secondary cart__remove" title="Remove tem"><i class="icon icon anm anm-times-l"></i></a></td>
                                </tr>
                            </tbody> --%>
                    		<tfoot>
                                <tr>
                                    <td colspan="3" class="text-left"><a href="shop" class="btn btn-secondary btn--small cart-continue">Continue shopping</a></td>
                                    <td colspan="3" class="text-right">
	                                    <button type="submit" name="clear" class="btn btn-secondary btn--small  small--hide">Clear Cart</button>
                                    	<button type="submit" name="update" class="btn btn-secondary btn--small cart-continue ml-2">Update Cart</button>
                                    </td>
                                </tr>
                            </tfoot>
                    </table> 
                    </form>                   
               	</div>
                
                
                <div class="container mt-4">
                    <div class="row">
                    	<div class="col-12 col-sm-12 col-md-4 col-lg-4 mb-4">
                        	<h5>Discount Codes</h5>
                            <form action="#" method="post">
                            	<div class="form-group">
                                    <label for="address_zip">Enter your coupon code if you have one.</label>
                                    <input type="text" name="coupon">
                                </div>
                                <div class="actionRow">
                                    <div><input type="button" class="btn btn-secondary btn--small" value="Apply Coupon"></div>
                                </div>
                            </form>
                        </div>
                        <div class="col-12 col-sm-12 col-md-4 col-lg-4 mb-4">
                        	<h5>Estimate Shipping and Tax</h5>
							<form action="#" method="post">
                                <div class="form-group">
                                    <label for="address_zip">Postal/Zip Code</label>
                                    <input type="text" id="address_zip" name="address[zip]">
                                </div>
    
                                <div class="actionRow">
                                    <div><input type="button" class="btn btn-secondary btn--small" value="Calculate shipping"></div>
                                </div>
                            </form>
                        </div>
                        
                        <div class="col-12 col-sm-12 col-md-4 col-lg-4 cart__footer">
                            <div class="solid-border">	
                              <div class="row border-bottom pb-2">
                                <span class="col-12 col-sm-6 cart__subtotal-title">Subtotal</span>
                                <span class="col-12 col-sm-6 text-right"><span class="money">$735.00</span></span>
                              </div>
                              <div class="row border-bottom pb-2 pt-2">
                                <span class="col-12 col-sm-6 cart__subtotal-title">Tax</span>
                                <span class="col-12 col-sm-6 text-right">$10.00</span>
                              </div>
                              <div class="row border-bottom pb-2 pt-2">
                                <span class="col-12 col-sm-6 cart__subtotal-title">Shipping</span>
                                <span class="col-12 col-sm-6 text-right">Free shipping</span>
                              </div>
                              <div class="row border-bottom pb-2 pt-2">
                                <span class="col-12 col-sm-6 cart__subtotal-title"><strong>Grand Total</strong></span>
                                <span class="col-12 col-sm-6 cart__subtotal-title cart__subtotal text-right"><span class="money">$1001.00</span></span>
                              </div>
                              <div class="cart__shipping">Shipping &amp; taxes calculated at checkout</div>
                              <p class="cart_tearm">
                                <label>
                                  <input type="checkbox" name="tearm" class="checkbox" value="tearm" required="">
                                  I agree with the terms and conditions
								</label>
                              </p>
                              <input type="submit" name="checkout" id="cartCheckout" class="btn btn--small-wide checkout" value="Proceed To Checkout" disabled="disabled">
                              <div class="paymnet-img"><img src="assets/images/payment-img.jpg" alt="Payment"></div>
                              <p><a href="#;">Checkout with Multiple Addresses</a></p>
                            </div>
        
                        </div>
                    </div>
                </div>
                
            </div>
        </div>
        
    </div>
    <!--End Body Content-->
    
    <!--Footer-->
    <jsp:include page="/WEB-INF/views/modules/footer.jsp"></jsp:include>
    <!--End Footer-->
    
    <!--Scoll Top-->
    <span id="site-scroll"><i class="icon anm anm-angle-up-r"></i></span>
    <!--End Scoll Top-->
    
    <jsp:include page="/WEB-INF/views/modules/common-js.jsp"></jsp:include>
    
     <!-- Including Jquery -->
     <script src="assets/js/vendor/jquery-3.3.1.min.js"></script>
     <script src="assets/js/vendor/jquery.cookie.js"></script>
     <script src="assets/js/vendor/modernizr-3.6.0.min.js"></script>
     <script src="assets/js/vendor/wow.min.js"></script>
     <!-- Including Javascript -->
     <script src="assets/js/bootstrap.min.js"></script>
     <script src="assets/js/plugins.js"></script>
     <script src="assets/js/popper.min.js"></script>
     <script src="assets/js/lazysizes.js"></script>
     <script src="assets/js/main.js"></script>
</div>
</body>

<!-- belle/cart-variant1.html   11 Nov 2019 12:44:32 GMT -->
</html>