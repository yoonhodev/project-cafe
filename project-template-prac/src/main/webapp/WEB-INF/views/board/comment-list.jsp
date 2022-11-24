<%@page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<c:set var="enter" value="
" />
<!-- 엔터쳤을때 화면에서 실제 적용하게 해주는 코드  -->

<c:forEach var="comment" items="${ comments }">
	<div id="comment-view-area-${ comment.commentId }">
	<c:choose>
	<c:when test="${ comment.deleted }">
		<div class="card-footer bg-light">
			<i class="icon anm anm-map-marker-al" aria-hidden="true"></i> ${ comment.commentId } &nbsp;&nbsp; 
		</div>
		<div>
			<ul class="list-group list-group-flush">
				<li class="list-group-item"><span>댓글이 삭제 되었습니다.</span>
				</li>
			</ul>
		</div>
	</c:when>
	<c:otherwise>
			<div class="card-footer bg-light">
				<span class="anm anm-user-al" aria-hidden="true"> ${ comment.customerId }</span> &nbsp;&nbsp; 
				<span class="icon anm anm-clock-r" aria-hidden="true"> <fmt:formatDate value="${ comment.regDate }" pattern="yyyy-MM-dd-hh:mm:ss" /></span> 
				<span style='float:right; display:${ (not empty loginuser and loginuser.customerId == comment.customerId) ? "inline-block" : "none" }'>
					<a class="edit-comment" id="edit-comment" data-comment-no="${ comment.commentId }" href="javascript:">편집</a> &nbsp; 
					<a class="delete-comment" id="delete-comment" data-comment-no="${ comment.commentId }" href="javascript:">삭제</a> 
				</span>
			</div>
			<div class="card-body">
				<ul class="list-group list-group-flush">
					<li class="list-group-item"><span>${ fn:replace(comment.content, enter, "<br>") }</span>
					</li>
				</ul>
			</div>
	</c:otherwise>
	</c:choose>
	</div>
		<div id="comment-edit-area-${ comment.commentId }" style="display: none">
		<div class="card-footer bg-light">
			<i class="icon anm anm-map-marker-al" aria-hidden="true"></i> ${ comment.commentId } &nbsp;&nbsp; 
			<span class="anm anm-user-al" aria-hidden="true"> ${ comment.customerId }</span> &nbsp;&nbsp; 
			<span class="icon anm anm-clock-r" aria-hidden="true"> <fmt:formatDate value="${ comment.regDate }" pattern="yyyy-MM-dd-hh:mm:ss" /></span> 
			<span style='float:right; display:${ (not empty loginuser and loginuser.customerId == comment.customerId) ? "inline-block" : "none" }'>
				<a class="update-comment" data-comment-no="${ comment.commentId }" href="javascript:">수정 완료</a> &nbsp; 
				<a class="cancel-edit-comment" data-comment-no="${ comment.commentId }" href="javascript:">취소</a> 
			</span>
		</div>											
			<div class="card-body">
				<ul class="list-group list-group-flush">
					<li class="list-group-item">
						<form class="my-form">
							<input type="hidden" name="commentId" value="${ comment.commentId }" class='abc def'>
							<textarea name="content">${ fn:replace(comment.content, enter, "<br>") }</textarea>
						</form>
					</li>
				</ul>
			</div>
			</div>
</c:forEach>
