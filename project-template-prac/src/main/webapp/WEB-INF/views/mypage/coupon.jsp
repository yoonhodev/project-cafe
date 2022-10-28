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
					<img alt="할로윈 이벤트 배너" src="/project-template-prac/resources/assets/images/event/halloween.jpg">
				</div>
				<br>
				<div class="row">
					<form action="coupon" method="post" id="createcouponform" style="margin: 0 auto">
						<table>
							<tr>
								<td>
									<input type="text" id="couponId" name="couponId" placeholder="쿠폰 입력">
								</td>
								<td>&nbsp;&nbsp;&nbsp;&nbsp;</td>
								<td>
				        			<a href="#" type="submit" id="createCoupon" class="btn btn-secondary btn--small">
				        				확인<i class="fa fa-caret-right" aria-hidden="true"></i>
					        		</a>
				        		</td>
			        		</tr>
		        		</table>
	        		</form>
	        		<br> <br> <br>
					<div class="col-12 col-sm-12 col-md-12 col-lg-12 main-col">
						<form action="order" method="post" class="cart style2">
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
									<c:forEach var="couponMake" items="${ couponMakes }" varStatus="status">
	                                <tr class="cart__row border-bottom line1 cart-flex border-top"
	                                	align="center">
	                                    <td>
	                                        <span>${ status.count }</span>
	                                    </td>
	                                    <td>
	                                        <div class="list-view-item__title">
	                                            <span>${ couponMake.couponDto.couponName }</span>
	                                        </div>
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
		                                    <input class="btn btn--secondary cart__remove" type="button" id="deleteCoupon" data-couponMakeId="${ couponMake.couponMakeId }" value="X">
<!-- 		                                    <a href="#" type="" class="btn btn--secondary cart__remove" -->
<!-- 		                                       title="Remove tem"> -->
<!-- 		                                    	<i class="icon icon anm anm-times-l"></i> -->
<!-- 		                                    </a> -->
	                                    </td>
	                                </tr>
	                                </c:forEach>
                           		</tbody>
								<tfoot></tfoot>
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
		$(function)() {
			$('#deleteCoupon').on('click', function(event) {
				var couponMakeId = $(this).attr("data-couponMakeId")
				location.href = 'deleteCoupon';
			});
			
			$('#createCoupon').on('click', function(event) {
				event.preventDefault();
				
				const formData = $('#createcouponform').serialize(); // form 내부의 모든 입력 요소의 값을 전송가능한 형식으로 반환
				
				$.ajax({
					"url": "coupon",
					"method": "post",
					"data": formData,
					"success": function(data, status, xhr) {},
					"error": function(xhr, status, err) {}
				});
				$('#couponId').val("");
			});
		});
	</script>
</body>
</html>
