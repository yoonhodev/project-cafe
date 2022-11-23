<%@page import="com.projectprac.dto.StoreDto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html class="no-js" lang="ko">

<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="x-ua-compatible" content="ie=edge">
<title>지점 소개</title>
<meta name="description" content="description">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- Common-css -->
<jsp:include page="/WEB-INF/views/modules/common-css.jsp"></jsp:include>
<style>
@import url('https://fonts.googleapis.com/css2?family=Hahmlet:wght@500&display=swap');

	.Korean-font-style {
		font-family: 'Hahmlet';
	}

	
</style>

</head>
<body class="template-blog belle">
<div class="pageWrapper">
		<!-- Top Header --> <!-- Header --> <!-- Mobile Menu -->
		<jsp:include page="/WEB-INF/views/modules/header.jsp"></jsp:include>
		<!-- ./Top Header --> <!-- ./Header --> <!-- ./Mobile Menu -->    
    <!--Body Content-->
    <div id="page-content">
    	<!--Page Title-->
    	<br> <br> <br> <br>
    	<div class="page section-header text-center mb-0">
			<div class="page-title">
        		<div class="wrapper"><h1 class="page-width Korean-font-style">지점 소개</h1></div>
      		</div>
		</div> 
        <!--End Page Title-->               
            </div>
        </div>
         <br> <br> 
        <div class="container">
        	<div class="row">
        	
                <!--Main Content-->
                <div class="col-12 col-sm-12 col-md-12 col-lg-12 main-col">
                	
                    <div class="blog--list-view blog--grid-load-more">
                    	
                    	
                    	<div class="article" > 
                  			<c:forEach var="store" items="${ stores }">
							<c:choose>
							<c:when test="${ store.deleted }">
							</c:when>
							<c:otherwise>
                            <!-- Article Image --> 
                            
                            <a class="article_featured-image" ><img class="blur-up lazyload article_featured-image" src="/project-template-prac/resources/assets/images/cafe-out-image-folder/${ store.storeUniqueimage }" alt="이미지 로드 실패"></a>                          
                            
                            <h2 class="h3"  >${ store.storeName }</h2>
                            <ul class="publish-detail">                      
                                <li style=""><i class="anm anm-user-al" aria-hidden="true"></i>${store.storePhone}</li>                            
                                <li style="display: inline;"><i class="icon anm anm-clock-r"></i>${ store.storeSchedule }</li>
                                <li>
                                <c:choose>
                                <c:when test="${ store.storeOpen }">                               		                                           
                                        <li style="display: inline;"><a style="color: green;">OPEN</a></li>
                                        <br>
                                        <c:if test="${ loginuser.userType }">
                                        <input type="button" class="change_to_close btn" id="close-${ store.storeId }"   value="close" data-storeId="${ store.storeId }" />
                                        </c:if>                                                                           
                                </c:when>
                                <c:otherwise>  
                                        <li style="display: inline;"><a style="color: red;">CLOSE</a></li>
                                        <c:if test="${ loginuser.userType }">
                                        <input type="button" class="change_to_open btn" id="open-${ store.storeId }"   value="open" data-storeId="${ store.storeId }" />
                                        </c:if>
                                </c:otherwise>
                                </c:choose>
                                </li>
                            </ul>
                            <div class="rte"> 
                                <p class="Korean-font-style">${ store.storeIntroduce }</p>
                                 </div>
                     					 <c:if test="${ loginuser.userType }">
                                        <input type="button" class="deleted_store_intro btn" id="deleted-${ store.storeId }"   value="삭제" data-storeId="${ store.storeId }" />
                                        </c:if>
                        </c:otherwise>
                        </c:choose>
                        </c:forEach> 
                        </div>   
                    </div>
                </div>
                <!--End Main Content-->
            </div>
        </div>
        
    </div>
    <!--End Body Content-->
    
		<!-- Footer -->
		<jsp:include page="/WEB-INF/views/modules/footer.jsp"></jsp:include>
		<!-- ./Footer -->
    <!--Scoll Top-->
    <span id="site-scroll"><i class="icon anm anm-angle-up-r"></i></span>
    <!--End Scoll Top-->
    
		<!-- Common-js -->
		<jsp:include page="/WEB-INF/views/modules/common-js.jsp"></jsp:include>
		<script type="text/javascript">
		
                       $(function() {

                    	   
                    	   
							$(".change_to_open").on('click', function(event) {
								
								var storeId = $(this).attr("data-storeId")
								
								location.href = storeId + '/open';
								
							});	
							
							$(".change_to_close").on('click', function(event) {
								
								var storeId = $(this).attr("data-storeId")
								
								location.href = storeId + '/close';
								
							});
							
							$(".deleted_store_intro").on('click', function(event) {
								
								var storeId = $(this).attr("data-storeId")
								
								location.href = storeId + '/deleted';
								
							});						

						 });
        </script>
		
</div>
</body>


</html>