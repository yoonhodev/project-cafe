<%@page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html class="no-js" lang="ko">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="x-ua-compatible" content="ie=edge">
<title>GREEN CAFE - Coupon</title>
<meta name="description" content="description">
<meta name="viewport" content="width=device-width, initial-scale=1">
	<!-- Common-css -->
	<jsp:include page="/WEB-INF/views/modules/common-css.jsp"></jsp:include>
	<style type="text/css">
		@media screen and (max-width: 580px) {
			#deleteCouponForm {
				font-size: 8pt;
			}
		}
		@media screen and (max-width: 700px) {
			#event_pic {
				width: 90%;
			}
		}
		@media screen and (min-width: 700px) {
			#event_pic {
				width: 600px;
			}
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
	                <a href="mypage" title="Back to the home page">마이페이지</a>
	                <span aria-hidden="true">›</span><span>쿠폰함</span>
	            </div>
	        </div>
	        <div class="container">
	        	<div id="event_pic" style="margin: 0 auto;">
					<img alt="할로윈 이벤트 배너"
						 src="/project-template-prac/resources/assets/images/event/halloween.jpg">
				</div>
				<br>
				<div class="row">
					<form action="coupon" method="post" id="createcouponform" style="margin: 0 auto">
						<table>
							<tr>
								<td>
									<input class="form-control" type="text" id="couponId" name="couponId"
										   placeholder="쿠폰 번호 입력" required>
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
						<form action="deletecoupon" method="post" id="deleteCouponForm">
							<table class="table">
								<thead>
									<tr style="background-color: #efefef;">
										<th style="border: 0px" class="text-center">번호</th>
										<th style="border: 0px" class="text-center">쿠폰이름</th>
										<th style="border: 0px" class="text-center">쿠폰내용</th>
										<th style="border: 0px" class="text-center">쿠폰발행일</th>
										<th style="border: 0px" class="text-center">쿠폰만료일</th>
										<th style="border: 0px" class="text-center">삭제</th>
									</tr>
								</thead>
								<tbody>
									<c:choose>
										<c:when test="${ not empty couponMakes }">
											<c:forEach var="couponMake" items="${ couponMakes }"
													   varStatus="status">
												<c:choose>
													<c:when test="${ couponMake.couponEnd < today }">
														<tr 
								                           	align="center" style="color: lightgray">
													</c:when>
													<c:otherwise>
														<tr 
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
										</c:when>
									<c:otherwise>
										<tr class="cart__row border-bottom line1 cart-flex border-top"
											align="center">
											<td colspan="6" >
												<span>보유한 쿠폰이 없습니다.</span>
											</td>
										</tr>
									</c:otherwise>
									</c:choose>
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
