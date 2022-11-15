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
    <!-- plugins:css -->
   <jsp:include page="/WEB-INF/views/admin-modules/admin-common-css.jsp"></jsp:include>
  </head>
  <body>
    <div class="container-scroller">
      <!-- partial:partials/_navbar.html -->
     
      <div class="container-fluid page-body-wrapper">
        <!-- partial:partials/_sidebar.html -->
	  	<jsp:include page="/WEB-INF/views/admin-modules/sidebar.jsp"></jsp:include>

		<!-- partial -->
        <div class="main-panel" style="width:1200px;">
          <div class="content-wrapper">
            <div class="row" id="proBanner">
              <div class="col-12">
                  <img src="/project-template-prac/resources/assets/images/cafe-out-image-folder/kiosk-main-top.jpg" height="150px" width="1100px" alt="${attachment.savedFileName}">
              </div>
            </div>
          
            <div class="row">
              <div class="col-md-12">
                	<div class="text-center">
                		   <br>
                			<h1 style="color: black;">주문하신 내용이 맞나요?</h1>
                			<h2  style="color: gray;">결제 후 변경이나 취소가 어렵습니다.</h2>
                	</div>
                	
                
                <div class="tab-content tab-transparent-content">
                
                  <div class="tab-pane" id="hot-tab">
                   
                    <div class="row">
                     <c:forEach var="product" items="${ productViews }">
                      <div class="col-xl-3 col-lg-6 col-sm-6 grid-margin stretch-card"  style="height:300px">
                        <div class="card">
                        <img src="${ product.prodImg }" width="250px" alt="image" title="product" style="margin:auto">
                          <div class="card-body text-center">
                            <h3 style="color:black">${ product.prodName }</h3>
                            <h3 style="color:black">₩ ${ product.prodPrice }</h3>
                          </div>
                        </div>
                      </div>
                       </c:forEach> 
                       
                     </div>
                     </div>
                    <div class="tab-pane fade show active" id="ice-tab" role="tabpanel" aria-labelledby="business-tab">
                  	
                 
                    </div>
                      <div class="row" >
                      <div class="col-12 grid-margin" >
                        <div class="card" style="height:100px; width:1100px; display: inline-block;" >
                        	<table style="height:100px; width:1100px; border:1px solid black;" >
                        		<tr>
                        			<td style="border:1px solid black; width:800px;"> <button type="button" class="btn btn-dark btn-fw" style="width: 100px; height:100px; font-size: 25px;" >전체취소</button>            			</td>
                       		 		<td style="border:1px solid black"> <button type="button" id="kiosk-main-return" class="btn btn-outline-primary btn-fw" style="width: 100px; height:100px; font-size: 25px;" > 이전</button>            			</td>
                       			 	<td style="border:1px solid black"> <button type="button" class="btn btn-primary btn-fw" style="width: 100px; height:100px; font-size: 25px;" > 다음</button>            			</td>
                        	
                        		</tr>
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
          <!-- partial:partials/_footer.html -->
          
          <!-- partial -->
        
        <!-- main-panel ends -->
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
		
		$(function() {
			$('#kiosk-main-return').on('click', function(event) {
    			location.href = 'kioskMain';
			});
		});
	
// 		function numberWithCommas(x) {
// 		    return x.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",");
// 		}
		</script>
     
     
    <!-- container-scroller -->
    <!-- plugins:js -->
    <script src="resources/admin-assets/vendors/js/vendor.bundle.base.js"></script>
    <!-- endinject -->
    <!-- Plugin js for this page -->
    <script src="resources/admin-assets/vendors/chart.js/Chart.min.js"></script>
    <script src="resources/admin-assets/vendors/jquery-circle-progress/js/circle-progress.min.js"></script>
    <!-- End plugin js for this page -->
    <!-- inject:js -->
    <script src="resources/admin-assets/js/off-canvas.js"></script>
    <script src="resources/admin-assets/js/hoverable-collapse.js"></script>
    <script src="resources/admin-assets/js/misc.js"></script>
    <!-- endinject -->
    <!-- Custom js for this page -->
    <script src="resources/admin-assets/js/dashboard.js"></script>
    <!-- End custom js for this page -->
  </body>
</html>