<%@page import="com.projectprac.dto.BoardAttachDto"%>
<%@page import="com.projectprac.dto.BoardDto"%>


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
                            <c:forEach var="attachment" items="${ boardDetail.attachments }">			
                             <a class="article_featured-image" href="#"><img src="/project-template-prac/resources/assets/images/cafe-out-image-folder/${attachment.savedFileName}" alt="${attachment.savedFileName}"></a> 
                             </c:forEach>
                            <h2 class="h3" style="font-size: 17px"><a href="#">${ boardDetail.title }</a></h2>
                            <ul class="publish-detail">   
                       	        <li><i class="icon anm anm-map-marker-al" aria-hidden="true"></i> ${ boardDetail.boardId }</li>                   
                                <li><i class="anm anm-user-al" aria-hidden="true"></i> ADMIN</li>
                                <li><i class="icon anm anm-clock-r"></i> <fmt:formatDate value="${ boardDetail.regdate }" pattern="yyyy-MM-dd"/></li>
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
                                   <c:forEach var="attachment" items="${ boardDetail.attachments }">
                                   <hr>
                                   <i class="icon anm anm-envelope-l"></i>
			                 		<span>[${ attachment.userFileName }]</span>
					     	       </c:forEach>
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
            
            <!-- write comment area -->
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
				
        <!-- end of write comment area -->	
		<!-- comment list area  -->
		<br>
	    <table id="comment-list" style="border:solid 1px;margin:0 auto">
		</table>
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
		
		$('#comment-list').load("comment-list.action?boardId=${ boardDetail.boardId}");

		// 댓글 작성 버튼 눌렀을때
		$('#writecomment').on('click', function(event){
			if($("#comment_content").val()==""){
				alert("댓글을 작성해주세요.");
				$("#comment_content").focus();
				return false;
			}
				
			let signIn = "${ loginuser.customerId }";
    		if (signIn == ""){
    			alert("댓글은 로그인 후 작성하실 수 있습니다.");
    			event.preventDefault();
    			location.href = "login";
    		} else {
    		}
		});
	
	$('#comment-list').on('click', '.delete-comment', function(event) {
		event.preventDefault();
		
		var commentId = $(this).data('comment-no'); // .data(comment-no') --> data-comment-no="value"를 조회
		
		const yn = confirm("댓글을 삭제할까요?");
		if (!yn) return;   // 아니오 클릭했을때
		
		location.href = 'delete-comment.action?commentId=' + commentId + '&boardId=${ boardDetail.boardId }&pageNo=${ pageNo }';
		
	});
	
	var currentEditCommentId = null;
	
	// 댓글 수정 버튼 눌렀을 때 
	$('#comment-list').on('click', '.edit-comment', function(event){
		event.preventDefault();
		
		if (currentEditCommentId != null) { // 댓글 수정중일때 다른댓글 수정화면 닫기
			$('#comment-view-area-' + currentEditCommentId).show();
			$('#comment-edit-area-' + currentEditCommentId).hide();
		}
		
		var commentId = $(this).data('comment-no'); // $(this) : 이벤트 발생 객체 (여기서는 <a class="edit-comment" ...>를 의미함)
		
		$('#comment-view-area-' + commentId).hide();
		$('#comment-edit-area-' + commentId).show();
		
		currentEditCommentId = commentId;
	});
	
	$('#comment-list').on('click', '.cancel-edit-comment', function(event){
		event.preventDefault();
		
		var commentId = $(this).data("comment-no"); // $(this) : 이벤트 발생 객체 (여기서는 <a class="cancle-ediht-comment" ...>를 의미함)
		const editForm = $('#comment-edit-area-' + commentId + ' form');
		editForm[0].reset(); // editForm : jQuery 객체, editForm[0] : javascript 객체// 지우는게 아니라 원래대로 돌아가게 해줌
		
		$('#comment-view-area-' + commentId).show();
		$('#comment-edit-area-' + commentId).hide();
		
		currentEditCommentId = null;
	});
	
	$('#comment-list').on('click', '.update-comment', function(event) {
		const commentId = $(this).data('comment-no'); // $(this) : 이벤트 발생한 객체, .data('abc') : data-abc값 읽기

		/*
		const editForm = $('#comment-edit-area-' + commentId + ' form')
		//alert(editForm.serialize());
		alert('댓글 수정 완료');
		$.ajax({
			"url": "update-comment.action",
			"method": "post", 
			"data": editForm.serialize(),
			"success": function(data) {
				if (data == "success") {
					$('#comment-list').load("comment-list.action?boardId=${ boardDetail.boardId}"); // 작업 다 끝난 후 화면 갱신
				}
			},
			"error": function(xhr, status, err) {
				alert('fail : ' + status);
			}
		
		});
		*/
		const editLi = $('#comment-edit-area-' + commentId + ' li')
		//alert(editForm.serialize());
		const formData = 'commentId=' + editLi.find('input[name=commentId]').val() + '&content=' + editLi.find('textarea[name=content]').val();
		alert('댓글 수정 완료');
		$.ajax({
			"url": "update-comment.action",
			"method": "post", 
			"data": formData,
			"success": function(data) {
				if (data == "success") {
					$('#comment-list').load("comment-list.action?boardId=${ boardDetail.boardId}"); // 작업 다 끝난 후 화면 갱신
				}
			},
			"error": function(xhr, status, err) {
				alert('fail : ' + status);
			}
		
		});
		
	});
	});
	
</script>

</body>

<!-- belle/blog-fullwidth.html   11 Nov 2019 12:46:09 GMT -->
</html>