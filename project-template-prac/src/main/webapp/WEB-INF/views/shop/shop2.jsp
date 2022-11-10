<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html class="no-js" lang="ko">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="x-ua-compatible" content="ie=edge">
<title>COFFEE &ndash; Belle Multipurpose Bootstrap 4 Template</title>
<meta name="description" content="description">
<meta name="viewport" content="width=device-width, initial-scale=1">

<!-- stylesheet -->
<jsp:include page="/WEB-INF/views/modules/common-css.jsp"></jsp:include>

</head>
<body class="template-collection belle">
<div class="pageWrapper">

   
    <!--Top Header-->  	     <!--Header-->
    <jsp:include page="/WEB-INF/views/modules/header.jsp"></jsp:include>
    <!--End Header-->		<!--End Top Header-->
    
    <!--Body Content-->
    <div id="page-content">
    	<!--Collection Banner-->
    	<div class="collection-header">
			<div class="collection-hero">
        		<div class="collection-hero__image"><img class="blur-up lazyload" data-src="/project-template-prac/resources/assets/images/cat-women2.jpg" src="/project-template-prac/resources/assets/images/cat-women2.jpg" alt="Women" title="Women" /></div>
        		<div class="collection-hero__title-wrapper"><h1 class="collection-hero__title page-width">Menu</h1></div>
      		</div>
		</div>
        <!--End Collection Banner-->
        
        <div class="container">
        	<div class="row">
            	<!--Sidebar-->
            	<div class="col-12 col-sm-12 col-md-3 col-lg-3 sidebar filterbar" >
                	<div class="closeFilter d-block d-md-none d-lg-none"><i class="icon icon anm anm-times-l"></i></div>
                	<div class="sidebar_tags">
                    	<!--Categories-->
                    	<div class="sidebar_widget categories filter-widget" style="position: fixed" >
                            <div class="widget-title"><h2>Categories</h2></div>
                            <div class="widget-content">
                                <ul class="sidebar_categories">
                                    <li class="level1 sub-level"><a href="#;" class="site-nav">HOT</a></li>
                                    <li class="level1 sub-level"><a href="#;" class="site-nav">ICE</a></li>
                            </div>
                        </div>
                        <!--Categories-->

                    </div>
                </div>
                <!--End Sidebar-->
                <!--Main Content-->
                <div class="col-12 col-sm-12 col-md-9 col-lg-9 main-col">
                	<div class="category-description">
                    	<h3>Drinks</h3>
                    </div>
                    <hr>
                    <c:forEach var="product" items="${ products }" varStatus="status">
                	<div class="productList">
                    	<!--Toolbar-->
<!--                         <button type="button" class="btn btn-filter d-block d-md-none d-lg-none"> Product Filters</button>
                    	<div class="toolbar">
                        	<div class="filters-toolbar-wrapper">
                            	<div class="row">
                                	<div class="col-4 col-md-4 col-lg-4 filters-toolbar__item collection-view-as d-flex justify-content-start align-items-center">
                                    	<a href="shop-left-sidebar.html" title="Grid View" class="change-view change-view--active">
                                        	<img src="/project-template-prac/resources/assets/images/grid.jpg" alt="Grid" />
                                        </a>
                                        <a href="shop-listview.html" title="List View" class="change-view">
                                        	<img src="/project-template-prac/resources/assets/images/list.jpg" alt="List" />
                                        </a>
                                    </div>
                                    <div class="col-4 col-md-4 col-lg-4 text-center filters-toolbar__item filters-toolbar__item--count d-flex justify-content-center align-items-center">
                                    	<span class="filters-toolbar__product-count">Showing: 22</span>
                                    </div>
                                    <div class="col-4 col-md-4 col-lg-4 text-right">
                                    	<div class="filters-toolbar__item">
                                      		<label for="SortBy" class="hidden">Sort</label>
                                      		<select name="SortBy" id="SortBy" class="filters-toolbar__input filters-toolbar__input--sort">
                                                <option value="title-ascending" selected="selected">Sort</option>
                                                <option>Best Selling</option>
                                                <option>Alphabetically, A-Z</option>
                                                <option>Alphabetically, Z-A</option>
                                                <option>Price, low to high</option>
                                                <option>Price, high to low</option>
                                                <option>Date, new to old</option>
                                                <option>Date, old to new</option>
                                      		</select>
                                      		<input class="collection-header__default-sort" type="hidden" value="manual">
                                        </div>
                                    </div>

                                </div>
                            </div>
                        </div> -->
                        <!--End Toolbar-->
                        
                        <div class="grid-products grid--view-items">
                            <div class="row">
                                <div class="col-6 col-sm-6 col-md-4 col-lg-4 item">
                                    <!-- start product image -->
	                                  <div class="product-image">
	                                      <!-- start product image -->
	                                      <a href="#">
	                                          <!-- image -->
	                                          <img class="primary blur-up lazyload" data-src="${ product.prodImg }" alt="image" title="product">
	                                          <!-- End image -->
	                                          <!-- Hover image -->
	                                          <img class="hover blur-up lazyload" data-src="${ product.prodImg }" alt="image" title="product">
	                                          <!-- End hover image -->
	                                          <!-- product label -->
	                                         <!--  <div class="product-labels rectangular"><span class="lbl on-sale">-16%</span> <span class="lbl pr-label1">new</span></div> -->
	                                          <!-- End product label -->
	                                      </a>
	                                      <!-- end product image -->
	  
	                                      <!-- Start product button -->
	                                      <form class="variants add addform" id="addform" action="update-order" method="post">
	                                      	<input type="hidden" name="prodId" value="1">
	                                          <button class="btn btn-addto-cart update-order" type="button">ADD TO CART</button>
	                                      </form>
	                                      
	                                      <div class="button-set">
	                                          <a href="javascript:void(0)" title="Quick View" class="quick-view-popup quick-view" data-toggle="modal" data-target="#content_quickview">
	                                              <i class="icon anm anm-search-plus-r"></i>
	                                          </a>
	                                          <div class="wishlist-btn">
	                                              <a class="wishlist add-to-wishlist" href="#" title="Add to Wishlist">
	                                                  <i class="icon anm anm-heart-l"></i>
	                                              </a>
	                                          </div>
	                                          <div class="compare-btn">
	                                              <a class="compare add-to-compare" href="compare.html" title="Add to Compare">
	                                                  <i class="icon anm anm-random-r"></i>
	                                              </a>
	                                          </div>
	                                      </div>
	                                      <!-- end product button -->
	                                  </div>
                                 	</div>
                               	</div>
                              	</div>
                             	</div>
                                    <!-- end product image -->
    
                                    <!--start product details -->
                                    <div class="product-details text-center">
                            
                                        <!-- product name -->
                                        <div class="product-name">
                                            <a href="#">${ product.prodName }</a>
                                        </div>
                                        <!-- End product name -->
                                        <!-- product price -->
                                        <div class="product-price">
                                            <%-- <span class="old-price">${ product.prodPrice }</span> --%>
                                            <span class="price">${ product.prodPrice }</span>
                                        </div>
                                        <!-- End product price -->
    								  </div>
    								  </c:forEach>
                                    </div>
                                    <!-- End product details -->
                                	</div>
                               	
                               
                                <!-- <div class="col-6 col-sm-6 col-md-4 col-lg-4 item">
                                    start product image
                                    <div class="product-image">
                                        start product image
                                        <a href="#">
                                            image
                                            <img class="primary blur-up lazyload" data-src="/project-template-prac/resources/assets/images/product-images/caffe-latte.png" src="/project-template-prac/resources/assets/images/product-images/caffe-latte.png" alt="image" title="product">
                                            End image
                                            Hover image
                                            <img class="hover blur-up lazyload" data-src="/project-template-prac/resources/assets/images/product-images/caffe-latte.png" src="/project-template-prac/resources/assets/images/product-images/caffe-latte.png" alt="image" title="product">
                                            End hover image
                                        </a>
                                        end product image

                                        Start product button
                                         <form class="variants add addform" action="update-order" method="post">
                                        	<input type="hidden" name="prodId" value="2">
                                           <button class="btn btn-addto-cart update-order" type="button">ADD TO CART</button>
                                        </form>
                                        <div class="button-set">
                                            <a href="javascript:void(0)" title="Quick View" class="quick-view-popup quick-view" data-toggle="modal" data-target="#content_quickview">
                                                        <i class="icon anm anm-search-plus-r"></i>
                                                    </a>
                                            <div class="wishlist-btn">
                                                <a class="wishlist add-to-wishlist" href="#" title="Add to Wishlist">
                                                    <i class="icon anm anm-heart-l"></i>
                                                </a>
                                            </div>
                                            <div class="compare-btn">
                                                <a class="compare add-to-compare" href="compare.html" title="Add to Compare">
                                                    <i class="icon anm anm-random-r"></i>
                                                </a>
                                            </div>
                                        </div>
                                        end product button
                                    </div>
                                    end product image

                                    start product details
                                 <div class="product-details text-center">
                                        product name
                                        <div class="product-name">
                                            <a href="#">카페 라떼</a>
                                        </div>
                                        End product name
                                        product price
                                        <div class="product-price">
                                            <span class="price">$748.00</span>
                                        </div>
                              
                                    </div>
                                    End product details
                                </div>
                                 <div class="col-6 col-sm-6 col-md-4 col-lg-4 item">
                                    start product image
                                    <div class="product-image">
                                        start product image
                                        <a href="#">
                                            image
                                            <img class="primary blur-up lazyload" data-src="/project-template-prac/resources/assets/images/product-images/caffe-mocha.png" src="/project-template-prac/resources/assets/images/product-images/caffe-mocha.png" alt="image" title="product">
                                            End image
                                            Hover image
                                            <img class="hover blur-up lazyload" data-src="/project-template-prac/resources/assets/images/product-images/caffe-mocha.png" src="/project-template-prac/resources/assets/images/product-images/caffe-mocha.png" alt="image" title="product">
                                            End hover image
                                            product label
                                            <div class="product-labels rectangular"><span class="lbl pr-label2">Hot</span></div>
                                            End product label
                                        </a>
                                        end product image

                                        Start product button
                                            <form class="variants add" action="update-order" method="post">
                                        	<input type="hidden" name="prodId" value="3">
                                            <button class="btn btn-addto-cart update-order" type="button">ADD TO CART</button>
                                        </form>
                                        <div class="button-set">
                                            <a href="javascript:void(0)" title="Quick View" class="quick-view-popup quick-view" data-toggle="modal" data-target="#content_quickview">
                                                        <i class="icon anm anm-search-plus-r"></i>
                                                    </a>
                                            <div class="wishlist-btn">
                                                <a class="wishlist add-to-wishlist" href="#" title="Add to Wishlist">
                                                    <i class="icon anm anm-heart-l"></i>
                                                </a>
                                            </div>
                                            <div class="compare-btn">
                                                <a class="compare add-to-compare" href="compare.html" title="Add to Compare">
                                                    <i class="icon anm anm-random-r"></i>
                                                </a>
                                            </div>
                                        </div>
                                        end product button
                                    </div>
                                    end product image

                                    start product details
                                    <div class="product-details text-center">
                                        product name
                                        <div class="product-name">
                                            <a href="#">카페 모카</a>
                                        </div>
                                        End product name
                                        product price
                                        <div class="product-price">
                                            <span class="price">$550.00</span>
                                        </div>
                                        End product price
                                    </div>
                                    End product details
                                </div>
                                <div class="col-6 col-sm-6 col-md-4 col-lg-4 item">
                                    start product image
                                    <div class="product-image">
                                        start product image
                                        <a href="#">
                                            image
                                            <img class="primary blur-up lazyload" data-src="/project-template-prac/resources/assets/images/product-images/cappuccino.png" src="/project-template-prac/resources/assets/images/product-images/cappuccino.png" alt="image" title="product" />
                                            End image
                                            Hover image
                                            <img class="hover blur-up lazyload" data-src="/project-template-prac/resources/assets/images/product-images/cappuccino.png" src="/project-template-prac/resources/assets/images/product-images/cappuccino.png" alt="image" title="product" />
                                            End hover image
                                            product label
                                            <div class="product-labels"><span class="lbl on-sale">Sale</span></div>
                                            End product label
                                        </a>
                                        end product image

                                        Start product button
                                        <form class="variants add" action="#" onclick="window.location.href='cart.html'"method="post">
                                            <button class="btn btn-addto-cart" type="button">Select Options</button>
                                        </form>
                                        <div class="button-set">
                                            <a href="javascript:void(0)" title="Quick View" class="quick-view-popup quick-view" data-toggle="modal" data-target="#content_quickview">
                                                        <i class="icon anm anm-search-plus-r"></i>
                                                    </a>
                                            <div class="wishlist-btn">
                                                <a class="wishlist add-to-wishlist" href="#" title="Add to Wishlist">
                                                    <i class="icon anm anm-heart-l"></i>
                                                </a>
                                            </div>
                                            <div class="compare-btn">
                                                <a class="compare add-to-compare" href="compare.html" title="Add to Compare">
                                                    <i class="icon anm anm-random-r"></i>
                                                </a>
                                            </div>
                                        </div>
                                        end product button
                                    </div>
                                    end product image

                                    start product details
                                    <div class="product-details text-center">
                                        product name
                                        <div class="product-name">
                                            <a href="#">카푸치노</a>
                                        </div>
                                        End product name
                                        product price
                                        <div class="product-price">
                                            <span class="old-price">$900.00</span>
                                            <span class="price">$788.00</span>
                                        </div>
                                        End product price
                                       
                                    </div>
                                    End product details
                                </div>
                                <div class="col-6 col-sm-6 col-md-4 col-lg-4 item">
                                    start product image
                                    <div class="product-image">
                                        start product image
                                        <a href="#">
                                            image
                                            <img class="primary blur-up lazyload" data-src="/project-template-prac/resources/assets/images/product-images/caramel-macchiato.png" src="/project-template-prac/resources/assets/images/product-images/caramel-macchiato.png" alt="image" title="product" />
                                            End image
                                            Hover image
                                            <img class="hover blur-up lazyload" data-src="/project-template-prac/resources/assets/images/product-images/caramel-macchiato.png" src="/project-template-prac/resources/assets/images/product-images/caramel-macchiato.png" alt="image" title="product" />
                                            End hover image
                                            product label
                                            <div class="product-labels"><span class="lbl on-sale">Sale</span></div>
                                            End product label
                                        </a>
                                        end product image

                                        Start product button
                                        <form class="variants add" action="#" onclick="window.location.href='cart.html'"method="post">
                                            <button class="btn btn-addto-cart" type="button">Add To Cart</button>
                                        </form>
                                        <div class="button-set">
                                            <a href="javascript:void(0)" title="Quick View" class="quick-view-popup quick-view" data-toggle="modal" data-target="#content_quickview">
                                                        <i class="icon anm anm-search-plus-r"></i>
                                                    </a>
                                            <div class="wishlist-btn">
                                                <a class="wishlist add-to-wishlist" href="#" title="Add to Wishlist">
                                                    <i class="icon anm anm-heart-l"></i>
                                                </a>
                                            </div>
                                            <div class="compare-btn">
                                                <a class="compare add-to-compare" href="compare.html" title="Add to Compare">
                                                    <i class="icon anm anm-random-r"></i>
                                                </a>
                                            </div>
                                        </div>
                                        end product button
                                    </div>
                                    end product image

                                    start product details
                                    <div class="product-details text-center">
                                        product name
                                        <div class="product-name">
                                            <a href="#">카라멜 마끼야또</a>
                                        </div>
                                        End product name
                                        product price
                                        <div class="product-price">
                                            <span class="price">$550.00</span>
                                        </div>
                                        End product price
                                       
                                    </div>
                                    End product details
                                </div>
                                <div class="col-6 col-sm-6 col-md-4 col-lg-4 item">
                                    start product image
                                    <div class="product-image">
                                        start product image
                                        <a href="#">
                                            image
                                            <img class="primary blur-up lazyload" data-src="/project-template-prac/resources/assets/images/product-images/chai-tea-latte.png" src="/project-template-prac/resources/assets/images/product-images/chai-tea-latte.png" alt="image" title="product" />
                                            End image
                                            Hover image
                                            <img class="hover blur-up lazyload" data-src="/project-template-prac/resources/assets/images/product-images/chai-tea-latte.png" src="/project-template-prac/resources/assets/images/product-images/chai-tea-latte.png" alt="image" title="product" />
                                            End hover image
                                            product label
                                            <div class="product-labels"><span class="lbl on-sale">Sale</span></div>
                                            End product label
                                        </a>
                                        end product image

                                        Start product button
                                        <form class="variants add" action="#" onclick="window.location.href='cart.html'"method="post">
                                            <button class="btn btn-addto-cart" type="button">Add To Cart</button>
                                        </form>
                                        <div class="button-set">
                                            <a href="javascript:void(0)" title="Quick View" class="quick-view-popup quick-view" data-toggle="modal" data-target="#content_quickview">
                                                        <i class="icon anm anm-search-plus-r"></i>
                                                    </a>
                                            <div class="wishlist-btn">
                                                <a class="wishlist add-to-wishlist" href="#" title="Add to Wishlist">
                                                    <i class="icon anm anm-heart-l"></i>
                                                </a>
                                            </div>
                                            <div class="compare-btn">
                                                <a class="compare add-to-compare" href="compare.html" title="Add to Compare">
                                                    <i class="icon anm anm-random-r"></i>
                                                </a>
                                            </div>
                                        </div>
                                        end product button
                                    </div>
                                    end product image

                                    start product details
                                    <div class="product-details text-center">
                                        product name
                                        <div class="product-name">
                                            <a href="#">홍차 라떼</a>
                                        </div>
                                        End product name
                                        product price
                                        <div class="product-price">
                                            <span class="price">$420.00</span>
                                        </div>
                                        End product price
                                
                                    </div>
                                    End product details
                                </div>
                                <div class="col-6 col-sm-6 col-md-4 col-lg-4 item">
                                    start product image
                                    <div class="product-image">
                                        start product image
                                        <a href="#">
                                            image
                                            <img class="primary blur-up lazyload" data-src="/project-template-prac/resources/assets/images/product-images/chai-tea.png" src="/project-template-prac/resources/assets/images/product-images/chai-tea.png" alt="image" title="product" />
                                            End image
                                            Hover image
                                            <img class="hover blur-up lazyload" data-src="/project-template-prac/resources/assets/images/product-images/chai-tea.png" src="/project-template-prac/resources/assets/images/product-images/chai-tea.png" alt="image" title="product" />
                                            End hover image
                                        </a>
                                        end product image

                                        Start product button
                                        <form class="variants add" action="#" onclick="window.location.href='cart.html'"method="post">
                                            <button class="btn btn-addto-cart" type="button">Add To Cart</button>
                                        </form>
                                        <div class="button-set">
                                            <a href="javascript:void(0)" title="Quick View" class="quick-view-popup quick-view" data-toggle="modal" data-target="#content_quickview">
                                                        <i class="icon anm anm-search-plus-r"></i>
                                                    </a>
                                            <div class="wishlist-btn">
                                                <a class="wishlist add-to-wishlist" href="#" title="Add to Wishlist">
                                                    <i class="icon anm anm-heart-l"></i>
                                                </a>
                                            </div>
                                            <div class="compare-btn">
                                                <a class="compare add-to-compare" href="compare.html" title="Add to Compare">
                                                    <i class="icon anm anm-random-r"></i>
                                                </a>
                                            </div>
                                        </div>
                                        end product button
                                    </div>
                                    end product image

                                    start product details
                                    <div class="product-details text-center">
                                        product name
                                        <div class="product-name">
                                            <a href="#">홍차</a>
                                        </div>
                                        End product name
                                        product price
                                        <div class="product-price">
                                            <span class="price">$698.00</span>
                                        </div>
                                        End product price
                                       
                                    </div>
                                    End product details
                                </div>
                                <div class="col-6 col-sm-6 col-md-4 col-lg-4 item">
                                    start product image
                                    <div class="product-image">
                                        start product image
                                        <a href="#">
                                            image
                                            <img class="primary blur-up lazyload" data-src="/project-template-prac/resources/assets/images/product-images/iced-black-tea.png" src="/project-template-prac/resources/assets/images/product-images/iced-black-tea.png" alt="image" title="product" />
                                            End image
                                            Hover image
                                            <img class="hover blur-up lazyload" data-src="/project-template-prac/resources/assets/images/product-images/iced-black-tea.png" src="/project-template-prac/resources/assets/images/product-images/iced-black-tea.png" alt="image" title="product" />
                                            End hover image
                                        </a>
                                        end product image

                                        Start product button
                                        <form class="variants add" action="#" onclick="window.location.href='cart.html'"method="post">
                                            <button class="btn btn-addto-cart" type="button">Select Options</button>
                                        </form>
                                        <div class="button-set">
                                            <a href="javascript:void(0)" title="Quick View" class="quick-view-popup quick-view" data-toggle="modal" data-target="#content_quickview">
                                                        <i class="icon anm anm-search-plus-r"></i>
                                                    </a>
                                            <div class="wishlist-btn">
                                                <a class="wishlist add-to-wishlist" href="#" title="Add to Wishlist">
                                                    <i class="icon anm anm-heart-l"></i>
                                                </a>
                                            </div>
                                            <div class="compare-btn">
                                                <a class="compare add-to-compare" href="compare.html" title="Add to Compare">
                                                    <i class="icon anm anm-random-r"></i>
                                                </a>
                                            </div>
                                        </div>
                                        end product button
                                    </div>
                                    end product image

                                    start product details
                                    <div class="product-details text-center">
                                        product name
                                        <div class="product-name">
                                            <a href="#">아이스 홍차</a>
                                        </div>
                                        End product name
                                        product price
                                        <div class="product-price">
                                            <span class="price">$348.60</span>
                                        </div>
                                        End product price
                                        
                                    </div>
                                    End product details
                                </div>
                                <div class="col-6 col-sm-6 col-md-4 col-lg-4 item">
                                    start product image
                                    <div class="product-image">
                                        start product image
                                        <a href="#">
                                            image 
                                            <img class="primary blur-up lazyload" data-src="/project-template-prac/resources/assets/images/product-images/iced-black-tea-lemonade.png" src="/project-template-prac/resources/assets/images/product-images/iced-black-tea-lemonade.png" alt="image" title="product" />
                                            End image
                                            Hover image
                                            <img class="hover blur-up lazyload" data-src="/project-template-prac/resources/assets/images/product-images/iced-black-tea-lemonade.png" src="/project-template-prac/resources/assets/images/product-images/iced-black-tea-lemonade.png" alt="image" title="product" />
                                            End hover image
                                            product label
                                            <div class="product-labels"><span class="lbl pr-label3">Popular</span></div>
                                            End product label
                                        </a>
                                        end product image

                                        Start product button
                                        <form class="variants add" action="#" onclick="window.location.href='cart.html'"method="post">
                                            <button class="btn btn-addto-cart" type="button">Add to cart</button>
                                        </form>
                                        <div class="button-set">
                                            <a href="javascript:void(0)" title="Quick View" class="quick-view-popup quick-view" data-toggle="modal" data-target="#content_quickview">
                                                        <i class="icon anm anm-search-plus-r"></i>
                                                    </a>
                                            <div class="wishlist-btn">
                                                <a class="wishlist add-to-wishlist" href="#" title="Add to Wishlist">
                                                    <i class="icon anm anm-heart-l"></i>
                                                </a>
                                            </div>
                                            <div class="compare-btn">
                                                <a class="compare add-to-compare" href="compare.html" title="Add to Compare">
                                                    <i class="icon anm anm-random-r"></i>
                                                </a>
                                            </div>
                                        </div>
                                        end product button
                                    </div>
                                    end product image

                                    start product details
                                    <div class="product-details text-center">
                                        product name
                                        <div class="product-name">
                                            <a href="#">아이스 레모네이드 홍차</a>
                                        </div>
                                        End product name
                                        product price
                                        <div class="product-price">
                                            <span class="price">$380.00</span>
                                        </div>
                                        End product price
                                        
                                    </div>
                                    End product details
                                </div>
                                <div class="col-6 col-sm-6 col-md-4 col-lg-4 item">
                                    start product image
                                    <div class="product-image">
                                        start product image
                                        <a href="#">
                                            image
                                            <img class="primary blur-up lazyload" data-src="/project-template-prac/resources/assets/images/product-images/iced-caffe-americano.png" src="/project-template-prac/resources/assets/images/product-images/iced-caffe-americano.png" alt="image" title="product" />
                                            End image
                                            Hover image
                                            <img class="hover blur-up lazyload" data-src="/project-template-prac/resources/assets/images/product-images/iced-caffe-americano.png" src="/project-template-prac/resources/assets/images/product-images/iced-caffe-americano.png" alt="image" title="product" />
                                            End hover image
                                        </a>
                                        end product image

                                        Start product button
                                        <form class="variants add" action="#" onclick="window.location.href='cart.html'"method="post">
                                            <button class="btn btn-addto-cart" type="button">Add to cart</button>
                                        </form>
                                        <div class="button-set">
                                            <a href="javascript:void(0)" title="Quick View" class="quick-view-popup quick-view" data-toggle="modal" data-target="#content_quickview">
                                                        <i class="icon anm anm-search-plus-r"></i>
                                                    </a>
                                            <div class="wishlist-btn">
                                                <a class="wishlist add-to-wishlist" href="#" title="Add to Wishlist">
                                                    <i class="icon anm anm-heart-l"></i>
                                                </a>
                                            </div>
                                            <div class="compare-btn">
                                                <a class="compare add-to-compare" href="compare.html" title="Add to Compare">
                                                    <i class="icon anm anm-random-r"></i>
                                                </a>
                                            </div>
                                        </div>
                                        end product button
                                    </div>
                                    end product image

                                    start product details
                                    <div class="product-details text-center">
                                        product name
                                        <div class="product-name">
                                            <a href="#">아이스 아메리카노</a>
                                        </div>
                                        End product name
                                        product price
                                        <div class="product-price">
                                            <span class="price">$400.00</span>
                                        </div>
                                        End product price
                                       
                                    </div>
                                    End product details
                                </div>
                                <div class="col-6 col-sm-6 col-md-4 col-lg-4 item">
                                    start product image
                                    <div class="product-image">
                                        start product image
                                        <a href="#">
                                            image
                                            <img class="primary blur-up lazyload" data-src="/project-template-prac/resources/assets/images/product-images/iced-chai-tea-latte.png" src="/project-template-prac/resources/assets/images/product-images/iced-chai-tea-latte.png" alt="image" title="product" />
                                            End image
                                            Hover image
                                            <img class="hover blur-up lazyload" data-src="/project-template-prac/resources/assets/images/product-images/iced-chai-tea-latte.png" src="/project-template-prac/resources/assets/images/product-images/iced-chai-tea-latte.png" alt="image" title="product" />
                                            End hover image
                                        </a>
                                        end product image

                                        Start product button
                                        <form class="variants add" action="#" onclick="window.location.href='cart.html'"method="post">
                                            <button class="btn btn-addto-cart" type="button">Add to cart</button>
                                        </form>
                                        <div class="button-set">
                                            <a href="javascript:void(0)" title="Quick View" class="quick-view-popup quick-view" data-toggle="modal" data-target="#content_quickview">
                                                        <i class="icon anm anm-search-plus-r"></i>
                                                    </a>
                                            <div class="wishlist-btn">
                                                <a class="wishlist add-to-wishlist" href="#" title="Add to Wishlist">
                                                    <i class="icon anm anm-heart-l"></i>
                                                </a>
                                            </div>
                                            <div class="compare-btn">
                                                <a class="compare add-to-compare" href="compare.html" title="Add to Compare">
                                                    <i class="icon anm anm-random-r"></i>
                                                </a>
                                            </div>
                                        </div>
                                        end product button
                                    </div>
                                    end product image

                                    start product details
                                    <div class="product-details text-center">
                                        product name
                                        <div class="product-name">
                                            <a href="#">아이스 홍차 라떼</a>
                                        </div>
                                        End product name
                                        product price
                                        <div class="product-price">
                                            <span class="price">$200.00</span>
                                        </div>
                                        End product price
                                       
                                    </div>
                                    End product details
                                </div>
                                <div class="col-6 col-sm-6 col-md-4 col-lg-4 item">
                                    start product image
                                    <div class="product-image">
                                        start product image
                                        <a href="#">
                                            image
                                            <img class="primary blur-up lazyload" data-src="/project-template-prac/resources/assets/images/product-images/iced-caffe-mocha.png" src="/project-template-prac/resources/assets/images/product-images/iced-caffe-mocha.png" alt="image" title="product" />
                                            End image
                                            Hover image
                                            <img class="hover blur-up lazyload" data-src="/project-template-prac/resources/assets/images/product-images/iced-caffe-mocha.png" src="/project-template-prac/resources/assets/images/product-images/iced-caffe-mocha.png" alt="image" title="product" />
                                            End hover image
                                        </a>
                                        end product image

                                        Start product button
                                        <form class="variants add" action="#" onclick="window.location.href='cart.html'"method="post">
                                            <button class="btn btn-addto-cart" type="button">Add to cart</button>
                                        </form>
                                        <div class="button-set">
                                            <a href="javascript:void(0)" title="Quick View" class="quick-view-popup quick-view" data-toggle="modal" data-target="#content_quickview">
                                                        <i class="icon anm anm-search-plus-r"></i>
                                                    </a>
                                            <div class="wishlist-btn">
                                                <a class="wishlist add-to-wishlist" href="#" title="Add to Wishlist">
                                                    <i class="icon anm anm-heart-l"></i>
                                                </a>
                                            </div>
                                            <div class="compare-btn">
                                                <a class="compare add-to-compare" href="compare.html" title="Add to Compare">
                                                    <i class="icon anm anm-random-r"></i>
                                                </a>
                                            </div>
                                        </div>
                                        end product button
                                    </div>
                                    end product image

                                    start product details
                                    <div class="product-details text-center">
                                        product name
                                        <div class="product-name">
                                            <a href="#">아이스 카페 모카</a>
                                        </div>
                                        End product name
                                        product price
                                        <div class="product-price">
                                            <span class="price">$1,048.60</span>
                                        </div>
                                        End product price
                          	      </div>                               
                                </div>  
                            </div>
                        </div>
                    </div> 
                    <hr class="clear">
                    <div class="pagination">
                      <ul>
                        <li class="active"><a href="#">1</a></li>
                        <li><a href="#">2</a></li>
                        <li class="next"><a href="#"><i class="fa fa-caret-right" aria-hidden="true"></i></a></li>
                      </ul>  -->
                    </div> 
                </div>
                <!--End Main Content-->
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
    
</div>
<script src="https://code.jquery.com/jquery-3-6-1.js"></script>
<script type="text/javascript">
$('.update-order').on('click', function(event) {
	var addform = $(this).parent(".addform").serialize();
//    const formData = $('.addform').serialize(); //form 내부의 모든 입력 요소의 값을 전송가능한 문자열 형식으로 반환
/* const formData = $('#addform').serializeArray(); */ //form 내부의 모든 입력 요소의 값을 전송가능한 객체 배열 형식으로 반환
	$.ajax({
		"url": "update-order",
		"method": "post",
		"data": addform,
		"success": function(data, status, xhr) {
			},
		"error": function(xhr, status, err) {
			
			}
	});
});
</script>
</body>

<!-- belle/shop-grid-3.html   11 Nov 2019 12:39:06 GMT -->
</html>