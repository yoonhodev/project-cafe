<%@page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %> 


<!DOCTYPE html>
<html class="no-js" lang="ko">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="x-ua-compatible" content="ie=edge">
<title>주문내역</title>
<meta name="description" content="description">
<meta name="viewport" content="width=device-width, initial-scale=1">
	<!-- Common-css -->
	<jsp:include page="/WEB-INF/views/modules/common-css.jsp"></jsp:include>
	<style>
@font-face {
    font-family: 'neon';
    src: url('../fonts/TmonMonsori.ttf') format('truetype');
}
body, h1, table tr th {
	font-family: 'neon';
}
	@media screen and (max-width: 990px) {
    .res_tbl_wrap table col {
        width: 100% !important;
    }
    .res_tbl_wrap table thead {
        display: none;
    }
    .res_tbl_wrap table tbody tr {
        border-bottom: 1px solid #efefef;
    }
    .res_tbl_wrap table tbody tr td {
        width: 100%;
        display: flex;
        margin-bottom: 2px;
        padding: 5px;
        border-bottom: none;
        font-size: 14px;
        line-height: 18px;
    }
    .res_tbl_wrap table tbody tr td:first-child, 
    .res_tbl_wrap table tbody tr th:first-child {
        padding-top: 16px;
    }
    .res_tbl_wrap table tbody tr td:last-child, 
    .res_tbl_wrap table tbody tr th:last-child {
        padding-bottom: 15px;
    }
    .res_tbl_wrap table tbody tr td:before {
        display: inline-block;
        margin-right: 12px;
        -webkit-box-flex: 0;
        -ms-flex: 0 0 100px;
        flex: 0 0 100px;
        font-weight: 700;
        content: attr(data-label);
    }
}
</style>
</head>
<body class="page-template belle">
	
	<div class="pageWrapper">

		<!-- Header -->
		<jsp:include page="/WEB-INF/views/modules/header.jsp"></jsp:include>
		<!-- ./Header -->

		<!-- Body Content -->
		
		<div id="page-content">
	    	<!--Page Title-->
	    	<br> <br> <br> <br>
	    	<div class="page section-header text-center mb-0">
				<div class="page-title">
	        		<div class="wrapper"><h1 class="page-width">주문내역</h1></div>
	      		</div>
			</div>
	        <!--End Page Title-->
		    <div class="bredcrumbWrap" style="text-align: left;">
	            <div class="container breadcrumbs">
	                <a href="home" title="Back to the home page">홈</a><span aria-hidden="true">›</span><a href="mypage" title="Back to the Mypage">마이 페이지</a><span aria-hidden="true">›</span><span>주문내역</span>
	            </div>
        	</div>
        	
        	<div class="container">
        		<div class="row">
        		<div class="res_tbl_wrap">
     			<table class="table">
					<thead class="cart__row cart__header">
						<tr>
							<th class="text-center">주문번호</th>
							<th class="text-center">주문지점</th>
							<th class="text-center">주문내용</th>
							<th class="text-center">주문금액</th>
							<th class="text-center">주문일자</th>
							<th class="text-center">주문종류</th>
							<th class="text-center">주문상태</th>
							<th class="text-center">주소</th>
						</tr>
					</thead>
						<tbody>
							<c:forEach var="order" items="${ orders }" >
                              	<tr class="cart__row border-bottom border-top" align="center">
                                  <td>
                                      <span>${ order.orderId }</span>
                                  </td>
                                  <td>
                                      <span>${ order.storeName }</span>
                                  </td>
                                  <td style="padding: 10px 0">
									<c:forEach var="detail" items="${ order.orderDetailDtos }">
										<div>
										<span>${ detail.productDto.prodName } </span>
										<span>￦${ detail.productDto.prodPrice }</span>
										<span> * ${ detail.amount }</span>
										</div>
									</c:forEach>
									<c:if test="${ order.orderType eq 'A' }">
										<span>배달비 ￦3000</span>
									</c:if>
                                  </td>
                                  <td>
                                      <span>￦${ order.total }</span>
                                  </td>
                                  <td>
                                      <span><fmt:formatDate value="${order.orderDate}" pattern="yyyy-MM-dd"/></span>
                                  </td>
                                  <td>
                                  <c:choose>
                                  	<c:when test = "${ order.orderType eq 'A'}">
                                  		<span>배달</span>
                                  	</c:when>
                                  	<c:when test = "${ order.orderType eq 'B'}">
                                  		<span>포장</span>
                                  	</c:when>
                                  	
                                  	<c:otherwise>
                                  		<span></span>
                                  	</c:otherwise>
                                  </c:choose>
                                  </td>
                                  <td>
                                  <c:choose>
                                  	<c:when test = "${ order.orderStat eq '0'}">
                                  		<span>만드는중</span>
                                  	</c:when>
                                  	<c:when test = "${ order.orderStat eq '2'}">
                                  		<span>배달중</span>
                                  	</c:when>
                                  	<c:when test = "${ order.orderStat eq '3'}">
                                  		<span>배달완료</span>
                                  	</c:when>
                                  	<c:when test = "${ order.orderStat eq '1'}">
                                  		<span>수령완료</span>
                                  	</c:when>
<%--                                   	<c:when  test = "${ order.orderType eq 'B'}">
                                  		<span>포장</span>
                                  	</c:when> --%>
                                  	
                                  	<c:otherwise>
                                  		<span></span>
                                  	</c:otherwise>
                                  </c:choose>
                                  </td>
                              	</tr>
                             </c:forEach>
                              	
                              	
                      		</tbody>
					<tfoot></tfoot>
				</table>
				</div>
				
				                              	
				<br><br>
        	
        	
        	</div>
		
		
		<div class="orderhistory-wrapper" style="text-align: center;">
		
		<!-- 로그인 여부 확인하고 로그인 안되어 있으면 로그인 페이지로 사출 -->
		
		
		
			
		
		</div>
		
		
		</div>
		
		
		
		<!-- ./Body Content -->

		<!-- Footer -->
		<jsp:include page="/WEB-INF/views/modules/footer.jsp"></jsp:include>
		<!-- ./Footer -->

		<!-- Scoll Top -->
		<span id="site-scroll"><i class="icon anm anm-angle-up-r"></i></span>
		<!-- ./Scoll Top -->

		<!-- Common-js -->
		<jsp:include page="/WEB-INF/views/modules/common-js.jsp"></jsp:include>
	</div>
	</div>
</body>
</html>







