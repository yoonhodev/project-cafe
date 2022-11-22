<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
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
                    <li class="nav-item active">
                      <a class="nav-link active">지점별 주문 내역</a>
                    </li>
                  </ul>
                </div>
          
          
          
           <div class="tab-content tab-transparent-content">
 				<div class="tab-pane active" id="store-worker">
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
                          			</tr>                          		
                          		</thead>
                          		<tbody>
                          		<tr>
                          		<td colspan="6" align="center">
									<input type="hidden" id="StoreId11" name="storeId">
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
                  	</h4>
                  	
                    
                    <table class="table table-hover">
                      <thead>
                        <tr>
							<th class="text-center">사용자 ID</th>
							<th class="text-center">주문 번호</th>
							<th class="text-center">지점명</th>
							<th class="text-center">주문 금액</th>
							<th class="text-center">주문 종류</th>
							<th class="text-center">주문 상태</th>
							<th class="text-center">주문 상태 변경</th>
							<th class="text-center">주문 날짜</th>
							<th class="text-center">제품 / 수량</th>
							<th class="text-center">주소</th>
                        </tr>
                      </thead>
                      <tbody>
                        <c:forEach var="order" items="${ orders }" varStatus="status">
						<tr class="cart__row border-bottom line1 cart-flex border-top "
							align="center">
							
							<td><span>${ order.customerId }</span></td>
							<td><span>${ order.orderId }</span></td>
							<td><span>${ storeName11 }</span></td>
							<c:set var="total_amount" value="0" />
							<c:forEach var="orderDetail" items="${ order.orderDetailDtos }">
								<c:set var="total_amount" value="${ total_amount + (orderDetail.productDto.prodPrice * orderDetail.amount) }" />
							</c:forEach>
							<td><span>${ total_amount }원</span></td>
							<c:if test="${ order.orderType eq 'A' }">
							<td><span>배달</span></td>
							</c:if>
							<c:if test="${ order.orderType eq 'B' }">
							<td><span>포장</span></td>
							</c:if>
							
							<c:if test="${ order.orderStat eq '0' }">
							<td><span>만드는중</span></td>
							</c:if>		
							
							<c:if test="${ order.orderStat eq '1' }">
							<td><span>수령완료</span></td>
							</c:if>	
							
							<c:if test="${ order.orderStat eq '2' }">
							<td><span>배달중</span></td>
							</c:if>	
							
							<c:if test="${ order.orderStat eq '3' }">
							<td><span>배달완료</span></td>
							</c:if>	
							<!-- 포장일때 버튼 -->		
							<c:if test="${ order.orderType eq 'B' and order.orderStat eq '0' }">										
							<td>							
							<input type="button" id="change-to-get-prod-${ order.orderId }" data-storeId="${ order.storeId }" data-order="${ order.orderId }" class="change-to-get-prod btn btn-outline-primary" value="수령완료">							
							</td>	
							</c:if>						
							<!-- 포장일때 버튼 -->		
<!-- 							공백일떄 -->
							<c:if test="${  order.orderStat eq '3' or  order.orderStat eq '1' }">
								<td>주문 완료</td>
							</c:if>	
<!-- 							//////////////////////////// -->
							<!-- 배달일때 버튼 -->
							<c:if test="${ order.orderType eq 'A' and order.orderStat eq '0' }">			
							<td>
								<input type="button" id="change-to-delivering-${ order.orderId }" data-storeId="${ order.storeId }" data-order="${ order.orderId }" class="change-to-delivering btn btn-outline-primary" value="배달중" >
							</td>
							</c:if>
							<c:if test="${ order.orderType eq 'A' and order.orderStat eq '2' }">
							<td>
							<input type="button" id="change-to-delivery-${ order.orderId }" data-storeId="${ order.storeId }" data-order="${ order.orderId }"  class="change-to-delivering btn btn-outline-primary" value="배달완료" >
							</td>
							</c:if>
							<!-- 배달일때 버튼 -->
							
							<fmt:formatDate var="resultRegDt" value="${order.orderDate}" pattern="yyyy-MM-dd"/>
							<td><span>${ resultRegDt }</span></td>	
							<td>
								<table class="table">
								<tbody>
								<c:forEach var="orderDetail" items="${ order.orderDetailDtos }">
									<tr>
									<td><span><c:out value=" ${ orderDetail.productDto.prodName }"></c:out></span></td>
									<td><span>${ orderDetail.amount }</span></td>
									</tr>
								</c:forEach>
								</tbody>
								</table>
							</td>
							<td><span>${ order.address }</span></td>
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
    <!-- container-scroller -->
	<!-- Common-js -->
	<jsp:include page="/WEB-INF/views/admin-modules/admin-common-js.jsp"></jsp:include>
    <!-- End custom js for this page -->
    
    	<script src="https://code.jquery.com/jquery-3.6.1.js"></script>
	<script type="text/javascript">
		$(".StoreName1").on("change", function() {
			var storeId = $(this).val();
			var storeName = $(this).attr("data-storeName");
			
			$("#StoreId11").val(storeId);	
			$(".STORENAME").attr("data-storeName", storeName);
			
			
			
			
		});		

		$(".btnForShowAndHide").on('click', function() {
			
			
			$(".showAndHideOrderDetails").show();
			
			
		});
		
		$(function() {
			
			$('#SelectStore').on('click', function(event) {
				
				if($('#StoreId11').val()=="") {
					alert("지점을 선택해 주세요");
					return false;
				};
				
				
			});
			
			$('.change-to-delivering').on('click', function(event) {
				
				var orderId = $(this).attr('data-order');
				var storeId = $(this).attr('data-storeId');
				
				alert(orderId)
				alert(storeId)
				location.href = orderId + '/changeToDeilvering?storeName1=' + storeId  + '&storeId=' + storeId;
				
			});
			
			$('.change-to-delivering').on('click', function(event) {
				
				var orderId = $(this).attr('data-order');
				var storeId = $(this).attr('data-storeId');
				
				alert(orderId)
				alert(storeId)
				location.href = orderId + '/changeToDeilvery?storeName1=' + storeId  + '&storeId=' + storeId;
				
			});
			
			$('.change-to-get-prod').on('click', function(event) {
				
				var orderId = $(this).attr('data-order');
				var storeId = $(this).attr('data-storeId');
				
				alert(orderId)
				alert(storeId)
				location.href = orderId + '/changeToGetProd?storeName1=' + storeId  + '&storeId=' + storeId;
				
			});
		});

		
		
		
		
		
		
	</script>
</body>
</html>










