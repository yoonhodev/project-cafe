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
								</ul>
							</div>
							<div class="tab-content tab-transparent-content">
								<div class="tab-pane" id="SelectOrder" role="tabpanel" aria-labelledby="select-insert-tab">
									<div class="col-lg-12 grid-margin stretch-card">
										<div class="card">
											<div class="card-body">
												<h1 class="card-title" style="font-size: 16pt; background-color: #d5dee8; margin: 0; padding: 20px;">주문내역</h1>
												<div style="color: black; background-color: #d5dee8; padding: 10px 20px 20px 20px">
													<div style="width: 300px; display: inline-block;"><span>지점명&nbsp;&nbsp;&nbsp;&nbsp;</span>
														<input style="vertical-align: middle;" list="storeList" name="StoreName" class="StoreName" id="StoreName" placeholder="지점 선택">
														<datalist id="storeList">
															<c:forEach var="store" items="${ stores }" varStatus="status">
																<option value="${ store.storeName }/${ store.storeId }"></option>
															</c:forEach>
														</datalist>
														<input type="hidden" id="StoreId" name="storeId">
													</div>
													<div style="width: 230px; display: inline-block;">
														<select id="year" style="text-align-last: center; vertical-align: middle">
													    	<option selected disabled hidden="">----</option>
													        <c:forEach var="i" begin="2015" end="2023">
													        	<option>${i}</option>
															</c:forEach>
														</select>&nbsp;&nbsp;
														년&nbsp;&nbsp;&nbsp;&nbsp;
														<select id="month" style="text-align-last: center; vertical-align: middle">
													    	<option selected disabled hidden="">----</option>
													        <c:forEach var="i" begin="1" end="12">
													        	<option>${i}</option>
															</c:forEach>
														</select>&nbsp;&nbsp;
														월
													</div>
													<div style="width: 180px; display: inline-block;">
														<button id="lookup" type="button" class="btn btn-secondary">조회</button>
													</div>
												</div>
												<br><br>
												<div id="rawOrderedList">
												</div>
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
			$(".tab-pane").fadeIn();
			$("#rawOrderedList").load('rawOrderedList');
			
			$(".StoreName").on("change", function(event) {
				var storeId = $(this).val();
				storeId = storeId.split("/");
				$("#StoreId").val(storeId[1]);
			});
			
			$("#lookup").on("click", function(event) {
				var storeId = $("#StoreId").val();
				var year = $("#year").val();
				var month = $("#month").val();
				var formData = 'storeId=' + storeId + '&year=' + year + '&month=' + month;
				if (storeId == [] && year == null && month == null) {
					alert("검색조건을 입력해 주세요");
				} else {
					$.ajax({
						"url": "lookupRawOrdered",
						"method": "post",
						"data": formData,
						"success": function(data, status, xhr) {
							if(data == "0") {
								$("#rawOrderedList").load('rawOrderedList');
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

