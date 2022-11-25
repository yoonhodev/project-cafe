<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<!DOCTYPE html>
<html class="no-js" lang="en">

<!-- belle/blog-fullwidth.html   11 Nov 2019 12:46:09 GMT -->
<head>

<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="x-ua-compatible" content="ie=edge">
<title>GREEN CAFE - NOTICE BOARD</title>
<meta name="description" content="description">
<meta name="viewport" content="width=device-width, initial-scale=1">

<c:set var="enter" value="
" />  <!-- 엔터쳤을때 화면에서 실제 적용하게 해주는 코드  -->

<jsp:include page="/WEB-INF/views/modules/common-css.jsp"></jsp:include>

<style>
@font-face {
    font-family: 'neon';
    src: url('../fonts/TmonMonsori.ttf') format('truetype');
}
body, h1, h2 {
	font-family: 'neon';
}

.neon-font {
	font-family: 'neon';
}
</style>
</head>
<body class="template-blog belle neon-font">
<div class="pageWrapper neon-font">
	<jsp:include page="/WEB-INF/views/modules/header.jsp"></jsp:include>
	<br><br><br><br>
	<!--End Mobile Menu-->
    <!--Body Content-->
    <div id="page-content">
    	<!--Page Title-->
    	<div class="page section-header text-center mb-0">
			<div class="page-title">
        		<div class="wrapper"><h1 class="page-width">NOTICE BOARD</h1></div>
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
                        <div class="article" style="font-size: 15px"> 
                            <!-- Article Image --> 
                            <h2 class="h3" style="font-size: 17px"><Strong>${ boardDetail.title }</Strong></h2>
                            <ul class="publish-detail">                  
                          &nbsp;<li><i class="anm anm-user-al" aria-hidden="true" style="color: hotpink"></i> ADMIN</li>
                          &nbsp;<li><i class="icon anm anm-clock-r" style="color: hotpink"></i> <time datetime="2017-05-02"><fmt:formatDate value="${ boardDetail.regdate }" pattern="yyyy-MM-dd"/></time></li>
                          &nbsp;<li><i class="icon anm anm-search-l" style="color: hotpink"></i>${ boardDetail.readCount }</li>
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
                            <a id="update_button" class="btn" style="color: white">수정</a>
                            <a id="delete_button" class="btn" style="color: white">삭제</a>
                            </c:if>
                            <a href="noticeBoard?pageNo=${ pageNo }" class="btn" style="color: white">목록보기</a>
                        </div>
                    </div>
                </div>
                <!--End Main Content-->
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
	    <jsp:include page="/WEB-INF/views/modules/common-js.jsp"></jsp:include>
	</div>
	</div>
<script type="text/javascript">
	$(function() {
		
		// 글 내용 삭제
		$('#delete_button').on('click', function(event) {
			const ok = confirm("${ boardDetail.boardId }번 글을 삭제할까요?");
			if (!ok) return;
			//location.href = 'delete.action?boardId=${boardDetail.boardId}&pageNo=${pageNo}';
			location.href = 'delete/' + ${ boardDetail.boardId } + '/?&pageNo=${pageNo}';
		});
		
		// 글 내용 수정 
		$('#update_button').on('click', function(event) {
			const ok = confirm("${ boardDetail.boardId }번 글을 수정할까요???");
			if (!ok) return;
			
			location.href = 'edit?boardId=${boardDetail.boardId}&pageNo=${pageNo}';
		});
		
	})

</script>

</body>

<!-- belle/blog-fullwidth.html   11 Nov 2019 12:46:09 GMT -->
</html>