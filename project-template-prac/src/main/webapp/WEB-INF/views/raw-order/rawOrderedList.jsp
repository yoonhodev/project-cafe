<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<table class="table" style="text-align: center">
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
		<c:forEach var="raw" items="${ rawOrderHistories }" varStatus="status">
			<tr class="order_open" data-orderRawId="${ raw.orderRawId }">
				<td>${ raw.rawOrderDate }</td>
				<td style="text-align: right; padding-right: 0; width: 200px">${ raw.productName }</td>
				<td style="text-align: left; padding-left: 5px"> 외 ${ raw.size } 개</td>
				<td><span class="number-${ status.count }">${ raw.total }</span>원</td>
				<td>${ raw.storeName }</td>
			</tr>
			<tr class="order_detail" id="${ raw.orderRawId }">
				<td colspan="5">
					
					<table style="margin: 0 auto; padding: 5px;">
					<c:forEach var="detail" items="${ raw.historyDetailDtos }" varStatus="stat">
						
							<tr style="background-color: #F0FFFF">
								<td style="border: none">${ detail.rawOrderDto.rawName }</td>
								<td style="border: none"><span class="Number-${ status.count }-${ stat.count }">${ detail.rawOrderDto.rawPrice }</span>원</td>
								<td style="border: none">${ detail.amount }개</td>
							</tr>
						
					</c:forEach>
					</table>
					
				</td>
			</tr>
		</c:forEach>
	</tbody>
</table>

<script src="https://code.jquery.com/jquery-3.6.1.js"></script>
<script type="text/javascript">
	$(function() {
		$(".order_detail").hide();
		$(".order_open").on("click", function() {
			var orderRawId = $(this).attr("data-orderRawId");
			if ($("#" + orderRawId).hasClass("on")) {
				$("#" + orderRawId).removeClass("on");
				$("#" + orderRawId).fadeOut();
			} else {
				$("#" + orderRawId).addClass("on");
				$("#" + orderRawId).fadeIn();
			}
		});
		
		for (var i=0; i<100; i++) {
			if ($(".number-" + i).text() != "") {
				var price = $(".number-" + i).text();
				var newPrice = parseInt(price).toLocaleString('ko-KR');
				$(".number-" + i).text(newPrice);
				for (var j=0; j<100; j++) {
					var price = $(".Number-" + i + "-" + j).text();
					var newPrice = parseInt(price).toLocaleString('ko-KR');
					$(".Number-" + i + "-" + j).text(newPrice);
				}
			}
		}
		
		
// 		if ($("#cartPriceShow-" + i).text() != "") {
// 			var rawPrice = $("#cartPriceShow-" + i).text();
// 			var newPrice = $("#cartcount-" + i).val() * rawPrice;
// 			total = parseInt(total) + parseInt(newPrice);
// 			rawPrice = parseInt(rawPrice).toLocaleString('ko-KR');
// 			newPrice = parseInt(newPrice).toLocaleString('ko-KR');
// 			$("#cartPriceShow-" + i).text(rawPrice);
// 			$("#cartprice-" + i).text(newPrice);
// 			var totalshow = total.toLocaleString('ko-KR');
// 			$("#total").text(totalshow + "원");
// 		}
	});
</script>
