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
									<li class="nav-item" data-tab="InsertOrder">
										<a class="nav-link active" id="insert-tab" data-toggle="tab" href="#InsertOrder" role="tab" aria-selected="true">주문입력</a>
									</li>
									<li class="nav-item" data-tab="cartOrder">
										<a class="nav-link" id="cart-tab" data-toggle="tab" href="#cartOrder" role="tab" aria-selected="false">장바구니</a>
									</li>
									<li class="nav-item" data-tab="selectOrder">
										<a class="nav-link" id="select-tab" data-toggle="tab" href="#selectOrder" role="tab" aria-selected="false">주문내역</a>
									</li>
								</ul>
							</div>
							<div class="tab-content tab-transparent-content">
								<div class="tab-pane" id="InsertOrder" role="tabpanel" aria-labelledby="select-insert-tab">
									<div class="col-lg-12 grid-margin stretch-card">
										<div class="card">
											<div class="card-body">
												<table class="table">
													<thead style="background-color: #d5dee8">
														<tr>
															<th>지점명</th>
															<th>
																<input list="storeList" name="StoreName" class="StoreName" id="StoreName" placeholder="지점 선택">
																<datalist id="storeList">
																	<c:forEach var="store" items="${ stores }" varStatus="status">
																		<option value="${ store.storeName }/${ store.storeId }"></option>
																	</c:forEach>
																</datalist>
																<input type="hidden" id="StoreId" name="storeId">
															</th>
															<th>주문일</th>
															<th>
																<input type="date" id="orderDate">
															</th>
															<th>배송예상일</th>
															<th width="120px"><span id="expectDay"></span></th>
														</tr>
													</thead>
													<tbody style="background-color: #d5dee8">
														<tr>
															<td>카테고리</td>
															<td>
																<select id="bgCate">
															    	<option selected disabled hidden="">대분류</option>
															    	<c:forEach var="bigCategory" items="${ bigCategories }">
															        	<option>${ bigCategory }</option>
															        </c:forEach>
																</select>
																<select id="smCate">
															    	<option selected disabled hidden="">소분류</option>
															    	<option>전체보기</option>
															    	<c:forEach var="smallCate" items="${ smallCates }">
															        	<option>${ smallCate }</option>
															        </c:forEach>
																</select>
															</td>
															<td>품목명</td>
															<td colspan="3">
																<input id="itemName" type="text">
															</td>
														</tr>
													</tbody>
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
									<div class="col-lg-12 grid-margin stretch-card" id="rawOrderList"></div>
								</div>
							</div>
							<div class="tab-content tab-transparent-content">
								<div class="tab-pane" id="selectOrder" role="tabpanel" aria-labelledby="business-tab">
									<div class="col-lg-12 grid-margin stretch-card">
										<div class="card">
											<div class="card-body">
												<h4 class="card-title">Bordered table</h4>
												<p class="card-description"> Add class <code>.table-bordered</code></p>
												<table class="table table-bordered">
													<thead>
														<tr>
															<th> # </th>
															<th> First name </th>
															<th> Progress </th>
															<th> Amount </th>
															<th> Deadline </th>
														</tr>
													</thead>
													<tbody>
														<tr>
															<td> 1 </td>
															<td> Herman Beck </td>
															<td>
																<div class="progress">
																	<div class="progress-bar bg-success" role="progressbar" style="width: 25%" aria-valuenow="25" aria-valuemin="0" aria-valuemax="100"></div>
																</div>
															</td>
															<td> $ 77.99 </td>
															<td> May 15, 2015 </td>
														</tr>
														<tr>
															<td> 2 </td>
															<td> Messsy Adam </td>
															<td>
																<div class="progress">
																	<div class="progress-bar bg-danger" role="progressbar" style="width: 75%" aria-valuenow="75" aria-valuemin="0" aria-valuemax="100"></div>
																</div>
															</td>
															<td> $245.30 </td>
															<td> July 1, 2015 </td>
														</tr>
														<tr>
															<td> 3 </td>
															<td> John Richards </td>
															<td>
																<div class="progress">
																	<div class="progress-bar bg-warning" role="progressbar" style="width: 90%" aria-valuenow="90" aria-valuemin="0" aria-valuemax="100"></div>
																</div>
															</td>
															<td> $138.00 </td>
															<td> Apr 12, 2015 </td>
														</tr>
														<tr>
															<td> 4 </td>
															<td> Peter Meggik </td>
															<td>
																<div class="progress">
																	<div class="progress-bar bg-primary" role="progressbar" style="width: 50%" aria-valuenow="50" aria-valuemin="0" aria-valuemax="100"></div>
																</div>
															</td>
															<td> $ 77.99 </td>
															<td> May 15, 2015 </td>
														</tr>
														<tr>
															<td> 5 </td>
															<td> Edward </td>
															<td>
																<div class="progress">
																	<div class="progress-bar bg-danger" role="progressbar" style="width: 35%" aria-valuenow="35" aria-valuemin="0" aria-valuemax="100"></div>
																</div>
															</td>
															<td> $ 160.25 </td>
															<td> May 03, 2015 </td>
														</tr>
														<tr>
															<td> 6 </td>
															<td> John Doe </td>
															<td>
																<div class="progress">
																	<div class="progress-bar bg-info" role="progressbar" style="width: 65%" aria-valuenow="65" aria-valuemin="0" aria-valuemax="100"></div>
																</div>
															</td>
															<td> $ 123.21 </td>
															<td> April 05, 2015 </td>
														</tr>
														<tr>
															<td> 7 </td>
															<td> Henry Tom </td>
															<td>
																<div class="progress">
																	<div class="progress-bar bg-warning" role="progressbar" style="width: 20%" aria-valuenow="20" aria-valuemin="0" aria-valuemax="100"></div>
																</div>
															</td>
															<td> $ 150.00 </td>
															<td> June 16, 2015 </td>
														</tr>
													</tbody>
												</table>
											</div>
										</div>
									</div>
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
			$(".tab-pane").hide();
			$(".tab-pane:first").show();
			$("#rawOrderList").load("rawOrderList");
			
			$(".nav-tabs li").on('click', function () {
				$(".tab-pane").hide();
				var activeTab = $(this).attr("data-tab"); 
				$("#"+activeTab).fadeIn();
			});
			
			$(".StoreName").on("change", function() {
				var storeId = $(this).val();
				storeId = storeId.split("/");
				$("#StoreId").val(storeId[1]);
			});
			
			var now_utc = Date.now();
			var timeOff = new Date().getTimezoneOffset()*60000;
			var today = new Date(now_utc-timeOff).toISOString().split("T")[0];
			$("#orderDate").attr('min',today);
			
			$("#orderDate").on("change", function(event) {
				var day = $(this).val();
				var date = day.split("-");
				
				var orderDate = new Date(date);
				var deliDate = new Date(date);
				deliDate.setDate(orderDate.getDate()+3);
				
				var deliDay = deliDate.getFullYear()+"-"+deliDate.getMonth()+"-"+deliDate.getDate();
				$("#expectDay").text(deliDay);
			});
			
			$("#bgCate").on("change", function(event) {
				var bgCate = $(this).val();
				$.ajax({
					"url": "searchSmCate",
					"method": "get",
					"data": 'bigCategory=' + bgCate,
					"success": function(data, status, xhr) {
						$("#smCate").empty();
						$("#smCate").append("<option selected disabled hidden=''>소분류</option>");
						$("#smCate").append("<option>전체보기</option>");
						for(var i = 0; i < data.length; i++) {
							$("#smCate").append("<option>" + data[i] + "</option>");
						}
					},
					"error": function(xhr, status, err) {
						console.log(status);
						console.log(err);
					}
				});
			});
			
			$("#lookup").on("click", function(event) {
				var bigCategory = $("#bgCate").val();
				var smallCategory = $("#smCate").val();
				var rawName = $("#itemName").val();
				var formData = 'bigCategory=' + bigCategory + '&smallCategory=' + smallCategory + '&rawName=' + rawName;
				$.ajax({
					"url": "lookupRaw",
					"method": "post", 
					"data": formData,
					"success": function(data) {
						if(data == "1") {
							alert("검색어를 입력해 주세요");
						} else if (data == "2") {
							alert("2");
							$("#rawOrderList").load('rawOrderList?bigCategory=' + bigCategory + '&smallCategory=' + smallCategory + '&rawName=' + rawName);
						} else if (data == "3") {
							alert("3");
							$("#rawOrderList").load('rawOrderList?bigCategory=' + bigCategory + '&rawName=' + rawName);
						} else if (data == "4") {
							alert("4");
							$("#rawOrderList").load('rawOrderList?bigCategory=' + bigCategory + '&smallCategory=' + smallCategory);
						} else if (data == "5") {
							alert("5");
							$("#rawOrderList").load('rawOrderList?bigCategory=' + bigCategory);
						} else if (data == "6") {
							alert("6");
							$("#rawOrderList").load('rawOrderList?rawName=' + rawName);
						}
						
						if(data == "0") {
							alert("err");
						}
					 },
					"error": function(xhr, status, err) {
						alert('fail : ' + status);
					}
				});
			});
		});
	</script>
</body>
</html>

