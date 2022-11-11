<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<div class="card">
	<div class="card-body">
		<button type="button" class="btn btn-inverse-success select-all">
			<i class="mdi mdi-check"></i> 전체 선택
		</button>
		<button type="button" class="btn btn-inverse-danger unselect-all">
			<i class="mdi mdi-check"></i> 전체 해제
		</button>
		<button type="button" class="btn btn-inverse-secondary cart-push">
			<i class="mdi mdi-cart-outline"></i> 장바구니 담기
		</button>
		<div style="height: 10px"></div>
		<table class="table table-striped" style="text-align: center">
			<thead>
				<tr>
					<th>&nbsp;</th>
					<th>제품명</th>
					<th>제품상태</th>
					<th>단가</th>
					<th>수량</th>
					<th>합계</th>
					<th>장바구니</th>
				</tr>
			</thead>
			<tbody>
				<c:if test='${ rawOrders eq "[]" }'>
					<tr>
						<td colspan="7">조회된 상품이 없습니다.</td>
					</tr>
				</c:if>
				<c:forEach var="raw" items="${ rawOrders }">
					
					<tr>
						<td><input type="checkbox" name="cbox" class="checkBox" id="chk-${ raw.rawId }" value="${ raw.rawId }"></td>
						<td>${ raw.rawName }</td>
						<td>${ raw.rawTemp }</td>
						<td>
							<span id="rawPriceShow-${ raw.rawId }">${ raw.rawPrice }</span>원
							<input type="hidden" id="rawPrice-${ raw.rawId }" value="${ raw.rawPrice }">
						</td>
						<td class="amount">
							<button type="button" class="btn btn-outline-secondary btn-sm minus">
								<i class="mdi mdi-minus"></i>
							</button>&nbsp;&nbsp;
							<span class="count" data-rawId="${ raw.rawId }">1</span>&nbsp;&nbsp;
							<input type="hidden" id="count-${ raw.rawId }" value="1">
							<button type="button" class="btn btn-outline-secondary btn-sm plus">
								<i class="mdi mdi-plus"></i>
							</button>
						</td>
						<td><span id="price-${ raw.rawId }">${ raw.rawPrice }</span>원</td>
						<td>
							<button type="button" class="btn btn-outline-secondary btn-md addcartone" data-rawId="${ raw.rawId }">
								<i class="mdi mdi-cart-plus" style="font-size: 14pt"></i>
							</button>
						</td>
					</tr>
				</c:forEach>
			</tbody>
			<tfoot>
			</tfoot>
		</table>
	</div>
</div>

<script src="https://code.jquery.com/jquery-3.6.1.js"></script>
<script type="text/javascript">
	$(function() {
		$(".unselect-all").hide();
		
		for (var i=0; i<50; i++) {
			var rawPrice = $("#rawPriceShow-" + i).text();
			rawPrice = parseInt(rawPrice).toLocaleString('ko-KR');
			$("#rawPriceShow-" + i).text(rawPrice);
			$("#price-" + i).text(rawPrice);
		}
		
		$(".btn-sm").on("click", function() {
			var amount = $(this).parent(".amount"),
				oldValue = $(amount).find(".count").text(),
				newVal = 1
			var rawId = $(amount).find(".count").attr("data-rawId");
			var price = $("#rawPrice-" + rawId).val();
			
			if ($(this).is(".plus")) {
				newVal = parseInt(oldValue) + 1;
			} else if (oldValue > 1) {
				newVal = parseInt(oldValue) - 1;
			}
			
			price = newVal * price;
			$(amount).find(".count").text(newVal);
			$("#count-" + rawId).val(newVal);
			$("#price-" + rawId).text(parseInt(price).toLocaleString('ko-KR'));
		});
		
		$(".select-all").on("click", function() {
			$("input[name=cbox]").prop("checked", true);
			$(".select-all").hide();
			$(".unselect-all").show();
			
		});
		
		$(".unselect-all").on("click", function() {
			$("input[name=cbox]").prop("checked", false);
			$(".select-all").show();
			$(".unselect-all").hide();
		});
		
		$(".checkBox").on("click", function() {
			if ($(this).prop("checked") == false) {
				$(".select-all").show();
				$(".unselect-all").hide();
			}
		});
		
		$(".addcartone").on("click", function() {
	    	var rawId = $(this).attr("data-rawId");
	    	var count = $("#count-" + rawId).val();
	    	var formData = 'rawId=' + rawId + '&count=' + count;
			$.ajax({
				"url": "addCartOne",
				"method": "post",
				"data": formData,
				"success": function(data) {
					alert("장바구니에 추가하였습니다.")
					$("#cartList").load("cartList");
				 },
				"error": function(xhr, status, err) {
					alert('fail : ' + status);
				}
			});
	    });
		
		$(".cart-push").on("click", function() {
			var rawIdArray = [];
			var countArray = [];
			$("input[name=cbox]:checked").each(function() {
				var rawId = $(this).val();
				var count = $("#count-" + rawId).val();
				rawIdArray.push(rawId);
				countArray.push(count);
			});
			var formData = { rawIdList : rawIdArray, countList : countArray };
			$.ajax({
				"url": "addCart",
				"method": "post",
				"data": formData,
				"success": function(data) {
					alert("장바구니에 추가하였습니다.")
					$("#cartList").load("cartList");
				 },
				"error": function(xhr, status, err) {
					alert('fail : ' + status);
				}
			});
		});
	});
</script>
