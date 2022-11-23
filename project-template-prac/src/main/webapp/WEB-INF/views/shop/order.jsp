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
<style>
@font-face {
    font-family: 'neon';
    src: url('../fonts/TmonMonsori.ttf') format('truetype');
}
body {
	font-family: 'neon';
}
h1 {
	font-family: 'neon';
}
h5 {
	font-family: 'neon';
}
@media media and (max-width : 768px) {
  
}
</style>
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
										<option selected value="0">쿠폰 없음</option>
											<c:forEach var="couponMake" items="${ couponMakes }" varStatus="status">
												<option id="coupon-option" value="${ couponMake.couponDto.couponRate }">${ couponMake.couponDto.couponName }</option>
											</c:forEach>
										</select>
								</form>
									<h5>지점</h5>
								<form action="selectstore" method="get" id="orderselectstore">
									<select id="selectStore" class="form-group selectStore">
										<option selected value="0" disabled>지점 선택</option>
										<c:forEach var="stores" items="${ stores }" varStatus="status">
											<option id="order-select-store" value="${ stores.storeId }">${ stores.storeName }</option>
										</c:forEach>
									</select>
								</form>
									<h5>결제수단</h5>
								<select id="orderPay" class="form-group">
										<option selected value="0" disabled>결제 수단을 선택해주세요.</option>	
												<option value="cardPay">신용/체크카드</option>
												<option value="phonePay">휴대폰결제</option>
												<option value="naverPay">네이버페이</option>
												<option value="kakaoPay">카카오페이</option>
												<option value="tossPay">토스페이</option>
												<option value="meetCardPay">만나서 카드결제</option>
												<option value="meetCashPay">만나서 현금결제</option>
								</select>
							</div>
							<div class="col-12 col-sm-12 col-md-4 col-lg-4 mb-4">
								<div style="padding: 0 0 12px 0;" id="addr-radio">
										&nbsp;&nbsp;&nbsp;&nbsp;${ loginuser.customerId }님 배송지&nbsp;&nbsp;<input type="radio" name="addressType" id="addr" value="addrA" checked>
 										&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
										신규 배송지&nbsp;&nbsp;<input type="radio" name="addressType" value="addrB">
									</div>
								<form>
									<div class="form-group" id="new-addr-form"> <!-- new-addr-form = 기존 배송지, basic-addr-form = 신규 배송지 -->
										<div class="input-group">
											<input class="form-control" id="addrAform" type="text" name="customerId" value="${ address }" disabled="disabled">
										</div>
										<span id="idcheck"></span>
										<input type="hidden" id="idchk" name="idchk">
									</div>
									<div id= "basic-addr-form" style="display:none">
									<div style="line-height: 80%">
												<div class="input-group">
													<input style="width: 80px" class="form-control" name="postId" type="text" id="sample2_postcode" placeholder="우편번호" required>
													<div style="width: 20px"></div>
													<input class="btn" style="width: px" class="form-control" type="button" onclick="sample2_execDaumPostcode()" value="우편번호 찾기">
													<div style="width: 100px"></div><div style="width: 100px"></div>
													<div style="width: 100px"></div><div style="width: 100px"></div>
												</div><br>
												<input class="form-control addrform" name="address" type="text" id="sample2_address" placeholder="주소" required><br>
												<div class="input-group">
													<input class="form-control" name="detailAddress" type="text" id="sample2_detailAddress" placeholder="상세주소">
													&nbsp;&nbsp;&nbsp;&nbsp;
													<input class="form-control" name="extraAddress" type="text" id="sample2_extraAddress" placeholder="참고항목">
												</div>
											</div>
											
											<!-- iOS에서는 position:fixed 버그가 있음, 적용하는 사이트에 맞게 position:absolute 등을 이용하여 top,left값 조정 필요 -->
											<div id="layer" style="display:none;position:fixed;overflow:hidden;z-index:1;-webkit-overflow-scrolling:touch;">
												<img src="//t1.daumcdn.net/postcode/resource/images/close.png" id="btnCloseLayer" style="cursor:pointer;position:absolute;right:-3px;top:-3px;z-index:1" onclick="closeDaumPostcode()" alt="닫기 버튼">
											</div>
										</div>
								</form>
								
							</div>

							<div class="col-12 col-sm-12 col-md-4 col-lg-4 cart__footer">
								<div class="solid-border">
									<div class="row border-bottom pb-2">
										<span class="col-12 col-sm-6 cart__subtotal-title">음료 금액</span>
										<span class="col-12 col-sm-6 text-right">
										<span class="money">
											<span id="drink-total"></span>
										</span>
										</span>
									</div>
									<div class="row border-bottom pb-2 pt-2">
										<span class="col-12 col-sm-6 cart__subtotal-title">쿠폰 할인</span>
												<span class="col-12 col-sm-6 text-right" id="total-coupon">0 원</span>	
											
									
									</div>
									<div class="row border-bottom pb-2 pt-2">
										<span class="col-12 col-sm-6 cart__subtotal-title">배송비</span>
										<span class="col-12 col-sm-6 text-right" id="shipping">+ 3000 원</span>
									</div>
									<div class="row border-bottom pb-2 pt-2">
										<span class="col-12 col-sm-6 cart__subtotal-title"><strong>총 금액</strong></span>
										<span class="col-12 col-sm-6 cart__subtotal-title cart__subtotal text-right"><span class="final-total"></span></span>
									</div>
									<br>
								 	<p class="cart_tearm">
										<strong>배달</strong>&nbsp;&nbsp;<input type="radio" name="orderType" value="A" checked>
 										&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
										<strong>포장</strong>&nbsp;&nbsp;<input type="radio" name="orderType" value="B">
									</p> 
									<button type="button" name="checkout" id="orderCheckout" style="width: 100%" class="btn btn--small-wide checkout insert-order">결제</button>
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
 			$('#order-list').load('order-list', orderListLoadCompletionHandler);
 			

			
			
			$("input[name=orderType]").on("click", function(event) {
				var delipay = 0;
				const checkedVal = $("input[name=orderType]:checked").val();
				if (checkedVal == "A") {
					delipay = 3000;
					$("#shipping").text("+ " + delipay + " 원");
					$('#new-addr-form').show();
					$('#addr-radio').show();
				} else {
					$("#shipping").text(delipay + " 원");
					$('#basic-addr-form').hide();
					$('#new-addr-form').hide();
					$('#addr-radio').hide();
				}
				
				orderListLoadCompletionHandler();
			});
			
				$("#order-list").on("click", '.qtyBtn', function() {
					var qtyField = $(this).parent(".qtyField"), oldValue = $(qtyField).find(".qty").val(), newVal = 1
					var prodId = $(this).attr("data-productId");
					var price = $("#prodPrice-" + prodId).text();

					if ($(this).is(".plus")) {
						newVal = parseInt(oldValue) + 1;
					} else if (oldValue > 1) {
						newVal = parseInt(oldValue) - 1;
					}

					price = newVal * price;
					$(qtyField).find(".qty").val(newVal);
					$("#price-" + prodId).text(price);
					orderListLoadCompletionHandler();
				});


			$('#order-list').on('click', '.delete-all-order', function(event) {
				
				$.ajax({
					"url" : "delete-all-order",
					"method" : "get",
					"success" : function(data, status, xhr) {
						$('#order-list').load('order-list', orderListLoadCompletionHandler);
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
						$('#order-list').load('order-list', orderListLoadCompletionHandler);
						},
					"error" : function(xhr, status, err) {
						alert('fail');
					}  
				});
			});
		 	
		 	function orderListLoadCompletionHandler() {
		 		
			 	var drinktotal = 0;
			 	
				$('#order-list span.product-price-sum').each(function(idx, span) {
					const priceSum = parseInt($(span).text());
					
					drinktotal += priceSum;
				});
				
				var finaltotal = drinktotal + parseInt($('#total-coupon').text().replace(' ', '')) + parseInt($('#shipping').text().replace(' ', '')) ;
				
				if(finaltotal < 0) {
					
					finaltotal = 0;
					
					$('#drink-total').text(drinktotal + " 원");
					
					finaltotal = finaltotal.toLocaleString('ko-KR');
					
					$('.final-total').text(finaltotal + " 원");
					
				} else {
					
					$('#drink-total').text(drinktotal + " 원");
					
					finaltotal = finaltotal.toLocaleString('ko-KR');
					
					$('.final-total').text(finaltotal + " 원");
				}
		 	}
		 	
		 	$("#couponName").on("change", function(event) {
		 		var couponRate = 0;
		 		
		 		couponRate = $("#couponName option:selected").val();
		 		
	 			$('#total-coupon').text("- " + couponRate + " 원" );
	 			
	 			orderListLoadCompletionHandler()
			});
		 	
		 	$("input[name=addressType]").on("click", function(event) {
				const checkedAddrVal = $("input[name=addressType]:checked").val();
				if (checkedAddrVal == "addrB") {
					$('#basic-addr-form').show();
					$('#new-addr-form').hide();
				} else {
					$('#new-addr-form').show();
					$('#basic-addr-form').hide();
				}
				
				orderListLoadCompletionHandler();
			});
		 	
		 	$('#orderCheckout').on('click', function(event) {
		 		var orderPay = $("#orderPay option:selected").val();
		 		var orderType = $("input[name=orderType]:checked").val();
		 		var storeId = $("#selectStore option:selected").val();
		 		const addrCheckedVal = $("input[name=addressType]:checked").val();
		 		var addr;
				if (addrCheckedVal == "addrA") {
		 			addr = $("#addrAform").val();
		 		} else {
		 			addr = $("input[name=address]").val() + " " + $("input[name=detailAddress]").val();
		 		}
		 		var prodIdArray = [];
		 		var amountArray = [];
		 		$('.qtyField').each(function() {
		 			var prodId = $(this).find(".qtyBtn").attr("data-productId");
		 			var amount = $('#amount-' + prodId).val();
		 			prodIdArray.push(prodId);
		 			amountArray.push(amount);
		 		});
		 		var formData = { prodIdList : prodIdArray, amountList : amountArray, storeId : storeId, orderPay : orderPay, orderType : orderType, address : addr };
		 		
				if (orderType == "A") {
					orderType = '배달'
				} else {
					orderType = '포장'
				}
				if($("#orderPay option:selected").val() == "0" || $("#selectStore option:selected").val() == "0") {
					alert('결제 수단 및 지점 선택 부탁드립니다.')
					return;
				} else {
					if (addrCheckedVal == "addrB") {
						if ($("input[name=address]").val() == 0) {
							alert('주소 입력란 확인해주세요.');
						} else {
						if (confirm("주문 하시겠습니까?") == true) {
							$.ajax({
								"url" : "insert-order",
								"method" : "post",
								"data" : formData,
								"success" : function(data) {
									alert('주문 완료되었습니다.');
									location.href = "mypage";
								},
								"error" : function(xhr,
										status, err) {
									alert('fail');
								}
							});
						}
					}
				} else {
					if (confirm("주문 하시겠습니까?") == true) {
						$.ajax({
							"url" : "insert-order",
							"method" : "post",
							"data" : formData,
							"success" : function(data) {
								alert('주문 완료되었습니다.');
								location.href = "mypage";
							},
							"error" : function(xhr, status,	err) {
								alert('fail');
							}
						});
					}
				}

			}

		});
		 	
		});
	</script>
	<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
	<script>
	    // 우편번호 찾기 화면을 넣을 element
	    var element_layer = document.getElementById('layer');
	
	    function closeDaumPostcode() {
	        // iframe을 넣은 element를 안보이게 한다.
	        element_layer.style.display = 'none';
	    }
	
	    function sample2_execDaumPostcode() {
	        new daum.Postcode({
	            oncomplete: function(data) {
	                // 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.
	
	                // 각 주소의 노출 규칙에 따라 주소를 조합한다.
	                // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
	                var addr = ''; // 주소 변수
	                var extraAddr = ''; // 참고항목 변수
	
	                //사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
	                if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
	                    addr = data.roadAddress;
	                } else { // 사용자가 지번 주소를 선택했을 경우(J)
	                    addr = data.jibunAddress;
	                }
	
	                // 사용자가 선택한 주소가 도로명 타입일때 참고항목을 조합한다.
	                if(data.userSelectedType === 'R'){
	                    // 법정동명이 있을 경우 추가한다. (법정리는 제외)
	                    // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
	                    if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
	                        extraAddr += data.bname;
	                    }
	                    // 건물명이 있고, 공동주택일 경우 추가한다.
	                    if(data.buildingName !== '' && data.apartment === 'Y'){
	                        extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
	                    }
	                    // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
	                    if(extraAddr !== ''){
	                        extraAddr = ' (' + extraAddr + ')';
	                    }
	                    // 조합된 참고항목을 해당 필드에 넣는다.
	                    document.getElementById("sample2_extraAddress").value = extraAddr;
	                
	                } else {
	                    document.getElementById("sample2_extraAddress").value = '';
	                }
	
	                // 우편번호와 주소 정보를 해당 필드에 넣는다.
	                document.getElementById('sample2_postcode').value = data.zonecode;
	                document.getElementById("sample2_address").value = addr;
	                // 커서를 상세주소 필드로 이동한다.
	                document.getElementById("sample2_detailAddress").focus();
	
	                // iframe을 넣은 element를 안보이게 한다.
	                // (autoClose:false 기능을 이용한다면, 아래 코드를 제거해야 화면에서 사라지지 않는다.)
	                element_layer.style.display = 'none';
	            },
	            width : '100%',
	            height : '100%',
	            maxSuggestItems : 5
	        }).embed(element_layer);
	
	        // iframe을 넣은 element를 보이게 한다.
	        element_layer.style.display = 'block';
	
	        // iframe을 넣은 element의 위치를 화면의 가운데로 이동시킨다.
	        initLayerPosition();
	    }
	
	    // 브라우저의 크기 변경에 따라 레이어를 가운데로 이동시키고자 하실때에는
	    // resize이벤트나, orientationchange이벤트를 이용하여 값이 변경될때마다 아래 함수를 실행 시켜 주시거나,
	    // 직접 element_layer의 top,left값을 수정해 주시면 됩니다.
	    function initLayerPosition(){
	        var width = 300; //우편번호서비스가 들어갈 element의 width
	        var height = 400; //우편번호서비스가 들어갈 element의 height
	        var borderWidth = 5; //샘플에서 사용하는 border의 두께
	
	        // 위에서 선언한 값들을 실제 element에 넣는다.
	        element_layer.style.width = width + 'px';
	        element_layer.style.height = height + 'px';
	        element_layer.style.border = borderWidth + 'px solid';
	        // 실행되는 순간의 화면 너비와 높이 값을 가져와서 중앙에 뜰 수 있도록 위치를 계산한다.
	        element_layer.style.left = (((window.innerWidth || document.documentElement.clientWidth) - width)/2 - borderWidth) + 'px';
	        element_layer.style.top = (((window.innerHeight || document.documentElement.clientHeight) - height)/2 - borderWidth) + 'px';
	    }
	</script>
</body>
</html>