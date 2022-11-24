<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>


<!DOCTYPE html>
<html class="no-js" lang="ko">

<head>

<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="x-ua-compatible" content="ie=edge">
<title>GREEN CAFE - EVENT BOARD</title>
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
                  		  </div>
	                    </div>
			          </div>
			        </div>
			      </div>
    <!--Footer-->
    <jsp:include page="/WEB-INF/views/modules/footer.jsp"></jsp:include>
    <!--End Footer-->
    
    <span id="site-scroll"><i class="icon anm anm-angle-up-r"></i></span>
        
     <!-- Including Jquery -->
     <jsp:include page="/WEB-INF/views/modules/common-js.jsp"></jsp:include>
     <script>
        $(function(){
        	$('#btn-cancel').on('click', function(event) {
    			location.href = 'eventBoardDetail?boardId=${board.boardId}' +
    							'&pageNo=${pageNo}';
    		});
          
        });
        </script>
</body>

<!-- belle/short-description.html   11 Nov 2019 12:43:10 GMT -->
</html>