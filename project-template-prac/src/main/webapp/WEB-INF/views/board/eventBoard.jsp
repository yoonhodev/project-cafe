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

<style type="text/css">
.filebox .upload-name {
    display: inline-block;
    height: 40px;
    padding: 0 10px;
    vertical-align: middle;
    border: 1px solid #dddddd;
    width: 78%;
    color: #999999;
}

.filebox label {
    display: inline-block;
    padding: 10px 20px;
    color: #fff;
    vertical-align: middle;
    background-color: black;
    cursor: pointer;
    height: 40px;
    margin-left: 10px;
    margin-top: 8px;
}

.filebox input[type="file"] {
    position: absolute;
    width: 0;
    height: 0;
    padding: 0;
    overflow: hidden;
    border: 0;
}

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
                                                		첨부파일
                                                      <div class="filebox">
													    <input class="upload-name" style="width:300px;" placeholder="File Name">
													    <label for="file">파일찾기</label> 
													    <input type="file" id="file" name="attachBoard" accept="image/gif, image/jpeg, image/png, image/jpg" multiple>
													  </div>
                                                      <br>
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
<%--                            // <c:if test="${ keyword eq }"> --%>
<%--                            	<span>dd ${ searchedBoardkeyword }</span> --%>
<%--                             </c:if> --%>
                                <table class="table table-striped" style="height:55px">
                                    <thead>
                                        <tr>
                                            <th style="height: 70px; vertical-align: middle; background-color: skyblue; font-size: 17px">No.</th>
                                            <th style="height: 70px; vertical-align: middle; background-color: skyblue; font-size: 17px">제목</th>
                                            <th style="height: 25px; vertical-align: middle; background-color: skyblue; font-size: 17px">작성자</th>
                                            <th style="height: 25px; vertical-align: middle; background-color: skyblue; font-size: 17px">조회수</th>
                                            <th style="height: 25px; vertical-align: middle; background-color: skyblue; font-size: 17px">작성일</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <!--리스트 출력 시작 --> 
                                    	<c:forEach var="boards" items="${ boards }">
                                    	<c:choose>
                                        <c:when test="${ boards.deleted }">
                                        <tr>
                                            <td style="height: 70px; vertical-align: middle; width:80px; font-size: 17px">${ boards.boardId }</td>
                                            <td style="height: 70px; vertical-align: middle; font-size: 17px">[삭제된 글입니다.]</td>
                                            <td style="height: 25px; vertical-align: middle; width:100px; font-size: 17px">ADMIN</td>
                                            <td style="height: 25px; vertical-align: middle; width:80px; font-size: 17px">${ boards.readCount }</td>
                                            <td style="height: 25px; vertical-align: middle; width:150px;font-size: 17px"><fmt:formatDate value="${ boards.regdate }" pattern="yyyy-MM-dd"/></td>
                                        </tr>
                                        </c:when>
                                        <c:otherwise>
                              			<tr>
                                            <td style="height: 70px; vertical-align: middle; width:80px; font-size: 17px"><a href="eventBoardDetail?boardId=${ boards.boardId }&pageNo=${ pageNo }">${ boards.boardId }</a></td>
                                            <td style="height: 70px; vertical-align: middle; font-size: 17px"><a href="eventBoardDetail?boardId=${ boards.boardId }&pageNo=${ pageNo }">${ boards.title }</a></td>
                                            <td style="height: 25px; vertical-align: middle; width:100px; font-size: 17px"><a href="eventBoardDetail?boardId=${ boards.boardId }&pageNo=${ pageNo }">ADMIN</a></td>
                                            <td style="height: 25px; vertical-align: middle; width:80px; font-size: 17px"><a href="eventBoardDetail?boardId=${ boards.boardId }&pageNo=${ pageNo }">${ boards.readCount }</a></td>
                                            <td style="height: 25px; vertical-align: middle;  width:150px; font-size: 17px"><a href="eventBoardDetail?boardId=${ boards.boardId }&pageNo=${ pageNo }"><fmt:formatDate value="${ boards.regdate }" pattern="yyyy-MM-dd"/></a></td>
                                        </tr>  
                                         </c:otherwise>
                                         </c:choose>
										</c:forEach>
										<!--리스트 출력 시작 --> 
										
										 <!--검색된 리스트 출력 시작 --> 
										
                                    	<c:forEach var="searchedBoard" items="${ searchedBoard }">
                                    	<c:choose>
                                        <c:when test="${ searchedBoard.deleted }">
                                     
                                        </c:when>
                                        
                                        <c:otherwise>
                                      	<tr>
                                      		<td>
                                      			dddddddddddddd
                                      		</td>
                                      	</tr>
                              			<tr>
                              			
                                            <td style="height: 25px; vertical-align: middle; width:80px; font-size: 17px"><a href="eventBoardDetail?boardId=${ searchedBoard.boardId }&pageNo=${ pageNo }">${ searchedBoard.boardId }</a></td>
                                            <td style="height: 25px; vertical-align: middle; font-size: 17px"><a href="eventBoardDetail?boardId=${ searchedBoard.boardId }&pageNo=${ pageNo }">${ searchedBoard.title }</a></td>
                                            <td style="height: 25px; vertical-align: middle; width:100px; font-size: 17px"><a href="eventBoardDetail?boardId=${ searchedBoard.boardId }&pageNo=${ pageNo }">ADMIN</a></td>
                                            <td style="height: 25px; vertical-align: middle; width:80px; font-size: 17px"><a href="eventBoardDetail?boardId=${ searchedBoard.boardId }&pageNo=${ pageNo }">${ searchedBoard.readCount }</a></td>
                                            <td style="height: 25px; vertical-align: middle; width:150px; font-size: 17px"><a href="eventBoardDetail?boardId=${ searchedBoard.boardId }&pageNo=${ pageNo }"><fmt:formatDate value="${ searchedBoard.regdate }" pattern="yyyy-MM-dd"/></a></td>
                                        </tr>  
                                         </c:otherwise>
                                         </c:choose>
										</c:forEach>
										<!--검색된 리스트 출력 시작 --> 
                                    </tbody>
                                </table>
                                <div>
                                	<input name="keyword" id="keyword" type="text" placeholder="제목을 입력해 주세요." class="form-control" style="width:200px; display:inline;">
                                	<button style="width:60px; margin-top:16px; display:inline" id="search-btn" class="btn mb-3" >검색</button>
	                            </div>
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
            <!--MainContent-->
        </div>
    	<!--End Body Content-->
    <!--Footer-->
   <jsp:include page="/WEB-INF/views/modules/footer.jsp"></jsp:include>
    <!--End Footer-->
    <!--Scoll Top-->
    <span id="site-scroll"><i class="icon anm anm-angle-up-r"></i></span>
    <!--End Scoll Top-->
    <jsp:include page="/WEB-INF/views/modules/common-js.jsp"></jsp:include>
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
            
            $('#search-btn').on('click', function(event) {
            	var text = $("#keyword").val();
            	
            	if($("#keyword").val()==""){
					alert("검색할 제목을 입력해주세요.");
					$("#keyword").focus();
					return false;
				}
    			location.href = 'searchedEventBoard?keyword=' + text;
    		});
            
            $("#file").on('change',function(){
            	  var fileName = $("#file").val();
            	  $(".upload-name").val(fileName);
            	});
    
        </script>
 


<!-- belle/short-description.html   11 Nov 2019 12:43:10 GMT -->
</html>