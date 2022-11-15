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
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<!-- Common-css -->
<jsp:include page="/WEB-INF/views/admin-modules/admin-common-css.jsp"></jsp:include>
</head>
<body>
	<!-- Container-Scroller -->
	<div class="container-scroller">
		<!-- Navbar -->
		<jsp:include page="/WEB-INF/views/admin-modules/navbar.jsp"></jsp:include>
		<!-- ./Navbar -->
		
		<!-- Page-Body-Wrapper -->
		<div class="container-fluid page-body-wrapper">
			<!-- Sidebar -->
	        <jsp:include page="/WEB-INF/views/admin-modules/sidebar.jsp"></jsp:include>
	        <!-- ./Sidebar -->
        
			<!-- Main-Panel -->
			<div class="main-panel">
				<div class="content-wrapper"><i id="bannerClose"></i>
					<div class="row">
						<div class="col-md-12">
							<div class="d-sm-flex justify-content-between align-items-center transaparent-tab-border {">
								<ul class="nav nav-tabs tab-transparent" role="tablist">
									<li class="nav-item" data-tab="SelectOrder">
										<a class="nav-link active" id="select-tab" data-toggle="tab" href="#SelectOrder" role="tab" aria-selected="true">주문입력</a>
									</li>
									<li class="nav-item" data-tab="CartOrder">
										<a class="nav-link" id="cart-tab" data-toggle="tab" href="#CartOrder" role="tab" aria-selected="false">장바구니</a>
									</li>
								</ul>
							</div>
							<div class="tab-content tab-transparent-content">
								<div class="tab-pane" id="SelectOrder" role="tabpanel" aria-labelledby="select-insert-tab">
									<div class="col-lg-12 grid-margin stretch-card">
										<div style="width: 600px; margin: 0 auto; background-color: white;">
											<div class="card-body">
												<div style="text-align: center; background-color: #d5dee8; color: black;">
													<div style="padding: 20px"><span>지점명&nbsp;&nbsp;&nbsp;&nbsp;</span>
														<input list="storeList" name="StoreName" class="StoreName" id="StoreName" placeholder="지점 선택">
														<datalist id="storeList">
															<c:forEach var="store" items="${ stores }" varStatus="status">
																<option value="${ store.storeName }/${ store.storeId }"></option>
															</c:forEach>
														</datalist>
														<input type="hidden" id="StoreId" name="storeId">
													</div>
													<div style="padding: 20px">
														<select id="bgCate" style="text-align-last: center; vertical-align: middle">
													    	<option selected disabled hidden="">연도 선택</option>
													    	<c:forEach var="bigCategory" items="${ bigCategories }">
													        	<option>${ bigCategory }</option>
													        </c:forEach>
													        <c:forEach var="i" begin="2015" end="2023">
													        	<option>${i}</option>
															</c:forEach>
														</select>&nbsp;&nbsp;
														년&nbsp;&nbsp;&nbsp;&nbsp;
														<select id="smCate" style="text-align-last: center; vertical-align: middle">
													    	<option selected disabled hidden="">월 선택</option>
													        <c:forEach var="i" begin="1" end="12">
													        	<option>${i}</option>
															</c:forEach>
														</select>&nbsp;&nbsp;
														월
													</div>
												</div>
												<table class="table table-bordered" style="text-align: center">
													<tfoot>
														<tr>
															<td colspan="6" align="center">
																<button id="lookup" type="button" class="btn btn-outline-secondary btn-fw btn-rounded">조회</button>
															</td>
														</tr>
													</tfoot>
												</table>
											</div>
										</div>
									</div>
									<div class="col-lg-12 grid-margin stretch-card" id="rawOrderedList"></div>
									
								</div>
							</div>
							<div class="tab-content tab-transparent-content">
								<div class="tab-pane" id="CartOrder" role="tabpanel" aria-labelledby="business-tab">
									<div class="col-lg-12 grid-margin stretch-card" id="cartList"></div>
									
								</div>
							</div>
						</div>
					</div>
				</div>
				<!-- ./Content-Wrapper -->
          
				<!-- Footer -->
				<jsp:include page="/WEB-INF/views/admin-modules/admin-footer.jsp"></jsp:include>
				<!-- ./Footer -->
			</div>
			<!-- ./Main-Panel -->
		</div>
		<!-- ./Page-Body-Wrapper -->
	</div>
	<!-- ./Container-Scroller -->
    
    <!-- Common-js -->
	<jsp:include page="/WEB-INF/views/admin-modules/admin-common-js.jsp"></jsp:include>
	<script type="text/javascript">
		$(function() {
			$(".tab-pane").show();
			$("#rawOrderedList").load('rawOrderedList');
			
			$(".StoreName").on("change", function() {
				var storeId = $(this).val();
				storeId = storeId.split("/");
				$("#StoreId").val(storeId[1]);
			});
			
			$(".nav-tabs li").on('click', function () {
				$(".tab-pane").hide();
				var activeTab = $(this).attr("data-tab"); 
				$("#"+activeTab).fadeIn();
			});
			
// 			var now_utc = Date.now();
// 			var timeOff = new Date().getTimezoneOffset()*60000;
// 			var today = new Date(now_utc-timeOff).toISOString().split("T")[0];
// 			$("#orderDate").attr('min',today);
// 			$("#orderDate").val(today);
			
// 			$("#bgCate").on("change", function(event) {
// 				var bgCate = $(this).val();
// 				$.ajax({
// 					"url": "searchSmCate",
// 					"method": "get",
// 					"data": 'bigCategory=' + bgCate,
// 					"success": function(data, status, xhr) {
// 						$("#smCate").empty();
// 						$("#smCate").append("<option selected disabled hidden=''>소분류</option>");
// 						$("#smCate").append("<option>전체보기</option>");
// 						for(var i = 0; i < data.length; i++) {
// 							$("#smCate").append("<option>" + data[i] + "</option>");
// 						}
// 					},
// 					"error": function(xhr, status, err) {
// 						console.log(status);
// 						console.log(err);
// 					}
// 				});
// 			});
			
			$("#lookup").on("click", function(event) {
				var bigCategory = $("#bgCate").val();
				var smallCategory = $("#smCate").val();
				var rawName = $("#itemName").val();
				var formData = 'bigCategory=' + bigCategory + '&smallCategory=' + smallCategory + '&rawName=' + rawName;
				if ($("#StoreName").val() == "") {
					alert("지점을 선택해 주세요");
				} else {
					$.ajax({
						"url": "lookupRaw",
						"method": "post", 
						"data": formData,
						"success": function(data) {
							if(data == "1") {
								alert("검색어를 입력해 주세요");
							} else if (data == "2") {
								$("#rawOrderList").load('rawOrderList?bigCategory=' + bigCategory + '&smallCategory=' + smallCategory + '&rawName=' + rawName);
							} else if (data == "3") {
								$("#rawOrderList").load('rawOrderList?bigCategory=' + bigCategory + '&rawName=' + rawName);
							} else if (data == "4") {
								$("#rawOrderList").load('rawOrderList?bigCategory=' + bigCategory + '&smallCategory=' + smallCategory);
							} else if (data == "5") {
								$("#rawOrderList").load('rawOrderList?bigCategory=' + bigCategory);
							} else if (data == "6") {
								$("#rawOrderList").load('rawOrderList?rawName=' + rawName);
							}
							if(data == "0") {
								alert("error");
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
</body>
</html>

