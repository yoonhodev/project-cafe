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
                    <li class="nav-item" data-name="store-worker">
                      <a class="nav-link active"data-toggle="tab"  role="tab">지점별 직원</a>
                    </li>
                    <li class="nav-item" data-name="cost-input">
                      <a class="nav-link"data-toggle="tab"  role="tab" >직원 정보 입력</a>
                    </li>
                  </ul>
                </div>
          
           <div class="tab-content tab-transparent-content">
 				<div class="tab-pane" id="store-worker">
                    <div class="row">
                    	<div class="col-xl-3 col-lg-6 col-sm-6 grid-margin stretch-card">
                    		<div class="card">
                          <div class="card-body text-center">
			          	<h1 style="color: black;">지점명</h1><br>
						    <form action="workerInfo" method="get" id="show-worker-form">
							    <select id="StoreName1" name="storeName1" class="StoreName1">
							    	<option selected disabled hidden="">지점 선택</option>
							      	<c:forEach var="store" items="${ stores }" varStatus="status">
							        	<option id="store-${ store.storeId }" value="${ store.storeId }" data-storeName="${ store.storeName }">${ store.storeName }</option>
							        </c:forEach>
								</select>
								<br><br>
								<input type="hidden" id="StoreId11" name="storeId">
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
                  	<h4 class="card-title"><span id="boardTitle1" >${ storeName11 }</span>
                  	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                  	<input type="button" value="급여 상세" class="btn btn-light btn-fw btn-rounded"></h4>
                  	
                    
                    <table class="table table-bordered">
                      <thead>
                        <tr>
							<th class="text-center">직원명</th>
							<th class="text-center">지점명</th>
							<th class="text-center">근무 년도</th>
							<th class="text-center">근무 월</th>
							<th class="text-center">시급</th>
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
							<td><span>${ worker.workerName }</span></td>
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
          
          <div class="tab-pane" id="cost-input">
                    <div class="row">
                    	<div class="col-xl-3 col-lg-6 col-sm-6 grid-margin stretch-card">
                    		<div class="card">
                          <div class="card-body text-center">
							<h1 style="color: black;">지점명</h1>
						    <select id="StoreName22" class="StoreName1">
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
                    <h4 class="card-title">직원 정보 입력</h4>
                    <form class="forms-sample" method="post" action="workerInfo">
                      <div class="form-group">
                        <label>근무 년도</label>
                        <input type="text" name="workYear" class="form-control" id="WorkYear" placeholder="근무 년도를 입력해주세요">
                      </div>
                      <div class="form-group">
                        <label>근무 월</label>
                        <input type="text" name="workMonth" class="form-control" id="WorkMonth" placeholder="근무 월을 입력해주세요">
                      </div>                      
                      <div class="form-group">
                        <label>직원명</label>
                        <input type="text" name="workerName" class="form-control" id="WorkerName" placeholder="직원명을 입력해주세요">
                      </div>
                       <div class="form-group">
                        <label>급여</label>
                        <input type="text" name="salary" class="form-control" id="Salary" placeholder="급여를 입력해주세요 (단위: 만)">
                      </div>
                      <div class="form-group">
                        <label>직원 연락처</label>
                        <input type="text" name="workerPhone" class="form-control" id="WorkerPhone" placeholder="직원 연락처를 입력해주세요">
                      </div>

                      <input type="hidden" id="StoreId22" name="storeId">
                  
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
		$(".StoreName1").on("change", function() {
			var storeId = $(this).val()
			
			
			$("#StoreId11").val(storeId);	
			$("#StoreId22").val(storeId);
			
		});

		
		
	</script>
</body>
</html>





