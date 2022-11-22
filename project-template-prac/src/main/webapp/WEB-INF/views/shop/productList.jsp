<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


                            <div class="row">
	                            <c:forEach var="product" items="${ productViews }">
	                                <div class="col-6 col-sm-6 col-md-4 col-lg-4 item">
	                                    <!-- start product image -->
	                                    <div class="product-image">
	                                        <!-- start product image -->
	                                            <!-- image -->
	                                            <img class="primary blur-up lazyload" src="${ product.prodImg }" alt="image" title="product">
	                                            <!-- End image -->
	                                            <!-- Hover image -->
	                                            <img class="hover blur-up lazyload" src="${ product.prodImg }" alt="image" title="product">
	                                        <!-- end product image -->
	    
	                                        <!-- Start product button -->
	                                        <c:choose>
	                                        	<c:when test="${ empty loginuser }">
	                                        		<form class="variants add addform" id="addform" action="login" method="post">
			                                        	<input type="hidden" name="prodId" value="${ product.prodId }">			                                        	
			                                            <a href="login" class="btn btn-addto-cart update-order" style="color:white" type="button">ADD TO CART</a>
			                                        </form>
	                                       		</c:when>
	                                       		<c:otherwise>
			                                        <form class="variants add addform order-popup" id="addform" action="update-order" method="post">
			                                        	<input type="hidden" name="prodId" value="${ product.prodId }">
			                                            <a class="btn btn-addto-cart update-order" style="color:white" type="button">ADD TO CART</a>
			                                        </form>
	                                       	 	</c:otherwise>
                                       	 	</c:choose>
	                                        
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
	                                            <!-- <span class="old-price">₩ 2000</span> -->
	                                            <span class="price">₩&nbsp;${ product.prodPrice }</span>
	                                        </div>
	                                        <!-- End product price -->
	                                    </div>
	                                    <!-- End product details -->
	                                </div>
	                            </c:forEach>
                           </div>
                       