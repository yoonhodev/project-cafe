<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<html class="no-js" lang="ko">

<!-- belle/short-description.html   11 Nov 2019 12:43:10 GMT -->
<head>

<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="x-ua-compatible" content="ie=edge">
<title>Event Board</title>
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
                                        <div class="spr-header clearfix">
                                        
                                        	<c:if test="${ loginuser.userType }">
                                                    <a href="#" id="toggle-form-btn" class="spr-summary-actions-newreview btn">글 쓰기</a>
                                            </c:if>
                                            
                                        </div>
                                        <h3 class="spr-form-title"></h3>
                                                    <fieldset class="spr-form-contact">
                                                    </fieldset>
                                        <script src="https://code.jquery.com/jquery-3.5.0.js"></script>
                                            <div class="spr-form clearfix" id="toggle-form" style="display:none">
                                            	<script>
													$( "#toggle-form-btn" ).click(function() {
													  $( "#toggle-form" ).toggle( "slow" );
													});
												</script>

                                                <form method="post" action="writeEventBoard" id="new-review-form" class="new-review-form" enctype="multipart/form-data">
                                                	<input type="hidden" name="boardType" value="false">
                                                    <h3 class="spr-form-title">Write notice</h3>
                                                    <fieldset class="spr-form-contact">
                                                    </fieldset>
                                                    <fieldset class="spr-form-review">
                                                      <div class="spr-form-review-title">
                                                        <label class="spr-form-label" for="review_title_10508262282">제목</label>
                                                        <input class="spr-form-input spr-form-input-text " id="review_title_10508262282" type="text" name="title" value="" placeholder="제목을 입력하세요.">
                                                      </div>
                                                
                                                      <div class="spr-form-review-body">
                                                        <label class="spr-form-label" for="review_body_10508262282">첨부파일<span class="spr-form-review-body-charactersremaining"></span></label>
                                                        <div class="spr-form-input">
                                                          <input type="file" name="attachBoard" accept="image/gif, image/jpeg, image/png, image/jpg" id="review_body_10508262282" multiple>
                                                        </div>
                                                      </div>
                                                      
                                                      <div class="spr-form-review-body">
                                                        <label class="spr-form-label" for="review_body_10508262282">내용<span class="spr-form-review-body-charactersremaining">(1500)</span></label>
                                                        <div class="spr-form-input">
                                                          <textarea class="spr-form-input spr-form-input-textarea " id="review_body_10508262281" data-product-id="10508262282" name="content" rows="10" placeholder="내용을 입력하세요."></textarea>
                                                        </div>
                                                      </div>
                                                    </fieldset>
                                                    <fieldset class="spr-form-actions">
                                                        <input type="submit" id="btn-event-write" class="spr-button spr-button-primary button button-primary btn btn-primary" value="확인">
                                                        <input id="btn-cancel" type="button" class="spr-button spr-button-primary button button-primary btn btn-primary" value="취소">
                                                    </fieldset>
                                                   	<br>
                                                </form>
                                            </div>
                                           	</div>
                                            <div>
                            <div style="font-size: 15pt">
                                <table>
                                    <thead>
                                        <tr>
                                            <th style="height: 25px; background-color:hotpink; font-size: 17px">No.</th>
                                            <th style="height: 25px; background-color:hotpink; font-size: 17px">제목</th>
                                            <th style="height: 25px; background-color:hotpink; font-size: 17px">작성자</th>
                                            <th style="height: 25px; background-color:hotpink; font-size: 17px">조회수</th>
                                            <th style="height: 25px; background-color:hotpink; font-size: 17px">작성일</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                    	<c:forEach var="boards" items="${ boards }">
                                    	<c:choose>
                                        <c:when test="${ boards.deleted }">
                                        <tr>
                                            <td style="height: 25px; font-size: 17px">${ boards.boardId }</td>
                                            <td style="height: 25px; width: 800px; font-size: 17px">[삭제된 글입니다.]</td>
                                            <td style="height: 25px; font-size: 17px">ADMIN</td>
                                            <td style="height: 25px; font-size: 17px">0</td>
                                            <td style="height: 25px; font-size: 17px"><fmt:formatDate value="${ boards.regdate }" pattern="yyyy-MM-dd"/></td>
                                        </tr>
                                        </c:when>
                                        <c:otherwise>
                              			<tr>
                                            <td style="height: 25px; font-size: 17px"><a href="eventBoardDetail?boardId=${ boards.boardId }&pageNo=${ pageNo }">${ boards.boardId }</a></td>
                                            <td style="height: 25px; font-size: 17px"><a href="eventBoardDetail?boardId=${ boards.boardId }&pageNo=${ pageNo }">${ boards.title }</a></td>
                                            <td style="height: 25px; font-size: 17px"><a href="eventBoardDetail?boardId=${ boards.boardId }&pageNo=${ pageNo }">ADMIN</a></td>
                                            <td style="height: 25px; font-size: 17px"><a href="eventBoardDetail?boardId=${ boards.boardId }&pageNo=${ pageNo }">0</a></td>
                                            <td style="height: 25px; font-size: 17px"><a href="eventBoardDetail?boardId=${ boards.boardId }&pageNo=${ pageNo }"><fmt:formatDate value="${ boards.regdate }" pattern="yyyy-MM-dd"/></a></td>
                                        </tr>  
                                         </c:otherwise>
                                         </c:choose>
										</c:forEach>
                                    </tbody>
                                </table>
                                <br>
                                <div style="text-align: center; background-color: white">
	                                            <span style="background-color: white">${ pager }</span>
								</div>
                            </div>
                        </div>
                    </div>
                  </div>
                 
              </div>
              
          </div>
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
        	
        	$('#btn-event-write').on('click', function(event){
				if($("#review_title_10508262282").val()==""){
					alert("제목을 입력해 주세요.");
					$("#review_title_10508262282").focus();
					return false;
				}
				if($("#review_body_10508262281").val()==""){
					alert("내용을 입력해 주세요.");
					$("#review_body_10508262281").focus();
					return false;
				}
			});
        	
        	
        	$('#btn-cancel').on('click', function(event) {
    			location.href = 'eventBoard?boardId=${board.boardId}' +
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