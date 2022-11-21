<%@page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

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
	                <a href="index.html" title="Back to the home page">홈</a><span aria-hidden="true">›</span><a href="mypage" title="Back to the Mypage">마이 페이지</a><span aria-hidden="true">›</span><span>주문내역</span>
	            </div>
        	</div>
        	
        	<div>
        		
     			<table>
					<thead class="cart__row cart__header">
						<tr>
							<th class="text-center">주문번호</th>
							<th class="text-center">주문지점</th>
							<th class="text-center">주문내용</th>
							<th class="text-center">주문금액</th>
							<th class="text-center">주문일자</th>
						</tr>
					</thead>
						<tbody>
							<c:forEach var="order" items="${ orders }" >
                              	<tr class="cart__row border-bottom line1 cart-flex border-top" align="center">
                                  <td height="200px">
                                      <span>${ order.orderId }</span>
                                  </td>
                                  <td>
                                      <span>${ order.storeName }</span>
                                  </td>
                                  <td>
									<c:forEach var="detail" items="${ order.orderDetailDtos }">
										<div><span>${ detail.productDto.prodName }</span>
										<span>${ detail.productDto.prodPrice }</span>
										<span>${ detail.amount }</span>
										</div>
									</c:forEach>
                                  </td>
                                  <td>
                                      <span>${ order.total }</span>
                                  </td>
                                  <td>
                                      <span>${ order.orderDate }</span>
                                  </td>
                              	</tr>
                             </c:forEach>
                              	
                              	
                      		</tbody>
					<tfoot></tfoot>
				</table>
				
				                              	
				<br><br>
        	
        	
        	</div>
		
		
		<div class="orderhistory-wrapper" style="text-align: center;">
		
		<!-- 로그인 여부 확인하고 로그인 안되어 있으면 로그인 페이지로 사출 -->
		
		
		
			
		
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
</body>
</html>







