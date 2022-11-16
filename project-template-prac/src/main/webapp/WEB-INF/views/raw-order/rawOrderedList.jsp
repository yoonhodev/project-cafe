<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<table class="table table-striped" style="text-align: center">
	<thead>
		<tr>
			<th>날짜</th>
			<th colspan="2">제품명단</th>
			<th>합계</th>
			<th>지점</th>
		</tr>
	</thead>
	<tbody>
		<c:if test='${ rawOrderHistories eq "[]" or rawOrderHistories eq null }'>
			<tr>
				<td colspan="5">조회된 상품이 없습니다.</td>
			</tr>
		</c:if>
		<c:forEach var="raw" items="${ rawOrderHistories }">
			<tr class="order_open">
				<td>${ raw.rawOrderDate }</td>
				<td style="text-align: right; padding-right: 0; width: 200px">${ raw.productName }</td>
				<td style="text-align: left; padding-left: 5px"> 외 ${ raw.size } 개</td>
				<td>${ raw.total }</td>
				<td>${ raw.storeName }</td>
			</tr>
			<tr class="order_detail">
				<td></td>
				<td colspan="3" style="background-color: lightgray">
					<c:forEach var="detail" items="${ raw.historyDetailDtos }">
						<div>
							${ detail.rawOrderDto.rawName }
							${ detail.rawOrderDto.rawPrice }
							${ detail.amount }
						</div>
					</c:forEach>
				</td>
				<td></td>
			</tr>
		</c:forEach>
	</tbody>
</table>

<script src="https://code.jquery.com/jquery-3.6.1.js"></script>
<script type="text/javascript">
	$(function() {
		$(".order_detail").hide();
		$(".order_open").on('click', function() {
			$(".order_detail").show();
		});
		
// 		$(".unselect-all").hide();
		
// 		for (var i=0; i<50; i++) {
// 			var rawPrice = $("#rawPriceShow-" + i).text();
// 			rawPrice = parseInt(rawPrice).toLocaleString('ko-KR');
// 			$("#rawPriceShow-" + i).text(rawPrice);
// 			$("#price-" + i).text(rawPrice);
// 		}
		
// 		$(".btn-sm").on("click", function() {
// 			var amount = $(this).parent(".amount"),
// 				oldValue = $(amount).find(".count").text(),
// 				newVal = 1
// 			var rawId = $(amount).find(".count").attr("data-rawId");
// 			var price = $("#rawPrice-" + rawId).val();
			
// 			if ($(this).is(".plus")) {
// 				newVal = parseInt(oldValue) + 1;
// 			} else if (oldValue > 1) {
// 				newVal = parseInt(oldValue) - 1;
// 			}
			
// 			price = newVal * price;
// 			$(amount).find(".count").text(newVal);
// 			$("#count-" + rawId).val(newVal);
// 			$("#price-" + rawId).text(parseInt(price).toLocaleString('ko-KR'));
// 		});
		
// 		$(".select-all").on("click", function() {
// 			$("input[name=cbox]").prop("checked", true);
// 			$(".select-all").hide();
// 			$(".unselect-all").show();
			
// 		});
		
// 		$(".unselect-all").on("click", function() {
// 			$("input[name=cbox]").prop("checked", false);
// 			$(".select-all").show();
// 			$(".unselect-all").hide();
// 		});
		
// 		$(".checkBox").on("click", function() {
// 			if ($(this).prop("checked") == false) {
// 				$(".select-all").show();
// 				$(".unselect-all").hide();
// 			}
// 		});
		
// 		$(".addcartone").on("click", function() {
// 	    	var rawId = $(this).attr("data-rawId");
// 	    	var count = $("#count-" + rawId).val();
// 	    	var formData = 'rawId=' + rawId + '&count=' + count;
// 			$.ajax({
// 				"url": "addCartOne",
// 				"method": "post",
// 				"data": formData,
// 				"success": function(data) {
// 					alert("장바구니에 추가하였습니다.")
// 					$("#cartList").load("cartList");
// 				 },
// 				"error": function(xhr, status, err) {
// 					alert('fail : ' + status);
// 				}
// 			});
// 	    });
		
// 		$(".cart-push").on("click", function() {
// 			var rawIdArray = [];
// 			var countArray = [];
// 			$("input[name=cbox]:checked").each(function() {
// 				var rawId = $(this).val();
// 				var count = $("#count-" + rawId).val();
// 				rawIdArray.push(rawId);
// 				countArray.push(count);
// 			});
// 			var formData = { rawIdList : rawIdArray, countList : countArray };
// 			$.ajax({
// 				"url": "addCart",
// 				"method": "post",
// 				"data": formData,
// 				"success": function(data) {
// 					alert("장바구니에 추가하였습니다.")
// 					$("#cartList").load("cartList");
// 				 },
// 				"error": function(xhr, status, err) {
// 					alert('fail : ' + status);
// 				}
// 			});
// 		});
	});
</script>
