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
                    <li class="nav-item" data-name="worker-detail">
                      <a class="nav-link active"data-toggle="tab"  role="tab">지점별 직원</a>
                    </li>
                    <li class="nav-item" data-name="salary-input">
                      <a class="nav-link"data-toggle="tab"  role="tab" >직원 정보 입력</a>
                    </li>
                  </ul>
                </div>
          
           <div class="tab-content tab-transparent-content">
 				<div class="tab-pane" id="worker-detail">
                    <div class="row">
                    	
          		
           <div class="col-lg-12 grid-margin stretch-card">
                <div class="card">
                  <div class="card-body">
                  	<h4 class="card-title"><span id="boardTitle1" >${ storeName11 }</span>
                  	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<!--                   	<a id="worker-infoDatil"  class="btn btn-light btn-fw btn-rounded">급여 상세</a>	 -->
                  	</h4>
                  	
                    
                    <table class="table table-bordered">
                      <thead>
                        <tr>
							<th class="text-center">직원명</th>
							<th class="text-center">근무 년도</th>
							<th class="text-center">근무 월</th>
							<th class="text-center">주 몇회</th>
							<th class="text-center">시간</th>
							<th class="text-center">시급</th>
							<th class="text-center">월급</th>
							<th class="text-center">지급 일자</th>
<!-- 							<th class="text-center">수도세</th> -->
<!-- 							<th class="text-center">광고비</th> -->
<!-- 							<th class="text-center">배달비</th> -->
                        </tr>
                      </thead>
                      <tbody>
<%--                         <c:forEach var="showSalaryList" items="${ showSalaryList }" varStatus="status"> --%>
<!-- 						<tr class="cart__row border-bottom line1 cart-flex border-top" -->
<!-- 							align="center"> -->
<!-- 							<td><span></span></td> -->
<!-- 							<td><span></span></td> -->
<!-- 							<td><span></span></td> -->
<%-- 							<td><span>${ showSalaryList.workWeek }</span></td> --%>
<%-- 							<td><span>${ showSalaryList.workTime }</span></td> --%>
<!-- 							<td><span></span></td> -->
<!-- 							<td><span></span></td> -->
<%-- 							<td><span>${ showSalaryList.feeDate }</span></td> --%>
										
<!-- 						</tr>																												 -->
<%-- 						</c:forEach>								 --%>
                      </tbody>
                    </table>
                  </div>
                </div>
              </div>          			
          			</div>
          	</div>
          
          <div class="tab-pane" id="salary-input">
                    <div class="row">

						
						<div class="col-12 grid-margin stretch-card">
                <div class="card">
                  <div class="card-body">                  	
                    <h4 class="card-title" >급여 입력</h4>
                    <form class="forms-sample" method="post" action="worker-infoDtail">
                      <div class="form-group">
                        <label>주 몇회</label>
                        <input type="text" name="workWeek" class="form-control" id="WorkYear" placeholder="주 몇회 일을 하는지 입력해주세요">
                      </div>
                      <div class="form-group">
                        <label>시간</label>
                        <input type="text" name="workTime" class="form-control" id="WorkMonth" placeholder="일한 시간을 입력해주세요">
                      </div>                      
                      <div class="form-group">
                        <label>지급 일자</label>
                        <input type="date" name="feeDate" class="form-control" id="WorkerName" placeholder="지급 일자를 입력해주세요">
                      </div>
                  	<input type="hidden" value="${workerId}" name="workerId"/>
                      <input type="submit" id="insertworkerDetail"
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
// 		$(function() {	
// // 			$('#insertworkerDetail').on('click', function(event) {
// // // 				event.preventDefault()
			
// // 				var workerId = $('workerId').val();
// // 				alert(workerId);
// // 			});
// 		});
	</script>
</body>
</html>





