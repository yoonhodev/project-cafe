<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="kr">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>Green Coffee</title>
    <!-- Common-css -->
	<jsp:include page="/WEB-INF/views/admin-modules/admin-common-css.jsp"></jsp:include>
  </head>
  <body>
    <div class="container-scroller">
      <!-- partial:partials/_navbar.html -->
      <jsp:include page="/WEB-INF/views/admin-modules/navbar.jsp"></jsp:include>
       <!-- partial -->
      <div class="container-fluid page-body-wrapper">
        <!-- partial:../../partials/_sidebar.html -->
         <jsp:include page="/WEB-INF/views/admin-modules/sidebar.jsp"></jsp:include>
         <!-- partial -->
        <div class="main-panel">
          <div class="content-wrapper">
          
           <div class="page-header">      
           <h3 class="page-title"> 주문 내역 </h3>        
              <nav aria-label="breadcrumb">
                <ol class="breadcrumb" >
                  <li class="breadcrumb-item"><a href="admincheckorder">주문 내역</a></li>
                  <li class="breadcrumb-item active" aria-current="page">지점별 주문 내역</li>
                </ol>
              </nav>
            </div>
          
                   <div class="d-sm-flex justify-content-between align-items-center transaparent-tab-border {">
                  <ul class="nav nav-tabs tab-transparent">
                    <li class="nav-item" data-name="store-worker">
                      <a class="nav-link active"data-toggle="tab"  role="tab">지점별 주문 내역</a>
                    </li>
                  </ul>
                </div>
          
          
          
           <div class="tab-content tab-transparent-content">
 				<div class="tab-pane" id="store-worker">
                    <div class="row">
                    	<div class="col-lg-12 grid-margin stretch-card">
                    	<div class="card">
                          <div class="card-body">
                          <form action="admincheckorder" method="get" id="show-order-in-admin">
                          	<table class="table">
                          		<thead style="background-color: #d5dee8">
                          			<tr>
                          				<th>                        				 
											    <span class="col-sm-6 col-md-4 col-lg-3"><b>지점명</b></span>
												    <select id="StoreName1" name="storeName1" class="StoreName1">
												    	<option selected disabled hidden="">지점 선택</option>
												      	<c:forEach var="store" items="${ stores }" varStatus="status">
												        	<option id="store-${ store.storeId }" value="${ store.storeId }" data-storeName="${ store.storeName }">${ store.storeName }</option>
												        </c:forEach>
													</select>
                          				</th>                          				
                          				<th>
												<span class="col-sm-6 col-md-4 col-lg-3"><b>년도</b></span>
												<select id=WorkYear1 name="WorkYear1" class="WorkYear1">
													<option selected disabled hidden="">년도 선택</option>
													<c:forEach var="i" begin="2015" end="2023">
													        	<option>${i}</option>
													</c:forEach>
												</select>
                          				
                          				</th>
                          				<th>
											<span class="col-sm-6 col-md-4 col-lg-3"><b>월</b></span>
												<select id=WorkMonth1 name="WorkMonth1" class="WorkMonth1">
													<option selected disabled hidden="">월 선택</option>
													<c:forEach var="i" begin="1" end="12">
													        	<option>${i}</option>
													</c:forEach>
												</select>
                          				</th>
                          			</tr>                          		
                          		</thead>
                          		<tbody>
                          		<tr>
                          		<td colspan="6" align="center">
									<input type="hidden" id="StoreId11" name="storeId">
										<input type="hidden" id="WorkYear11" name="workYear">	
										<input type="hidden" id="WorkMonth11" name="workMonth">
										<input type="submit"
											   class="btn btn-outline-secondary btn-fw btn-rounded"
											   id="SelectStore"
											   value="확인">
									
                          		</td>
                          		</tr>
                          		</tbody>
                          	
                          	
                          	</table>
                          </form>											
						</div>
							</div>
          			</div>
           <div class="col-lg-12 grid-margin stretch-card">
                <div class="card">
                  <div class="card-body">
                  	<h4 class="card-title"><span id="boardTitle1" >${ storeName11 }</span>
                  	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<!--                   	<a id="worker-infoDatil"  class="btn btn-light btn-fw btn-rounded">급여 상세</a>	 -->
                  	</h4>
                  	
                    
                    <table class="table table-striped">
                      <thead>
                        <tr>
							<th class="text-center">직원명</th>
							<th class="text-center">지점명</th>
							<th class="text-center">근무 년도</th>
							<th class="text-center">근무 월</th>
							<th class="text-center">시급(만)</th>
							<th class="text-center">연락쳐</th>
<!-- 							<th class="text-center">수도세</th> -->
<!-- 							<th class="text-center">광고비</th> -->
<!-- 							<th class="text-center">배달비</th> -->
                        </tr>
                      </thead>
                      <tbody>
                        <c:forEach var="worker" items="${ workers }" varStatus="status">
						<tr class="cart__row border-bottom line1 cart-flex border-top"
							align="center">
							<td><a href="worker-infoDtail?workerId=${ worker.workerId }"><span>${ worker.workerName }</span></a></td>
							<td><span>${ storeName11 }</span></td>
							<td><span>${ worker.workYear }</span></td>
							<td><span>${ worker.workMonth }</span></td>
							<td><span>${ worker.salary }</span></td>
							<td><span>${ worker.workerPhone }</span></td>
										
						</tr>																										
						</c:forEach>								
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
          </div>
          </div>
          <!-- content-wrapper ends -->
          <!-- partial:../../partials/_footer.html -->
         <jsp:include page="/WEB-INF/views/admin-modules/admin-footer.jsp"></jsp:include>
          <!-- partial -->
        </div>
        <!-- main-panel ends -->
      </div>
      <!-- page-body-wrapper ends -->
    </div>
    <!-- container-scroller -->
	<!-- Common-js -->
	<jsp:include page="/WEB-INF/views/admin-modules/admin-common-js.jsp"></jsp:include>
    <!-- End custom js for this page -->
    
    	<script src="https://code.jquery.com/jquery-3.6.1.js"></script>
	<script type="text/javascript">
		$(".tab-pane").hide();
		$(".tab-pane:first").show();
		/* if in tab mode */
		$(".nav-tabs li").on('click', function () {
			$(".tab-pane").hide();
			var activeTab = $(this).attr("data-name"); 
			$("#"+activeTab).fadeIn();
		});
		
		$(".StoreName1").on("change", function() {
			var storeId = $(this).val();
			
			
			$("#StoreId11").val(storeId);	
			$("#StoreId22").val(storeId);
			
			
		});		

		$(".WorkYear1").on("change", function() {
			var workYear = $(this).val();
			
			$('#WorkYear11').val(workYear);
			
		});
		
		$(".WorkMonth1").on("change", function() {
			var workMonth = $(this).val();
			
			$('#WorkMonth11').val(workMonth);
			
		});
		
		$(function() {
			
			$('#SelectStore').on('click', function(event) {
				
				if($('#StoreId11').val()=="") {
					alert("지점을 선택해 주세요");
					return false;
				};
				
				if($('#WorkYear11').val()=="") {
					alert("년도를 선택해 주세요");
					return false;
				};
				
				if($('#WorkMonth11').val()=="") {
					alert("월을 선택해 주세요");
					return false;
				};
				
			});
		});
	</script>
</body>
</html>


