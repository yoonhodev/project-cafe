<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html class="no-js" lang="en">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="x-ua-compatible" content="ie=edge">
<title>Green Coffee</title>
<meta name="description" content="description">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- Common-css -->
<jsp:include page="/WEB-INF/views/modules/common-css.jsp"></jsp:include>
</head>
<body class="page-template belle cart-variant1">
	<div class="pageWrapper">
		<!--Header-->
		<jsp:include page="/WEB-INF/views/modules/header.jsp"></jsp:include>
		<!--End Header-->

		<div id="page-content">
			<!--Page Title-->
			<br> <br> <br> <br>
			<div class="page section-header text-center">
				<div class="page-title">
					<div class="wrapper">
						<h1 class="page-width">주문</h1>
					</div>
				</div>
			</div>
			<!--End Page Title-->

			<div class="container">
				<div class="row">
					<div class="col-12 col-sm-12 col-md-12 col-lg-12 main-col">
						<div class="alert alert-success text-uppercase" role="alert">
							<i class="icon anm anm-truck-l icon-large"></i>&nbsp;
							<strong>맛있게 가져다드릴게요</strong>&nbsp; 항상 감사합니다 :)
						</div>
						<div id="order-list"></div>
					</div>



					<div class="container mt-4">
						<div class="row">
							<div class="col-12 col-sm-12 col-md-4 col-lg-4 mb-4">
								<h5>쿠폰</h5>
								<form action="applycoupon" method="get" id="apply-coupon">
									<select id="couponName" name="couponId" class="form-group couponName">
										<option selected value="none">쿠폰 없음</option>
											<c:forEach var="couponMake" items="${ couponMakes }" varStatus="status">
												<option id="coupon-option" value="${ couponMake.couponDto.couponName }">${ couponMake.couponDto.couponName }</option>
											</c:forEach>
										</select>

									<div class="actionRow">
										<div>
											<input type="hidden" id="couponMakeId1" name="couponId">
											<input type="submit" class="btn btn-secondary btn--small"
												   id="SelectCoupon"
												   value="쿠폰 적용">
										</div>
									</div>	
								</form>
							</div>
							<div class="col-12 col-sm-12 col-md-4 col-lg-4 mb-4">
								<h5>결제수단</h5>
								<form action="#" method="post">
									<select id="couponName" name="couponId" class="form-group couponName">
										<option selected value="none" disabled>결제 수단을 선택해주세요.</option>	
												<option value="1">신용/체크카드</option>
												<option value="2">휴대폰결제</option>
												<option value="3">네이버페이</option>
												<option value="4">카카오페이</option>
												<option value="5">토스페이</option>
												<option value="6">만나서 카드결제</option>
												<option value="7">만나서 현금결제</option>
										</select>
							

									<!-- <div class="actionRow">
										<div>
											<input type="button" class="btn btn-secondary btn--small"
												value="Calculate shipping">
										</div>
									</div> -->
								</form>
							</div>

							<div class="col-12 col-sm-12 col-md-4 col-lg-4 cart__footer">
								<div class="solid-border">
									<div class="row border-bottom pb-2">
										<span class="col-12 col-sm-6 cart__subtotal-title">음료 금액</span>
										<span class="col-12 col-sm-6 text-right"><span
											class="money"><span id="price-${ product.prodId }">${ product.prodPrice }</span></span></span>
									</div>
									<div class="row border-bottom pb-2 pt-2">
										<span class="col-12 col-sm-6 cart__subtotal-title">쿠폰 할인</span>
											<c:forEach var="couponMake" items="${ couponMakes }" varStatus="status">
												<span class="col-12 col-sm-6 text-right">${ couponMake.couponDto.couponRate }</span>	
											</c:forEach>
									
									</div>
									<div class="row border-bottom pb-2 pt-2">
										<span class="col-12 col-sm-6 cart__subtotal-title">배송비</span>
										<span class="col-12 col-sm-6 text-right" id="shipping"></span>
									</div>
									<div class="row border-bottom pb-2 pt-2">
										<span class="col-12 col-sm-6 cart__subtotal-title"><strong>총 금액</strong></span> <span
											class="col-12 col-sm-6 cart__subtotal-title cart__subtotal text-right"><span
											class="money">$1001.00</span></span>
									</div>
									<br>
								 	<p class="cart_tearm">
										<strong>배달</strong>&nbsp;&nbsp;<input type="radio" name="orderType" value="A" required>
 										&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
										<strong>포장</strong>&nbsp;&nbsp;<input type="radio" name="orderType" value="B">
									</p> 
									<input type="submit" name="checkout" id="cartCheckout"
										class="btn btn--small-wide checkout"
										value="결제" disabled="disabled">
									<!-- <div class="paymnet-img">
										<img src="#" alt="Payment">
									</div>
									<p>
										<a href="#;">Checkout with Multiple Addresses</a>
									</p>  -->
								</div>
							</div>
						</div>
					</div>
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

		<!-- Common-js -->
		<jsp:include page="/WEB-INF/views/modules/common-js.jsp"></jsp:include>
	</div>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js"></script>
	<script src="https://code.jquery.com/jquery-3.6.1.js"></script>
	<script type="text/javascript">
		$(function() {
 			$('#order-list').load('order-list');
 			
/* 			$(".qtyBtn").on("click", function() {
				var qtyField = $(this).parent(".qtyField"),
					oldValue = $(qtyField).find(".qty").val(),
					newVal = 1
				var prodId = $(this).attr("data-productId");
				var price = $("#prodPrice-" + prodId).text();
				
				if ($(this).is(".plus")) {
					newVal = parseInt(oldValue) + 1;
				} else if (oldValue > 1) {
					newVal = parseInt(oldValue) - 1;
				}
				
				price = newVal * price;
				$(qtyField).find(".qty").val(newVal);
				$("#price-" + prodId).text( price );
			});
			 */
			
			$("input[name=orderType]").on("click", function(event) {
				const checkedVal = $("input[name=orderType]:checked").val();
				if (checkedVal == "A") {
					$("#shipping").text("+ 3000");
				} else {
					$("#shipping").text("0");
				}
			});
			
				$("#order-list").on("click", '.qtyBtn', function() {
					var qtyField = $(this).parent(".qtyField"), oldValue = $(
							qtyField).find(".qty").val(), newVal = 1
					var prodId = $(this).attr("data-productId");
					var price = $("#prodPrice-" + prodId).text();

					if ($(this).is(".plus")) {
						newVal = parseInt(oldValue) + 1;
					} else if (oldValue > 1) {
						newVal = parseInt(oldValue) - 1;
					}

					price = newVal * price;
					price = parseInt(price).toLocaleString('ko-KR');
					$(qtyField).find(".qty").val(newVal);
					$("#price-" + prodId).text(price);
					price = parseInt(price).toLocaleString('ko-KR');
				});


			$('#order-list').on('click', '.delete-all-order', function(event) {
				
				$.ajax({
					"url" : "delete-all-order",
					"method" : "get",
					"success" : function(data, status, xhr) {
						$('#order-list').load('order-list');
					},
					"error" : function(xhr, status, err) {
						alert('fail');
					}
				});
			});
			
		 	$('#order-list').on('click', '.delete-order', function(event) {
		 		
		 		var prodId = $(this).attr("data-prodId");
				
				$.ajax({
					"url" : "delete-order",
					"method" : "get",
					"data" : "prodId=" + prodId,
					"success" : function(data, status, xhr) {
						$('#order-list').load('order-list');
						},
					"error" : function(xhr, status, err) {
						alert('fail');
					}  
				});
			});
		});
	</script>
</body>
</html>