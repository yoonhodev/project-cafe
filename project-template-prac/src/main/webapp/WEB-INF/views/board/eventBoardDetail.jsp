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
        		<div class="wrapper"><h1 class="page-width">EVENT BOARD</h1></div>
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
            <br><br>
            	<form id="commentform" action="write-comment.action" method="post">
            	<input type="hidden" name="boardId" value="${ boardDetail.boardId }" />
				<input type="hidden" name="pageNo" value="${ pageNo }" />				
				<input type="hidden" name="customerId" value="${ loginuser.customerId }" />
                <div class="card mb-2">
					<div class="card-header bg-light">
					        <i class="fa fa-comment fa"></i> REPLY
					</div>
					<div class="card-body">
						<ul class="list-group list-group-flush">
						    <li class="list-group-item">
							<textarea class="form-control" id="comment_content" name="content" rows="3"></textarea>
							<input type="submit" value="댓글 쓰기" id="writecomment" class="btn btn-dark mt-3" style="float: right;"></button>
						    </li>
						</ul>
					</div>
				</div>
				</form>
				
				
			
            <br>
   
    
		
		
		<!-- comment list area  -->
	
		<!-- end of comment list area	 -->
			
			
				
				
				    
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
     <script src="https://code.jquery.com/jquery-3.6.1.js"></script>
	 <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js"></script>
	
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
		
		$('#writecomment').on('click', function(event){
			alert('서버로 댓글 쓰기 요청');
			$('#commentform').submit(); // form 객체의 submit 메서드는 form을 서버로 전송하는 명령
		});
				
		var currentEditCommentNo = null;
		
		$('#comment-list').on('click', '.edit-comment', function(event){
			event.preventDefault();
			
			if (currentEditCommentNo != null) { // 댓글 수정중일때 다른댓글 수정화면 닫기
				$('#comment-view-area-' + currentEditCommentNo).show();
				$('#comment-edit-area-' + currentEditCommentNo).hide();
			}
			
			var commentNo = $(this).data('comment-no'); // $(this) : 이벤트 발생 객체 (여기서는 <a class="ediht-comment" ...>를 의미함)
			
			$('#comment-view-area-' + commentNo).hide();
			$('#comment-edit-area-' + commentNo).show();
			
			currentEditCommentNo = commentNo;
		});
		
		$('#comment-list').on('click', '.cancel-edit-comment', function(event){
			event.preventDefault();
			
			var commentNo = $(this).data("comment-no"); // $(this) : 이벤트 발생 객체 (여기서는 <a class="cancle-ediht-comment" ...>를 의미함)
			const editForm = $('#comment-edit-area-' + commentNo + ' form');
			editForm[0].reset(); // editForm : jQuery 객체, editForm[0] : javascript 객체// 지우는게 아니라 원래대로 돌아가게 해줌
			
			$('#comment-view-area-' + commentNo).show();
			$('#comment-edit-area-' + commentNo).hide();
			
			currentEditCommentNo = null;
		});
		
// 		//$('#comment-list .delete-comment').on('click', function(event) { // 이렇게하면 첫화면 댓글 삭제한후 다음부턴 안먹힘 계쏙 새로고침해야됨
// 		$('#comment-list').on('click', '.delete-comment', function(event) { // 새로고침안해도 계속 삭제 됨
// 		event.preventDefault();
		
// 		var commentNo = $(this).data('comment-no'); // .data(comment-no') --> data-comment-no="value"를 조회
		
// 		const yn = confirm(commentNo + "번 댓글을 삭제할까요?");
// 		if (!yn) return;   // 아니오 클릭했을때
		
// 		// 동기 방식 요청 (All Refresh)
// 		//location.href =
// 		//'delete-comment.action?commentNo=' + commentNo + '&boardNo=${ board.boardNo }&pageNo=${ pageNo }';
					
// 		// jQuery 기반의 비동기(ajax) 요청
// 		$.ajax({
// 			"url": "delete-comment.action",
// 			"method": "get",
// 			"data": 'commentId=' + commentId,
// 			"success": function(data, status, xhr) {
// 				if (data == "success") {
// 					// 1. 해당 댓글만 수정
// 					/* const html = `<br><br>
// 					<span style='color:gray'>삭제된 글입니다.</span>
// 					<br><br>`
// 					$('#comment-view-area-' + commentNo).html(html); */
// 					//alert('삭제 성공!');
// 					// 2. 댓글 목록 전체 갱신
// 					//       jQuery의 load 함수 : 지정된 html 요소의 내용을 응답받는 부분 HTML로 (비동기) 갱신 
// 					$('#comment-list').load("comment-list.action?boardId=${ board.boardId}"); // 작업 다 끝난 후 화면 갱신 
// 				} else {
// 					alert('삭제실패 2');
// 				}
// 			},
// 			"error": function(xhr, status, err) {
// 				alert('삭제 실패!');
// 			}
		
// 		});
// 	});
		//$('#comment-list').on('click', '.update-comment', function(event) { // 이렇게 하면 화면 새로고침한후 클릭안됨	
// 		$('#comment-list').on('click', '.update-comment', function(event) {
// 			const commentNo = $(this).data('comment-no'); // $(this) : 이벤트 발생한 객체, .data('abc') : data-abc값 읽기
				
// 			const editForm = $('#comment-edit-area-' + commentNo + ' form')
// 			//alert(editForm.serialize());
		
// 			$.ajax({
// 				"url": "update-comment.action",
// 				"method": "post", 
// 				"data": editForm.serialize(),
// 				"success": function(data) {
// 					if (data == "success") {
// 						$('#comment-list').load("comment-list.action?boardId=${ board.boardId}"); // 작업 다 끝난 후 화면 갱신
// 					}
// 				},
// 				"error": function(xhr, status, err) {
// 					alert('fail : ' + status);
// 				}
			
// 			});
			
// 		});
				
		})
		


</script>

</body>

<!-- belle/blog-fullwidth.html   11 Nov 2019 12:46:09 GMT -->
</html>