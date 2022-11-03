<%@ page language="java" contentType="text/html; charset=UTF-8"
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
<body class="template-product belle">
	<div class="pageWrapper">
		<!-- Header -->
		<jsp:include page="/WEB-INF/views/modules/header.jsp"></jsp:include>
		<!-- ./Header -->
		<!-- Body Content -->
		<div id="page-content">
			<!-- MainContent -->
			<div id="MainContent" class="main-content" role="main">
				<div id="ProductSection-product-template"
					 class="product-template__container prstyle1 container">
					<!-- Product Tabs -->
					<div class="tabs-listing">
						<br> <br> <br> <br>
						<ul class="product-tabs">
							<li data-name="monthly-cost"><a class="tablink">월별 고정 지출</a></li>
							<li data-name="cost-input" ><a class="tablink">고정 지출 입력</a></li>
						</ul>
						<div class="tab-container">
							<!-- History Tab -->
							<div id="monthly-cost" class="tab-content">
								<div id="shopify-product-reviews">
									<div class="spr-container">
										<div class="spr-header clearfix">
											<div class="spr-summary">
												<h1>지점명</h1><br>
											    <form action="fixedSpend" method="get" id="show-cost-form">
												    <select id="StoreName" name="storeName" class="StoreName">
												    	<option selected disabled hidden="">==지점 선택==</option>
												      	<c:forEach var="store" items="${ stores }" varStatus="status">
												        	<option value="${ store.storeId }">${ store.storeName }</option>
												        </c:forEach>
													</select>
													<br><br>
													<input type="hidden" id="StoreId1" name="storeId">
													<input type="submit"
														   class="spr-button spr-button-primary button button-primary btn btn-primary"
														   id="SelectStore"
														   value="확인">
												</form>
												
											</div>
										</div>
										<div class="spr-content">
											<div class="spr-form clearfix">
												<div id="loadList">
												<form action="order" method="post" class="cart style2">													
													<table>
														<thead class="cart__row cart__header">
															<tr>
																<th class="text-center">날짜</th>
																<th class="text-center">지점명</th>
																<th class="text-center">임대료</th>
																<th class="text-center">관리비</th>
																<th class="text-center">전기세</th>
																<th class="text-center">수도세</th>
																<th class="text-center">광고비</th>
																<th class="text-center">배달비</th>
															</tr>
														</thead>																										
														<tbody>																												
															<c:forEach var="fixedSpend" items="${ fixedSpends }" varStatus="status">
															<tr class="cart__row border-bottom line1 cart-flex border-top"
																align="center">
																<td><span>${ fixedSpend.month }</span></td>
																<td><span>${ fixedSpend.storeId }</span></td>
																<td><span>${ fixedSpend.monthPay }</span></td>
																<td><span>${ fixedSpend.managePay }</span></td>
																<td><span>${ fixedSpend.elecPay }</span></td>
																<td><span>${ fixedSpend.waterPay }</span></td>
																<td><span>${ fixedSpend.adPay }</span></td>
																<td><span>${ fixedSpend.deliPay }</span></td>										
															</tr>																												
															</c:forEach>																												
														</tbody>																												
													</table>
												</form>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
							<!-- ./History Tab -->
							
							<!-- Input Tab -->
							<div id="cost-input" class="tab-content">
								<div id="shopify-product-reviews">
									<div class="spr-container">
										<div class="spr-header clearfix">
											<div class="spr-summary">
												<h1>지점명</h1>
											    <select id="StoreName2" class="StoreName">
											    	<option selected disabled hidden="">==지점 선택==</option>
											      	<c:forEach var="store" items="${ stores }" varStatus="status">
											        	<option value="${ store.storeId }">${ store.storeName }</option>
											        </c:forEach>
												</select>
											</div>
										</div>
										<div class="spr-content">
											<div class="spr-form clearfix">
												<form method="post" action="fixedSpend" id="fixed-cost-form">
													<fieldset class="spr-form-contact">
														<div class="spr-form-contact-name">
															<label class="spr-form-label" for="Month">
																월</label>
															<input id="Month" type="date" name="month"
																   placeholder="월을 입력해주세요">
														</div>
														<div class="spr-form-contact-name">
															<label class="spr-form-label" for="MonthPay">
																임대료</label>
															<input id="MonthPay" type="text" name="monthPay"
																   placeholder="임대료를 입력해주세요 (단위: 만)">
														</div>
														<div class="spr-form-contact-name">
															<label class="spr-form-label" for="ManagePay">
																관리비용</label>
															<input id="ManagePay" type="text" name="managePay"
																   placeholder="관리비를 입력해주세요 (단위: 만)">
														</div>
														<div class="spr-form-contact-name">
															<label class="spr-form-label" for="ElecPay">
																전기세</label>
															<input id="ElecPay" type="text" name="elecPay"
																   placeholder="전기세를 입력해주세요 (단위: 만)">
														</div>
														<div class="spr-form-contact-name">
															<label class="spr-form-label" for="WaterPay">
																수도세</label>
															<input id="WaterPay" type="text" name="waterPay"
																   placeholder="수도세를 입력해주세요 (단위: 만)">
														</div>
														<div class="spr-form-contact-name">
															<label class="spr-form-label" for="AdPay">
																광고비용</label>
															<input id="AdPay" type="text" name="adPay"
																   placeholder="광고비를 입력해주세요 (단위: 만)">
														</div>
														<div class="spr-form-contact-name">
															<label class="spr-form-label" for="DeliPay">
																배달대행비용</label>
															<input id="DeliPay" type="text" name="deliPay"
																   placeholder="배달대행비를 입력해주세요 (단위: 만)">
														</div>
														<input type="hidden" id="StoreId2" name="storeId">
													</fieldset>
													<fieldset class="spr-form-actions">
														<input type="submit"
															   class="spr-button spr-button-primary button button-primary btn btn-primary"
															   value="확인" />
													</fieldset>
												</form>
											</div>
										</div>
									</div>
								</div>
							</div>
							<!-- ./Input Tab -->
						</div>
					</div>
					<!-- ./Product Tabs -->
				</div>
			</div>
			<!-- ./MainContent -->
		</div>
		<!-- ./Body Content -->

		<!-- Footer -->
		<jsp:include page="/WEB-INF/views/modules/footer.jsp"></jsp:include>
		<!-- ./Footer -->

		<!--Scoll Top-->
		<span id="site-scroll"><i class="icon anm anm-angle-up-r"></i></span>
		<!-- ./Scoll Top -->

		<!-- Common-js -->
		<jsp:include page="/WEB-INF/views/modules/common-js.jsp"></jsp:include>
	</div>
	<script src="https://code.jquery.com/jquery-3.6.1.js"></script>
	<script type="text/javascript">
		$(".tab-content").hide();
		$(".tab-content:first").show();
		/* if in tab mode */
		$(".product-tabs li").on('click', function () {
			$(".tab-content").hide();
			var activeTab = $(this).attr("data-name"); 
			$("#"+activeTab).fadeIn();
		});
		$(".StoreName").on("change", function() {
			var storeId = $(this).val()
			$("#StoreId1").val(storeId);
			$("#StoreId2").val(storeId);
		});
		
		
// 		$('#SelectStore').on('click', function(event) {
// 			$('#loadList').load(location.href + ' #loadList');
// 		});
		
		
    </script>
</body>
</html>