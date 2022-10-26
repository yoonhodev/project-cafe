<%@page import="com.projectprac.dto.StoreDto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html class="no-js" lang="ko">

<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="x-ua-compatible" content="ie=edge">
<title>Blog Fullwidth &ndash; Belle Multipurpose Bootstrap 4 Template</title>
<meta name="description" content="description">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- Common-css -->
<jsp:include page="/WEB-INF/views/modules/common-css.jsp"></jsp:include>
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
        		<div class="wrapper"><h1 class="page-width">지점 소개</h1></div>
      		</div>
		</div> 
        <!--End Page Title-->
<script src="https://code.jquery.com/jquery-3.6.1.js"></script>
               
            </div>
        </div>
         <br> <br> 
        <div class="container">
        	<div class="row">
        	
                <!--Main Content-->
                <div class="col-12 col-sm-12 col-md-12 col-lg-12 main-col">
                	
                    <div class="blog--list-view blog--grid-load-more">
                    	
                    	<div class="article"> 
                  			<c:forEach var="stores" items="${ stores }">

                            <!-- Article Image --> 
                            
                            <a class="article_featured-image" ><img class="blur-up lazyload article_featured-image" data-src="${ stores.storeImage }" src="${ stores.storeImage }" alt="It's all about how you wear"></a>                          
                            
                            <h2 class="h3"  >${ stores.storeName }</h2>
                            <ul class="publish-detail">                      
                                <li><i class="anm anm-user-al" aria-hidden="true"></i>${stores.storePhone}</li>
                                <li><i class="icon anm anm-clock-r"></i>${ stores.storeSchedule }</li>
                                <li>
                                <c:choose>
                                <c:when test="${ stores.storeOpen }">
                               		 <ul class="inline-list">   
                                        <li><i class="icon anm anm-comments-l"></i> <a href="#" style="color: green;">OPEN</a></li>
                                    </ul>
                                </c:when>
                                <c:otherwise>
                                <ul class="inline-list">   
                                        <li><i class="icon anm anm-comments-l"></i> <a href="#" style="color: red;">CLOSE</a></li>
                                    </ul>
                                </c:otherwise>
                                
                                </c:choose>
<!--                                     <ul class="inline-list">    -->
<!--                                         <li><i class="icon anm anm-comments-l"></i> <a href="#"> 오픈현황</a></li> -->
<!--                                     </ul> -->
                                </li>
                            </ul>
                            <div class="rte"> 
                                <p>${ stores.storeIntroduce }</p>
                                 </div>
                           <!--  <p><a href="#" class="btn btn-secondary btn--small">Read more <i class="fa fa-caret-right" aria-hidden="true"></i></a></p> -->
                        </div>
                        </c:forEach> 
<!--                         <div class="article">  -->
<!--                             Article Image  -->
<!--                              <a class="article_featured-image" href="#"><img class="blur-up lazyload" data-src="resources/assets/images/blog/blog-post-2.jpg" src="resources/assets/images/blog/blog-post-2.jpg" alt="27 Days of Spring Fashion Recap"></a>  -->
<!--                             <h2 class="h3"><a href="blog-right-sidebar.html">27 Days of Spring Fashion Recap</a></h2> -->
<!--                             <ul class="publish-detail">                       -->
<!--                                 <li><i class="anm anm-user-al" aria-hidden="true"></i>  User</li> -->
<!--                                 <li><i class="icon anm anm-clock-r"></i> <time datetime="2017-05-02">May 02, 2017</time></li> -->
<!--                                 <li> -->
<!--                                     <ul class="inline-list">    -->
<!--                                         <li><i class="icon anm anm-comments-l"></i> <a href="#"> 0 comments</a></li> -->
<!--                                     </ul> -->
<!--                                 </li> -->
<!--                             </ul> -->
<!--                             <div class="rte">  -->
<!--                                 <p>Plusieurs variations de Lorem Ipsum peuvent être trouvées ici ou là, mais la majeure partie d'entre elles a été altérée par l'addition d'humour ou de mots aléatoires qui ne ressemblent pas une seconde à du texte standard. Si vous voulez utiliser un passage du Lorem Ipsum, vous devez être sûr qu'il n'y a rien d'embarrassant caché dans le texte. Tous les générateurs de Lorem Ipsum sur Internet tendent à reproduire......</p> -->
<!--                                  </div> -->
<!--                             <p><a href="#" class="btn btn-secondary btn--small">Read more <i class="fa fa-caret-right" aria-hidden="true"></i></a></p> -->
<!--                         </div> -->
<!--                         <div class="article">  -->
<!-- <!--                             Article Image  --> 
<!--                              <a class="article_featured-image" href="#"><img class="blur-up lazyload" data-src="resources/assets/images/blog/blog-post-3.jpg" src="resources/assets/images/blog/blog-post-3.jpg" alt="How to Wear The Folds Trend Four Ways"></a>  -->
<!--                             <h2 class="h3"><a href="#">How to Wear The Folds Trend Four Ways</a></h2> -->
<!--                             <ul class="publish-detail">                       -->
<!--                                 <li><i class="anm anm-user-al" aria-hidden="true"></i>  User</li> -->
<!--                                 <li><i class="icon anm anm-clock-r"></i> <time datetime="2017-05-02">May 02, 2017</time></li> -->
<!--                                 <li> -->
<!--                                     <ul class="inline-list">    -->
<!--                                         <li><i class="icon anm anm-comments-l"></i> <a href="#"> 10 comments</a></li> -->
<!--                                     </ul> -->
<!--                                 </li> -->
<!--                             </ul> -->
<!--                             <div class="rte">  -->
<!--                                 <p>But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness. No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue pleasure......</p> -->
<!--                                  </div> -->
<!--                             <p><a href="#" class="btn btn-secondary btn--small">Read more <i class="fa fa-caret-right" aria-hidden="true"></i></a></p> -->
<!--                         </div> -->

                        <div class="loadmore-post" >	
                            <a href="add-store" type="hidden" class="btn">Load More</a>
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
</div>
</body>


</html>