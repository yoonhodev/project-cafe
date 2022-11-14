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
                <div class="d-sm-flex justify-content-between align-items-center transaparent-tab-border {">
                  <ul class="nav nav-tabs tab-transparent" role="tablist">
                    <li class="nav-item" data-name="hot-tab" style="width:250px; font-size: 30px">
                      <a class="nav-link active" data-toggle="tab" role="tab">HOT</a>
                    </li>
                    <li class="nav-item" data-name="ice-tab" style="width:250px; font-size: 30px">
                      <a class="nav-link" data-toggle="tab" role="tab">ICE</a>
                    </li>
<!--                     <li class="nav-item" style="width:250px; font-size: 30px"> -->
<!--                       <a class="nav-link" id="juice/ade-tab" data-toggle="tab" href="#" role="tab" aria-selected="false">JUICE/ADE</a> -->
<!--                     </li> -->
<!--                     <li class="nav-item" style="width:250px; font-size: 30px"> -->
<!--                       <a class="nav-link" id="tea-tab" data-toggle="tab" href="#" role="tab" aria-selected="false">TEA</a> -->
<!--                     </li> -->
                  </ul>
              
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
                  	
                    <div class="row">
                     <c:forEach var="product2" items="${ productViews2 }">
                      <div class="col-xl-3 col-lg-6 col-sm-6 grid-margin stretch-card"  style="height:300px">
                        <div class="card">
                        <img src="${ product2.prodImg }" width="250px" alt="image" title="product" style="margin:auto">
                          <div class="card-body text-center">
                           	
                            <h3 style="color:black">${ product2.prodName }</h3>
                            <h3 style="color:black">₩ ${ product2.prodPrice }</h3>
                          </div>
                        </div>
                      </div>
                       </c:forEach> 
                     </div>
                    </div>
                      <div class="row" >
                      <div class="col-12 grid-margin" >
                        <div class="card" style="height:100px; width:1100px;">
                         
                                  
                                  <button type="button" class="btn btn-primary" style="width: 100px; height:100px; margin-left:1000px; font-size: 25px;" > 결제하기</button>
                                 
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