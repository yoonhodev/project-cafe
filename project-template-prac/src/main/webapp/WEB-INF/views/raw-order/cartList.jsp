<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<div class="card">
	<div class="card-body">
		<div style="height: 10px"></div>
		<table class="table table-striped" style="text-align: center">
			<thead>
				<tr>
					<th>번호</th>
					<th>제품명</th>
					<th>제품상태</th>
					<th>단가</th>
					<th>수량</th>
					<th>합계</th>
					<th>&nbsp;</th>
				</tr>
			</thead>
			<tbody>
				<c:if test='${ rawOrderCarts eq "[]" or rawOrderCarts eq null }'>
					<tr>
						<td colspan="7">장바구니에 담긴 상품이 없습니다.</td>
					</tr>
				</c:if>
				<c:forEach var="cart" items="${ rawOrderCarts }" varStatus="status">
					<tr>
						<td>${ status.count }</td>
						<td>${ cart.rawOrderDto.rawName }</td>
						<td>${ cart.rawOrderDto.rawTemp }</td>
						<td>
							<span id="cartPriceShow-${ cart.rawOrderDto.rawId }">${ cart.rawOrderDto.rawPrice }</span>원
							<input type="hidden" id="cartPrice-${ cart.rawOrderDto.rawId }" value="${ cart.rawOrderDto.rawPrice }">
						</td>
						<td class="cartamount">
							<button type="button" class="btn btn-outline-secondary btn-sm minus btn-cart">
								<i class="mdi mdi-minus"></i>
							</button>&nbsp;&nbsp;
							<span class="cartcount" data-rawId="${ cart.rawOrderDto.rawId }">${ cart.count }</span>&nbsp;&nbsp;
							<input type="hidden" id="cartcount-${ cart.rawOrderDto.rawId }" value="${ cart.count }">
							<button type="button" class="btn btn-outline-secondary btn-sm plus btn-cart">
								<i class="mdi mdi-plus"></i>
							</button>
						</td>
						<td><span id="cartprice-${ cart.rawOrderDto.rawId }"></span>원</td>
						<td>
							<button type="button" class="btn btn-outline-secondary btn-md cart-pop" data-rawId="${ cart.rawOrderDto.rawId }">
								<span>X</span>
							</button>
						</td>
					</tr>
				</c:forEach>
			</tbody>
			<tfoot>
				<tr>
					<td colspan="4" style="color: lightgray;">배송에는 최대 3일이 소요됩니다</td>
					<td>총합</td>
					<td><span id="total"></span></td>
					<td></td>
				</tr>
			</tfoot>
		</table>
		<br>
		<div style="text-align: right">
			<button type="button" class="btn btn-inverse-success insert-order">
				<i class="mdi mdi-check"></i> 주문하기
			</button>&nbsp;&nbsp;&nbsp;
			<button type="button" class="btn btn-inverse-danger all-cart-pop">
				X&nbsp;&nbsp;주문취소
			</button>
		</div>
	</div>
</div>

<script src="https://code.jquery.com/jquery-3.6.1.js"></script>
<script type="text/javascript">
	$(function() {
		$(".all-cart-pop").on("click", function() {
			$.ajax({
				"url": "allCartPop",
				"method": "get",
				"success": function(data) {
					alert("주문이 취소되었습니다.")
					$("#cartList").load("cartList");
				 },
				"error": function(xhr, status, err) {
					alert('fail : ' + status);
				}
			});
		});
		
		$(".cart-pop").on("click", function() {
			var rawId = $(this).attr("data-rawId");
			$.ajax({
				"url": "cartPop",
				"method": "get",
				"data": "rawId=" + rawId,
				"success": function(data) {
					alert("선택한 상품의 주문이 취소되었습니다.")
					$("#cartList").load("cartList");
				 },
				"error": function(xhr, status, err) {
					alert('fail : ' + status);
				}
			});
		});
		
		var total = 0;
		for (var i=0; i<50; i++) {
			if ($("#cartPriceShow-" + i).text() != "") {
				var rawPrice = $("#cartPriceShow-" + i).text();
				var newPrice = $("#cartcount-" + i).val() * rawPrice;
				total = parseInt(total) + parseInt(newPrice);
				rawPrice = parseInt(rawPrice).toLocaleString('ko-KR');
				newPrice = parseInt(newPrice).toLocaleString('ko-KR');
				$("#cartPriceShow-" + i).text(rawPrice);
				$("#cartprice-" + i).text(newPrice);
				var totalshow = total.toLocaleString('ko-KR');
				$("#total").text(totalshow + "원");
			}
		}
		
		$(".btn-cart").on("click", function() {
			var amount = $(this).parent(".cartamount"),
				oldVal = $(amount).find(".cartcount").text(),
				newVal = 1
			var rawId = $(amount).find(".cartcount").attr("data-rawId");
			var price = $("#cartPrice-" + rawId).val();
			
			if ($(this).is(".plus")) {
				newVal = parseInt(oldVal) + 1;
			} else if (oldVal > 1) {
				newVal = parseInt(oldVal) - 1;
			}
			
			total = total - (price * oldVal);
			price = newVal * price;
			total = total + price;
			$(amount).find(".cartcount").text(newVal);
			$("#cartcount-" + rawId).val(newVal);
			var cartPrice = parseInt(price).toLocaleString('ko-KR');
			$("#cartprice-" + rawId).text(cartPrice);
			var totalshow = total.toLocaleString('ko-KR');
			$("#total").text(totalshow + "원");
		});
		
		$(".insert-order").on("click", function() {
			var StoreId = $("#StoreId").val();
			var OrderDate = $("#orderDate").val();
			var rawIdArray = [];
			var countArray = [];
			$(".cartcount").each(function() {
				var rawId = $(this).attr("data-rawId");
				var count = $("#cartcount-" + rawId).val();
				rawIdArray.push(rawId);
				countArray.push(count);
			});
			var formData = { rawIdList : rawIdArray, countList : countArray, storeId : StoreId, orderDate : OrderDate };
			// var formData = "storeId=" + StoreId + "&orderDate=" + OrderDate + "&countData=" + countData;
			
			if(confirm("주문 하시겠습니까?") == true) {
				$.ajax({
					"url": "insert-raw-order",
					"method": "post",
					"data": formData,
					"success": function(data) {
						if(data == "1") {
							alert("장바구니에 담긴 상품이 없습니다")
						} else {
							alert("주문이 완료되었습니다.")
							$("#cartList").load("cartList");
						}
					 },
					"error": function(xhr, status, err) {
						alert('fail : ' + status);
					}
				});
			}
		});
	});
</script>
