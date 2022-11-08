<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

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
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3" crossorigin="anonymous"></script>
<div class="pageWrapper">

   
    <!--Top Header-->  	     <!--Header-->
    <jsp:include page="/WEB-INF/views/modules/header.jsp"></jsp:include>
    <!--End Header-->		<!--End Top Header-->
    
    <!--Body Content-->
    <div id="page-content">
    	<!--Collection Banner-->
    	<div class="collection-header">
			<div class="collection-hero">
        		<div class="collection-hero__image"><img class="blur-up lazyload" width="1900px" height="316px" src="/project-template-prac/resources/assets/images/cafemain.jpg" alt="menuMain" title="menuMain" /></div>
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
                	<div class="productList">
                        <div class="grid-products grid--view-items">
                            <div class="row">
	                            <c:forEach var="product" items="${ productViews }">
	                                <div class="col-6 col-sm-6 col-md-4 col-lg-4 item">
	                                    <!-- start product image -->
	                                    <div class="product-image">
	                                        <!-- start product image -->
	                                        <a href="#">
	                                            <!-- image -->
	                                            <img class="primary blur-up lazyload" src="${ product.prodImg }" alt="image" title="product">
	                                            <!-- End image -->
	                                            <!-- Hover image -->
	                                            <img class="hover blur-up lazyload" src="${ product.prodImg }" alt="image" title="product">
	                                            <!-- End hover image -->
	                                        </a>
	                                        <!-- end product image -->
	    
	                                        <!-- Start product button -->
	                                        <c:choose>
	                                        	<c:when test="${ empty loginuser }">
	                                        		<form class="variants add addform" id="addform" action="login" method="post">
			                                        	<input type="hidden" name="prodId" value="${ product.prodId }">			                                        	
			                                            <button class="btn btn-addto-cart update-order" type="button" onclick="<"><a href="login">ADD TO CART</a></button>
			                                        </form>
	                                       		</c:when>
	                                       		<c:otherwise>
			                                        <form class="variants add addform" id="addform" action="update-order" method="post">
			                                        	<input type="hidden" name="prodId" value="${ product.prodId }">
			                                            <button class="btn btn-addto-cart update-order" type="button">ADD TO CART</button>
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
                        </div>
                    </div> 
                    <hr class="clear">
                    <div class="pagination">
                    <!--   <ul>
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
<script src="https://code.jquery.com/jquery-3.6.1.js"></script>
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