<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>


<!DOCTYPE html>
<html class="no-js" lang="ko">

<!-- belle/short-description.html   11 Nov 2019 12:43:10 GMT -->
<head>

<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="x-ua-compatible" content="ie=edge">
<title>Green Coffee</title>
<meta name="description" content="description">
<meta name="viewport" content="width=device-width, initial-scale=1">
<jsp:include page="/WEB-INF/views/modules/common-css.jsp"></jsp:include>

</head>
<body class="template-product belle">
	<div class="pageWrapper">
    	<jsp:include page="/WEB-INF/views/modules/header.jsp"></jsp:include>
        <br><br><br>
    	<div class="page section-header text-center mb-0">
			<div class="page-title">
        		<div class="wrapper"><h1 class="page-width">Event Board</h1></div>
      		</div>
		</div>
        <!--Body Content-->
        <div id="page-content">
            <!--MainContent-->
            <div id="MainContent" class="main-content" role="main">
                <!--Breadcrumb-->
              
   
                
                <div id="ProductSection-product-template" class="product-template__container prstyle1 container">
               
                    <!--Product Tabs-->
                    <div class="tabs-listing">
                        <div class="tab-container">
                            <div id="tab-notice-board" class="tab-content">
                                    <div id="shopify-product-reviews">
                                    <div class="spr-container">

                                        <script src="https://code.jquery.com/jquery-3.5.0.js"></script>
                                            <div class="spr-form clearfix" id="toggle-form" style="display:">
                                            	<form method="post" action="editEvent" id="new-review-form" class="new-review-form" >
                                            		<input type="hidden" name="boardId" value="${ board.boardId }">
		        									<input type="hidden" name="pageNo" value="${ pageNo }">
                                                    <h3 class="spr-form-title">글 수정하기</h3>
                                                    <fieldset class="spr-form-contact">
                                                    </fieldset>
                                                    <fieldset class="spr-form-review">
                                                      <div class="spr-form-review-title">
                                                        <label class="spr-form-label" for="review_title_10508262282">제목</label>
                                                        <input class="spr-form-input spr-form-input-text " id="review_title_10508262282" type="text" name="title" value="${ board.title }" placeholder="">
                                                      </div>
                                                		
                                                      <div class="spr-form-review-body">
                                                        <label class="spr-form-label" for="review_body_10508262282">내용<span class="spr-form-review-body-charactersremaining">(1500)</span></label>
                                                        <div class="spr-form-input">
                                                          <textarea class="spr-form-input spr-form-input-textarea " id="review_body_10508262282" data-product-id="10508262282" name="content" rows="10">${ board.content }</textarea>
                                                        </div>
                                                      </div>
                                                    </fieldset>
                                                    <fieldset class="spr-form-actions">
                                                        <input type="submit" class="spr-button spr-button-primary button button-primary btn btn-primary" value="수정하기">
                                                        <input id="btn-cancel" type="button" class="spr-button spr-button-primary button button-primary btn btn-primary" value="Cancel">
                                                    </fieldset>
                                                </form>
                                            </div>
                                           	</div>
                                           	
                                            
                                    </div>
                                   
                                </div>
                                
                            </div>

                            <div id="tab-event-board" class="tab-content">
                                <div id="shopify-product-reviews">
                                    <div class="spr-container">
                                        <div class="spr-header clearfix">
                                            <div class="spr-summary">
                                                <span class="product-review"><a class="reviewLink"><i class="font-13 fa fa-star"></i><i class="font-13 fa fa-star"></i><i class="font-13 fa fa-star"></i><i class="font-13 fa fa-star-o"></i><i class="font-13 fa fa-star-o"></i> </a><span class="spr-summary-actions-togglereviews">Based on 6 reviews456</span></span>
                                                <span class="spr-summary-actions" >
                                                    <a href="#" class="spr-summary-actions-newreview btn">Write a review</a>
                                                </span>
                                            </div>
                                        </div>
                                  
                                        
                                        </script>
                                        
                                        <div class="spr-content">
                                            <div class="spr-form clearfix" >
                                                <form method="post" action="#" id="new-review-form" class="new-review-form">
                                                    <h3 class="spr-form-title">Write a review</h3>
                                                    <fieldset class="spr-form-contact">
                                                        <div class="spr-form-contact-name">
                                                          <label class="spr-form-label" for="review_author_10508262282">Name</label>
                                                          <input class="spr-form-input spr-form-input-text " id="review_author_10508262282" type="text" name="review[author]" value="" placeholder="Enter your name">
                                                        </div>
                                                        <div class="spr-form-contact-email">
                                                          <label class="spr-form-label" for="review_email_10508262282">Email</label>
                                                          <input class="spr-form-input spr-form-input-email " id="review_email_10508262282" type="email" name="review[email]" value="" placeholder="john.smith@example.com">
                                                        </div>
                                                    </fieldset>
                                                    <fieldset class="spr-form-review">
                                                      <div class="spr-form-review-rating">
                                                        <label class="spr-form-label">Rating</label>
                                                        <div class="spr-form-input spr-starrating">
                                                          <div class="product-review"><a class="reviewLink" href="#"><i class="fa fa-star-o"></i><i class="font-13 fa fa-star-o"></i><i class="font-13 fa fa-star-o"></i><i class="font-13 fa fa-star-o"></i><i class="font-13 fa fa-star-o"></i></a></div>
                                                        </div>
                                                      </div>
                                                
                                                      <div class="spr-form-review-title">
                                                        <label class="spr-form-label" for="review_title_10508262282">Review Title</label>
                                                        <input class="spr-form-input spr-form-input-text " id="review_title_10508262282" type="text" name="review[title]" value="" placeholder="Give your review a title">
                                                      </div>
                                                
                                                      <div class="spr-form-review-body">
                                                        <label class="spr-form-label" for="review_body_10508262282">Body of Review <span class="spr-form-review-body-charactersremaining">(1500)</span></label>
                                                        <div class="spr-form-input">
                                                          <textarea class="spr-form-input spr-form-input-textarea " id="review_body_10508262282" data-product-id="10508262282" name="review[body]" rows="10" placeholder="Write your comments here"></textarea>
                                                        </div>
                                                      </div>
                                                    </fieldset>
                                                    <fieldset class="spr-form-actions">
                                                        <input type="submit" class="spr-button spr-button-primary button button-primary btn btn-primary" value="Submit Review">
                                                    </fieldset>
                                                </form>
                                            </div>
                                        </div>
                                        </div>
                                  
                                </div>
                            	
                            <div>
                        </div>
                    </div>
                    <!--End Product Tabs-->
                    
                    <!--Related Product Slider-->
                    
                    <!--End Related Product Slider-->
                    
                    <!--Recently Product Slider-->
                  
                    <!--End Recently Product Slider-->
                    </div>
                <!--#ProductSection-product-template-->
            </div>
            <!--MainContent-->
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
     <!-- Photoswipe Gallery -->
     <script src="resources/assets/js/vendor/photoswipe.min.js"></script>
     <script src="resources/assets/js/vendor/photoswipe-ui-default.min.js"></script>
   

     <script>
        $(function(){
        	$('#btn-cancel').on('click', function(event) {
    			location.href = 'eventBoardDetail?boardId=${board.boardId}' +
    							'&pageNo=${pageNo}';
    		});
        	
        	
        	
        	
            var $pswp = $('.pswp')[0],
                image = [],
                getItems = function() {
                    var items = [];
                    $('.lightboximages a').each(function() {
                        var $href   = $(this).attr('href'),
                            $size   = $(this).data('size').split('x'),
                            item = {
                                src : $href,
                                w: $size[0],
                                h: $size[1]
                            }
                            items.push(item);
                    });
                    return items;
                }
            var items = getItems();
        
            $.each(items, function(index, value) {
                image[index]     = new Image();
                image[index].src = value['src'];
            });
            $('.prlightbox').on('click', function (event) {
                event.preventDefault();
              
                var $index = $(".active-thumb").parent().attr('data-slick-index');
                $index++;
                $index = $index-1;
        
                var options = {
                    index: $index,
                    bgOpacity: 0.9,
                    showHideOpacity: true
                }
                var lightBox = new PhotoSwipe($pswp, PhotoSwipeUI_Default, items, options);
                lightBox.init();
            });
        });
        </script>
    </div>

	<div class="pswp" tabindex="-1" role="dialog" aria-hidden="true">
        	<div class="pswp__bg"></div>
            <div class="pswp__scroll-wrap"><div class="pswp__container"><div class="pswp__item"></div><div class="pswp__item"></div><div class="pswp__item"></div></div><div class="pswp__ui pswp__ui--hidden"><div class="pswp__top-bar"><div class="pswp__counter"></div><button class="pswp__button pswp__button--close" title="Close (Esc)"></button><button class="pswp__button pswp__button--share" title="Share"></button><button class="pswp__button pswp__button--fs" title="Toggle fullscreen"></button><button class="pswp__button pswp__button--zoom" title="Zoom in/out"></button><div class="pswp__preloader"><div class="pswp__preloader__icn"><div class="pswp__preloader__cut"><div class="pswp__preloader__donut"></div></div></div></div></div><div class="pswp__share-modal pswp__share-modal--hidden pswp__single-tap"><div class="pswp__share-tooltip"></div></div><button class="pswp__button pswp__button--arrow--left" title="Previous (arrow left)"></button><button class="pswp__button pswp__button--arrow--right" title="Next (arrow right)"></button><div class="pswp__caption"><div class="pswp__caption__center"></div></div></div></div></div>

</body>

<!-- belle/short-description.html   11 Nov 2019 12:43:10 GMT -->
</html>