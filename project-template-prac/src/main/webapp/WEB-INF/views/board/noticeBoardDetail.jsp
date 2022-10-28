<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>



<!DOCTYPE html>
<html class="no-js" lang="ko">

<!-- belle/blog-fullwidth.html   11 Nov 2019 12:46:09 GMT -->
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="x-ua-compatible" content="ie=edge">
<title>Blog Fullwidth &ndash; Belle Multipurpose Bootstrap 4 Template</title>
<meta name="description" content="description">
<meta name="viewport" content="width=device-width, initial-scale=1">
<jsp:include page="/WEB-INF/views/modules/common-css.jsp"></jsp:include>
<style>
 
        /* pagination position styling */
        .pagination_section {
            position: relative;
        }
 
        /* pagination styling */
        .pagination_section a {
            color: black;
            padding: 10px 18px;
            text-decoration: none;
        }
 
        /* pagination hover effect on non-active */
        .pagination_section a:hover:not(.active) {
            background-color: #031F3B;
            color: white;
        }
 
        /* pagination hover effect on active*/
 
        a:nth-child(5) {
            background-color: green;
            color: white;
        }
 
        a:nth-child(1) {
            font-weight: bold;
        }
 
        a:nth-child(7) {
            font-weight: bold;
        }
 
        .content-pagenation {
            margin: 50px;
            padding: 15px;
            width: 700px;
            height: 200px;
            border: 2px solid black;
        }
    </style>

</head>
<body class="template-blog belle">
<div class="pageWrapper">
	<jsp:include page="/WEB-INF/views/modules/header.jsp"></jsp:include>
	<br><br><br>
    
	<!--End Mobile Menu-->
    
    <!--Body Content-->
    <div id="page-content">
    	<!--Page Title-->
    	<div class="page section-header text-center mb-0">
			<div class="page-title">
        		<div class="wrapper"><h1 class="page-width">Blog Fullwidth</h1></div>
      		</div>
		</div>
        <!--End Page Title-->
	    
        <div class="container">
        	<div class="row">
                <!--Main Content-->
                <div class="col-12 col-sm-12 col-md-12 col-lg-12 main-col">
                	<div class="custom-search">
                        
                    </div>
                    <div class="blog--list-view blog--grid-load-more">
                        <div class="article"> 
                            <!-- Article Image --> 
                             <a class="article_featured-image" href="#"><img class="blur-up lazyload" data-src="resources/assets/images/blog/blog-post-3.jpg" src="resources/assets/images/blog/blog-post-3.jpg" alt="How to Wear The Folds Trend Four Ways"></a> 
                            <h2 class="h3"><a href="#">${ boardDetail.title }</a></h2>
                            <ul class="publish-detail">                      
                                <li><i class="anm anm-user-al" aria-hidden="true"></i>  ${ boardDetail.workerId }</li>
                                <li><i class="icon anm anm-clock-r"></i> <time datetime="2017-05-02"><fmt:formatDate value="${ boardDetail.regdate }" pattern="yyyy-MM-dd HH:mm"/></time></li>
                                <li>
                                    <ul class="inline-list">   
                                        <li><i class="icon anm anm-comments-l"></i> <a href="#"> 10 comments</a></li>
                                    </ul>
                                </li>
                            </ul>
                            <div class="rte"> 
                                <p>${ boardDetail.content }</p>
                            </div>
                            
                      	    </div>
                        <div class="loadmore-post">	
                            <a href="#;" class="btn ">수정</a>
                            <a href="#;" class="btn ">삭제</a>
                            <a href="#;" class="btn ">목록보기</a>
                        </div>
                    </div>
                </div>
                <!--End Main Content-->
            </div>
        </div>
        
    </div>
    <!--End Body Content-->
    
    <!--Footer-->
    <jsp:include page="/WEB-INF/views/modules/home-footer.jsp"></jsp:include>
    <!--End Footer-->
    <!--Scoll Top-->
    <span id="site-scroll"><i class="icon anm anm-angle-up-r"></i></span>
    <!--End Scoll Top-->
    
     <!-- Including Jquery -->
     <script src="resources/assets/js/vendor/jquery-3.3.1.min.js"></script>
     <script src="resources/assets/js/vendor/jquery.cookie.js"></script>
     <script src="resources/assets/js/vendor/modernizr-3.6.0.min.js"></script>
     <script src="resources/assets/js/vendor/wow.min.js"></script>
     <!-- Including Javascript -->
     <script src="resources/assets/js/bootstrap.min.js"></script>
     <script src="resources/assets/js/plugins.js"></script>
     <script src="resources/assets/js/popper.min.js"></script>
     <script src="resources/assets/js/lazysizes.js"></script>
     <script src="resources/assets/js/main.js"></script>
</div>
</body>

<!-- belle/blog-fullwidth.html   11 Nov 2019 12:46:09 GMT -->
</html>