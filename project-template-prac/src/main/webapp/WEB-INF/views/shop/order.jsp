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

		<!--Body Content-->
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
							<strong>Congratulations!</strong>You've got free shipping!
						</div>
						<form action="order" method="post" class="cart style2">
							<table>
								<thead class="cart__row cart__header">
									<tr>
										<th class="text-center">No</th>
										<th class="text-center">Product</th>
										<th class="text-center">Price</th>
										<th class="text-center">Quantity</th>
										<th class="text-right">Total</th>
										<th class="action">&nbsp;</th>
									</tr>
								</thead>

								<tbody>
								<c:forEach var="product" items="${ products }" varStatus="status">
								
								<c:set var="quantity" value="1" />
								<tr class="cart__row border-bottom line1 cart-flex border-top">
                                    <td class="cart__image-wrapper cart-flex-item text-center">
                                        <a href="#">${ status.count }</a>
                                    </td>
                                    <td class="cart__meta small--text-left cart-flex-item text-center">
                                        <div class="list-view-item__title">
                                            <a href="#">${ product.prodName }</a>
                                        </div>
                                    </td>
                                    <td class="cart__price-wrapper cart-flex-item">
                                        <span class="money">${ product.prodPrice }</span>
                                        <c:set var="prodPrice" value="${ product.prodPrice }" />
                                    </td>
                                    <td class="cart__update-wrapper cart-flex-item text-right">
                                        <div class="cart__qty text-center">
                                            <div class="qtyField">
                                                <a class="qtyBtn minus" href="javascript:void(0);" data-productId="${ status.index }"><i class="icon icon-minus"></i></a>
                                                <input class="cart__qty-input qty" type="text" name="updates[]" id="qty" value="1" pattern="[0-9]*">
                                                <a class="qtyBtn plus"  href="javascript:void(0);" data-productId="${ status.index }"><i class="icon icon-plus"></i></a>
                                            </div>
                                        </div>
                                    </td>
                                    <td class="text-right small--hide cart-price">
                                        <div><span id="price-${ status.index }">${ product.prodPrice }</span></div>
                                    </td>
                                    <td class="text-center small--hide"><a href="/{prodId}/delete" class="btn btn--secondary cart__remove" title="Remove tem"><i class="icon icon anm anm-times-l"></i></a></td>
                                </tr>
                                
                                </c:forEach>
                           		</tbody>
								<tfoot>
									<tr>
										<td colspan="3" class="text-left"><a href="shop"
											class="btn btn-secondary btn--small cart-continue">Continue
												shopping</a></td>
										<td colspan="3" class="text-right">
											<a href="delete-all-order" class="btn btn-secondary btn--small cart-continue ml-2">Clear Cart
												</a>
										</td>
									</tr>
								</tfoot>
							</table>
						</form>
					</div>







					<div class="container mt-4">
						<div class="row">
							<div class="col-12 col-sm-12 col-md-4 col-lg-4 mb-4">
								<h5>Discount Codes</h5>
								<form action="#" method="post">
									<div class="form-group">
										<label for="address_zip">Enter your coupon code if you
											have one.</label> <input type="text" name="coupon">
									</div>
									<div class="actionRow">
										<div>
											<input type="button" class="btn btn-secondary btn--small"
												value="Apply Coupon">
										</div>
									</div>
								</form>
							</div>
							<div class="col-12 col-sm-12 col-md-4 col-lg-4 mb-4">
								<h5>Estimate Shipping and Tax</h5>
								<form action="#" method="post">
									<div class="form-group">
										<label for="address_zip">Postal/Zip Code</label> <input
											type="text" id="address_zip" name="address[zip]">
									</div>

									<div class="actionRow">
										<div>
											<input type="button" class="btn btn-secondary btn--small"
												value="Calculate shipping">
										</div>
									</div>
								</form>
							</div>

							<div class="col-12 col-sm-12 col-md-4 col-lg-4 cart__footer">
								<div class="solid-border">
									<div class="row border-bottom pb-2">
										<span class="col-12 col-sm-6 cart__subtotal-title">Subtotal</span>
										<span class="col-12 col-sm-6 text-right"><span
											class="money">$735.00</span></span>
									</div>
									<div class="row border-bottom pb-2 pt-2">
										<span class="col-12 col-sm-6 cart__subtotal-title">Tax</span>
										<span class="col-12 col-sm-6 text-right">$10.00</span>
									</div>
									<div class="row border-bottom pb-2 pt-2">
										<span class="col-12 col-sm-6 cart__subtotal-title">Shipping</span>
										<span class="col-12 col-sm-6 text-right">Free shipping</span>
									</div>
									<div class="row border-bottom pb-2 pt-2">
										<span class="col-12 col-sm-6 cart__subtotal-title"><strong>Grand
												Total</strong></span> <span
											class="col-12 col-sm-6 cart__subtotal-title cart__subtotal text-right"><span
											class="money">$1001.00</span></span>
									</div>
									<div class="cart__shipping">Shipping &amp; taxes
										calculated at checkout</div>
									<p class="cart_tearm">
										<label> <input type="checkbox" name="tearm"
											class="checkbox" value="tearm" required=""> I agree
											with the terms and conditions
										</label>
									</p>
									<input type="submit" name="checkout" id="cartCheckout"
										class="btn btn--small-wide checkout"
										value="Proceed To Checkout" disabled="disabled">
									<div class="paymnet-img">
										<img src="#" alt="Payment">
									</div>
									<p>
										<a href="#;">Checkout with Multiple Addresses</a>
									</p>
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
	<script type="text/javascript">
 		$(function() {
			$(".qtyBtn").on("click", function() {
				var qtyField = $(this).parent(".qtyField"),
					oldValue = $(qtyField).find(".qty").val(),
					newVal = 1,
					price = ${ prodPrice };
					
				var prodId = $(this).attr("data-productId")
					
				if ($(this).is(".plus")) {
					newVal = parseInt(oldValue) + 1;
				} else if (oldValue > 1) {
					newVal = parseInt(oldValue) - 1;
				}
				
				total = newVal * price;
				$(qtyField).find(".qty").val(newVal);
				$("#price-" + prodId).text( price );
			});
			
		/* 	$('.cart__remove').on('click', function(event) {
				var addform = $(this).parent(".addform").serialize();
			    const formData = $('.addform').serialize(); //form 내부의 모든 입력 요소의 값을 전송가능한 문자열 형식으로 반환
			/* const formData = $('#addform').serializeArray(); */ //form 내부의 모든 입력 요소의 값을 전송가능한 객체 배열 형식으로 반환
				/* alert(addform);
				$.ajax({
					"url": "update-order",
					"method": "post",
					"data": addform,
					"success": function(data, status, xhr) {
						},
					"error": function(xhr, status, err) {
						
						}
				}); */
			}); 
 		
 		
	</script>
</body>

<!-- belle/cart-variant1.html   11 Nov 2019 12:44:32 GMT -->
</html>