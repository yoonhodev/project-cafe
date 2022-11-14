<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="en">
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
          
                   <div class="d-sm-flex justify-content-between align-items-center transaparent-tab-border {">
                  <ul class="nav nav-tabs tab-transparent">
                    <li class="nav-item" data-name="monthly-cost">
                      <a class="nav-link active"data-toggle="tab"  role="tab">월별 고정 지출</a>
                    </li>
                    <li class="nav-item" data-name="cost-input">
                      <a class="nav-link"data-toggle="tab"  role="tab" >고정 지출 입력</a>
                    </li>
                  </ul>
                </div>
          
           <div class="tab-content tab-transparent-content">
 				<div class="tab-pane" id="monthly-cost">
                    <div class="row">
                    	<div class="col-xl-3 col-lg-6 col-sm-6 grid-margin stretch-card">
                    		<div class="card">
                          <div class="card-body text-center">
			          	<h1 style="color: black;">지점명</h1><br>
						    <form action="fixedSpend" method="get" id="show-cost-form">
						    <span class="col-sm-6 col-md-4 col-lg-3"><i class="mdi mdi-sort" style="color: gray"></i></span>
							    <select id="StoreName" name="storeName" class="StoreName">
							    	<option selected disabled hidden="">지점 선택</option>
							      	<c:forEach var="store" items="${ stores }" varStatus="status">
							        	<option id="store-${ store.storeId }" value="${ store.storeId }" data-storeName="${ store.storeName }">${ store.storeName }</option>
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
          			</div>
          			
           <div class="col-lg-12 grid-margin stretch-card">
                <div class="card">
                  <div class="card-body">
                  	<h4 class="card-title"><span id="boardTitle" >${ storeName10 }</span></h4>
                    
                    <table class="table table-striped">
                      <thead>
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
							<td><span>${ storeName10 }</span></td>
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
                  </div>
                </div>
              </div>          			
          			</div>
          	</div>
          
          <div class="tab-pane" id="cost-input">
                    <div class="row">
                    	<div class="col-xl-3 col-lg-6 col-sm-6 grid-margin stretch-card">
                    		<div class="card">
                          <div class="card-body text-center">
							<h1 style="color: black;">지점명</h1>
							<span class="col-sm-6 col-md-4 col-lg-3"><i class="mdi mdi-sort" style="color: gray"></i></span>
						    <select id="StoreName2" class="StoreName">
						    	<option selected disabled hidden="">지점 선택</option>
						      	<c:forEach var="store" items="${ stores }" varStatus="status">
						        	<option value="${ store.storeId }">${ store.storeName }</option>
						        </c:forEach>
							</select>	
		 


						  </div>
							</div>
							
						</div>
						
						<div class="col-12 grid-margin stretch-card">
                <div class="card">
                  <div class="card-body">
                    <h4 class="card-title">고정 지출 입력</h4>
                    <form class="forms-sample" method="post" action="fixedSpend">
                      <div class="form-group">
                        <label style="color: black;"><i class="mdi mdi-calendar-blank" style="color: gray"></i>월</label>
                        <input type="date" name="month" class="form-control" id="Month" placeholder="월을 입력해주세요">
                      </div>
                      <div class="form-group">
                        <label style="color: black;"><i class="mdi mdi-cash" style="color: green"></i>임대료</label>
                        <input type="text" name="monthPay" class="form-control" id="MonthPay" placeholder="임대료를 입력해주세요 (단위: 만)">
                      </div>
                       <div class="form-group">
                        <label style="color: black;"><i class="mdi mdi-cash" style="color: green"></i>관리비용</label>
                        <input type="text" name="managePay" class="form-control" id="ManagePay" placeholder="관리비를 입력해주세요 (단위: 만)">
                      </div>
                      <div class="form-group">
                        <label style="color: black;"><i class="mdi mdi-cash" style="color: green"></i>전기세</label>
                        <input type="text" name="elecPay" class="form-control" id="ElecPay" placeholder="전기세를 입력해주세요 (단위: 만)">
                      </div>
                      <div class="form-group">
                        <label style="color: black;"><i class="mdi mdi-cash" style="color: green"></i>수도세</label>
                        <input type="text" name="waterPay" class="form-control" id="WaterPay" placeholder="수도세를 입력해주세요 (단위: 만)">
                      </div>
                      <div class="form-group">
                        <label style="color: black;"><i class="mdi mdi-cash" style="color: green"></i>광고비용</label>
                        <input type="text" name="adPay" class="form-control" id="AdPay" placeholder="광고비를 입력해주세요 (단위: 만)">
                      </div>
                      <div class="form-group">
                        <label style="color: black;"><i class="mdi mdi-cash" style="color: green"></i>배달대행비용</label>
                        <input type="text" name="deliPay" class="form-control" id="DeliPay" placeholder="배달대행비를 입력해주세요 (단위: 만)">
                      </div>
                      <input type="hidden" id="StoreId2" name="storeId">
                  
                      <input type="submit"
							   class="btn btn-primary mr-2"
							   value="확인" />
                      </form>
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
		$(".StoreName").on("change", function() {
			var storeId = $(this).val()
			
			$("#StoreId1").val(storeId);	
			$("#StoreId2").val(storeId);
			
		});

		$(function() {
			
			$('#SelectStore').on('click', function(event) {
				
				if($('#StoreId1').val()=="") {
					alert("지점을 선택해 주세요");
					return false;
				}
								
			});					
		});
		
		
		
	</script>
</body>
</html>





