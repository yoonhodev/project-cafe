<%@page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<c:set var="enter" value="
" />  <!-- 엔터쳤을때 화면에서 실제 적용하게 해주는 코드  -->

<c:forEach var="comment" items="${ comments }">	
		     <div class="card mb-2">
					<div class="card-header bg-light">
					        
					       
					        
					        <div style='display:${ (not empty loginuser and loginuser.customerId == comment.customerId) ? "block" : "none" }'>
					        	<i class="fa fa-comment fa"></i> REPLY
						        <a class="edit-comment" data-comment-no="${ comment.commentId }" href="javascript:">편111집</a>
								&nbsp;
								<a class="delete-comment" data-comment-no="${ comment.commentId }" href="javascript:">삭제</a>
							</div> 
					        
					
							
							<div id="comment-view-area-${ comment.commentId }">
								<c:choose>
								<c:when test="${ comment.deleted }">
							<br><br>
							<span style='color:gray'>삭제된 글입니다.</span>
							<br><br>
						
						</c:when>
						<c:otherwise>
							 <i class="fa fa-comment fa"></i> REPLY
							<span class="anm anm-user-al" aria-hidden="true"> ${ comment.customerId }</span> &nbsp;&nbsp; 
							<span class="icon anm anm-clock-r" aria-hidden="true"> <fmt:formatDate value="${ comment.regDate }" pattern="yyyy-MM-dd-hh:mm:ss"/>
								
							
							
							</span>
							
						    <br /><br />
						    <span>${ fn:replace(comment.content, enter, "<br>") }</span>
							<br /><br />
							
<%-- 							<a href="#" data-comment-no="${ comment.commentId }" class="recomment-link btn btn-sm btn-success">댓글 쓰기</a> --%>
						</c:otherwise>
						</c:choose>
			        		
						</div>	                
<%-- 						<div id="comment-edit-area-${ comment.commentId }" style="display: none"> --%>
<%-- 							${ comment.customerId } &nbsp;&nbsp; [${ comment.regDate }] --%>
<!-- 							<br /><br /> -->
<!-- 							<form> -->
<%-- 							<input type="hidden" name="commentId" value="${ comment.commentId }" /> --%>
<!-- 							<textarea name="content" style="width: 250px" rows="3"  -->
<%-- 								maxlength="200">${ comment.content }</textarea> --%>
<!-- 							</form> -->
<!-- 							<br /> -->
<!-- 							<div> -->
<%-- 								<a class="update-comment" data-comment-no="${ comment.commentId }" href="javascript:">수정</a>  --%>
<!-- 								&nbsp;  -->
<%-- 								<a class="cancel-edit-comment" data-comment-no="${ comment.commentId }" href="javascript:">취소</a> --%>
<!-- 							</div> -->
<!-- 						</div> -->
			</div>
	</c:forEach>        	