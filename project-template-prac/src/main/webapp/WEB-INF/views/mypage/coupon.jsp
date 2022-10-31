<%@page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html class="no-js" lang="ko">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="x-ua-compatible" content="ie=edge">
<title>Green Coffee</title>
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
	        		<div class="wrapper"><h1 class="page-width">쿠폰함</h1></div>
	      		</div>
			</div>
	        <!--End Page Title-->
		    <div class="bredcrumbWrap">
	            <div class="container breadcrumbs">
	                <a href="index.html" title="Back to the home page">마이페이지</a>
	                <span aria-hidden="true">›</span><span>쿠폰함</span>
	            </div>
	        </div>
	        <div class="container">
	        	<div style="margin: 0 auto; width: 600px">
					<img alt="할로윈 이벤트 배너"
						 src="/project-template-prac/resources/assets/images/event/halloween.jpg">
				</div>
				<br>
				<div class="row">
					<form action="coupon" method="post" id="createcouponform" style="margin: 0 auto">
						<table>
							<tr>
								<td>
									<input type="text" id="couponId" name="couponId"
										   placeholder="쿠폰 입력">
								</td>
								<td>&nbsp;&nbsp;&nbsp;&nbsp;</td>
								<td>
				        			<button type="submit" class="btn btn-secondary btn--small">
				        			확인</button>
				        		</td>
			        		</tr>
		        		</table>
	        		</form>
	        		<br> <br> <br>
					<div class="col-12 col-sm-12 col-md-12 col-lg-12 main-col">
						<form action="deletecoupon" method="post" id="deleteCouponForm"
							  class="cart style2">
							<table>
								<thead class="cart__row cart__header">
									<tr>
										<th class="text-center">번호</th>
										<th class="text-center">쿠폰이름</th>
										<th class="text-center">쿠폰내용</th>
										<th class="text-center">쿠폰발행일</th>
										<th class="text-center">쿠폰만료일</th>
										<th class="text-center">삭제</th>
									</tr>
								</thead>
								<tbody>
									<c:forEach var="couponMake" items="${ couponMakes }"
											   varStatus="status">
										<c:choose>
										<c:when test="${ couponMake.couponEnd < today }">
										<tr class="cart__row border-bottom line1 cart-flex border-top"
				                           	align="center" style="color: lightgray">
										</c:when>
										<c:otherwise>
										<tr class="cart__row border-bottom line1 cart-flex border-top"
											align="center">
										</c:otherwise>
			                            </c:choose>
		                                    <td>
		                                        <span>${ status.count }</span>
		                                    </td>
		                                    <td>
		                                        <span>${ couponMake.couponDto.couponName }</span>
		                                    </td>
		                                    <td>
		                                        <span>${ couponMake.couponDto.couponRate }원 할인</span>
		                                    </td>
		                                    <td>
		                                        <span>${ couponMake.couponStart }</span>
		                                    </td>
		                                    <td>
		                                        <span>${ couponMake.couponEnd }</span>
		                                    </td>
		                                    <td class="text-center small--hide">
		                                    	<input type="hidden" name="couponMakeId"
		                                    		   id="deleteCouponMakeId">
		                                    	<button type="button"
		                                    			data-couponMakeId="${ couponMake.couponMakeId }"
		                                    			class="btn btn-secondary btn--small btn-delete">
		                                    		<i class="icon icon anm anm-times-l"></i>
		                                    	</button>
		                                    </td>
		                                </tr>
	                                </c:forEach>
                           		</tbody>
							</table>
						</form>
					</div>
				</div>
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
	<script src="https://code.jquery.com/jquery-3.6.1.js"></script>
	<script type="text/javascript">
		$(function() {
			$(".btn-delete").on("click", function() {
				var couponMakeId = $(this).attr("data-couponMakeId");
				$("#deleteCouponMakeId").val(couponMakeId);
				$("#deleteCouponForm").submit();
			});
		});
	</script>
</body>
</html>
