<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<c:set var="enter" value="
" />  <!-- 엔터쳤을때 화면에서 실제 적용하게 해주는 코드  -->




<!DOCTYPE html>
<html class="no-js" lang="ko">

<!-- belle/blog-fullwidth.html   11 Nov 2019 12:46:09 GMT -->
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="x-ua-compatible" content="ie=edge">
<title>Event Board</title>
<meta name="description" content="description">
<meta name="viewport" content="width=device-width, initial-scale=1">
<jsp:include page="/WEB-INF/views/modules/common-css.jsp"></jsp:include>

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
                        <div class="article" style="font-size: 17px"> 
                            <!-- Article Image --> 
                             <a class="article_featured-image" href="#"><img class="blur-up lazyload" data-src="resources/assets/images/blog/blog-post-3.jpg" src="resources/assets/images/blog/blog-post-3.jpg" alt="How to Wear The Folds Trend Four Ways"></a> 
                            <h2 class="h3" style="font-size: 17px"><a href="#">${ boardDetail.title }</a></h2>
                            <ul class="publish-detail">                      
                                <li><i class="anm anm-user-al" aria-hidden="true"></i> ADMIN</li>
                                <li><i class="icon anm anm-clock-r"></i> <time datetime="2017-05-02"><fmt:formatDate value="${ boardDetail.regdate }" pattern="yyyy-MM-dd"/></time></li>
                                <li>
                                    <ul class="inline-list">   
                                        <li><i class="icon anm anm-comments-l"></i> <a href="#"> 10 comments</a></li>
                                    </ul>
                                </li>
                            </ul>
                            <br>
                            <div class="rte"> 

                                <p><c:set var="enter" value="
" />
								   ${ fn:replace(boardDetail.content, enter, "<br>") }</p>
                            </div>
                            
                      	    </div>
                        <div class="loadmore-post">	
                            <a></a>
                          	<c:if test="${ loginuser.userType }">
                            <a id="update_event_button" class="btn" style="color: white">수정</a>
                            <a id="delete_event_button" class="btn" style="color: white">삭제</a>
                            </c:if>
                            <a href="eventBoard?pageNo=${ pageNo }" class="btn" style="color: white">목록보기</a>
                        </div>
                     
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
<script type="text/javascript">
	$(function() {
		
		// 글 내용 삭제
		$('#delete_event_button').on('click', function(event) {
			const ok = confirm("${ boardDetail.boardId }번 글을 삭제할까요?");
			if (!ok) return;
			//location.href = 'delete.action?boardId=${boardDetail.boardId}&pageNo=${pageNo}';
			location.href = 'deleteEvent/' + ${ boardDetail.boardId } + '/?&pageNo=${pageNo}';
		});
		
		// 글 내용 수정 
		$('#update_event_button').on('click', function(event) {
			const ok = confirm("${ boardDetail.boardId }번 글을 수정할까요???");
			if (!ok) return;
			
			location.href = 'editEvent?boardId=${boardDetail.boardId}&pageNo=${pageNo}';
		});
		
		
		
		
		
		
		
	})

</script>

</body>

<!-- belle/blog-fullwidth.html   11 Nov 2019 12:46:09 GMT -->
</html>