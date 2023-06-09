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
<title>GREEN CAFE - NOTICE BOARD</title>
<meta name="description" content="description">
<meta name="viewport" content="width=device-width, initial-scale=1">
<jsp:include page="/WEB-INF/views/modules/common-css.jsp"></jsp:include>
<style>
@font-face {
    font-family: 'neon';
    src: url('../fonts/TmonMonsori.ttf') format('truetype');
}
body, h1, table tr th {
	font-family: 'neon';
}
</style>
</head>
<body class="template-product belle">
	<div class="pageWrapper">
    	<jsp:include page="/WEB-INF/views/modules/header.jsp"></jsp:include>
        <br><br><br><br>
    	<div class="page section-header text-center mb-0">
			<div class="page-title">
        		<div class="wrapper"><h1 class="page-width">Notice Board</h1></div>
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

                                                <form method="post" action="writeBoard" id="new-review-form" class="new-review-form" >
                                                	<input type="hidden" name="boardType" value="true">
                                                    <h3 class="spr-form-title">Write notice</h3>
                                                    <fieldset class="spr-form-contact">
                                                    </fieldset>
                                                    <fieldset class="spr-form-review">
                                                      <div class="spr-form-review-title">
                                                        <label class="spr-form-label" for="review_title_10508262282">제목</label>
                                                        <input class="spr-form-input spr-form-input-text " id="review_title_10508262282" type="text" name="title" value="" placeholder="제목을 입력하세요.">
                                                      </div>
                                                      <div class="spr-form-review-body">
                                                        <label class="spr-form-label" for="review_body_10508262282">내용<span class="spr-form-review-body-charactersremaining">(1500)</span></label>
                                                        <div class="spr-form-input">
                                                          <textarea class="spr-form-input spr-form-input-textarea " id="review_body_10508262282" data-product-id="10508262282" name="content" rows="10" placeholder="내용을 입력하세요."></textarea>
                                                        </div>
                                                      </div>
                                                    </fieldset>
                                                    <fieldset class="spr-form-actions">
                                                        <input type="submit" id="btn-notice-write" class="spr-button spr-button-primary button button-primary btn btn-primary" value="확인">
                                                        <input id="btn-cancel" type="button" class="spr-button spr-button-primary button button-primary btn btn-primary" value="취소">
                                                    </fieldset>
                                                   	<br>
                                                </form>
                                            </div>
                                         </div>
                                      <div>
		                            <div style="font-size: 15pt">
		                               <table class="table table-striped" style="height:55px">
		                                    <thead>
		                                         <tr>
		                                            <th style="height: 70px; vertical-align: middle; background-color: gray; font-size: 15px">No.</th>
		                                            <th style="height: 70px; vertical-align: middle; background-color: gray; font-size: 15px">제목</th>
		                                            <th style="height: 25px; vertical-align: middle; background-color: gray; font-size: 15px">작성자</th>
		                                            <th style="height: 25px; vertical-align: middle; background-color: gray; font-size: 15px">조회수</th>
		                                            <th style="height: 25px; vertical-align: middle; background-color: gray; font-size: 15px">작성일</th>
		                                        </tr>
		                                    </thead>
		                                    <tbody>
		                                    	<c:forEach var="boards" items="${ boards }">
		                                    	<c:choose>
		                                        <c:when test="${ boards.deleted }">
		                                        <tr>
		                                            <td style="height: 70px; vertical-align: middle; width:80px; font-size: 15px">${ boards.boardId }</td>
		                                            <td style="height: 70px; vertical-align: middle; font-size: 15px">[삭제된 글입니다.]</td>
		                                            <td style="height: 25px; vertical-align: middle; width:100px; font-size: 15px">ADMIN</td>
		                                            <td style="height: 25px; vertical-align: middle; width:80px; font-size: 15px">${ boards.readCount }</td>
		                                            <td style="height: 25px; vertical-align: middle; width:150px;font-size: 15px"><fmt:formatDate value="${ boards.regdate }" pattern="yyyy-MM-dd"/></td>
		                                        </tr>
		                                        </c:when>
		                                        <c:otherwise>
		                              			<tr>
		                                            <td style="height: 70px; vertical-align: middle; width:80px; font-size: 15px"><a href="noticeBoardDetail?boardId=${ boards.boardId }&pageNo=${ pageNo }">${ boards.boardId }</a></td>
		                                            <td style="height: 70px; vertical-align: middle; font-size: 15px"><a href="noticeBoardDetail?boardId=${ boards.boardId }&pageNo=${ pageNo }">${ boards.title }</a></td>
		                                            <td style="height: 25px; vertical-align: middle; width:100px; font-size: 15px"><a href="noticeBoardDetail?boardId=${ boards.boardId }&pageNo=${ pageNo }">ADMIN</a></td>
		                                            <td style="height: 25px; vertical-align: middle; width:80px; font-size: 15px"><a href="noticeBoardDetail?boardId=${ boards.boardId }&pageNo=${ pageNo }">${ boards.readCount }</a></td>
		                                            <td style="height: 25px; vertical-align: middle;  width:150px; font-size: 15px"><a href="noticeBoardDetail?boardId=${ boards.boardId }&pageNo=${ pageNo }"><fmt:formatDate value="${ boards.regdate }" pattern="yyyy-MM-dd"/></a></td>
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
              </div>
           </div>
        </div>
    
    <!--Footer-->
    <jsp:include page="/WEB-INF/views/modules/footer.jsp"></jsp:include>
    <!--End Footer-->
    <!--Scoll Top-->
    <span id="site-scroll"><i class="icon anm anm-angle-up-r"></i></span>
    <!--End Scoll Top-->
    
    <!-- Including Jquery -->
    <jsp:include page="/WEB-INF/views/modules/common-js.jsp"></jsp:include>

     <script>
        $(function(){
        	
        	$('#btn-notice-write').on('click', function(event){
				if($("#review_title_10508262282").val()==""){
					alert("제목을 입력해 주세요.");
					$("#review_title_10508262282").focus();
					return false;
				}
				
				if($("#review_body_10508262282").val()==""){
					alert("내용을 입력해 주세요.");
					$("#review_body_10508262282").focus();
					return false;
				}
				
			});
        	
        	$('#btn-cancel').on('click', function(event) {
    			location.href = 'noticeBoard?boardId=${board.boardId}' +
    							'&pageNo=${pageNo}';
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