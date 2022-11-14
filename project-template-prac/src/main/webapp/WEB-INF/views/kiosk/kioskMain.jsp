<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>

<html lang="kr">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>Connect Plus</title>
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
                    <li class="nav-item" style="width:250px; font-size: 30px">
                      <a class="nav-link" id="coffe-tab" data-toggle="tab" href="#" role="tab" aria-selected="true">COFFE</a>
                    </li>
                    <li class="nav-item" style="width:250px; font-size: 30px">
                      <a class="nav-link active" id="non coffe-tab" data-toggle="tab" href="#" role="tab" aria-selected="false">NON COFFE</a>
                    </li>
                    <li class="nav-item" style="width:250px; font-size: 30px">
                      <a class="nav-link" id="juice/ade-tab" data-toggle="tab" href="#" role="tab" aria-selected="false">JUICE/ADE</a>
                    </li>
                    <li class="nav-item" style="width:250px; font-size: 30px">
                      <a class="nav-link" id="tea-tab" data-toggle="tab" href="#" role="tab" aria-selected="false">TEA</a>
                    </li>
                  </ul>
                  <div class="d-md-block d-none">
                    <a href="#" class="text-light p-1"><i class="mdi mdi-view-dashboard"></i></a>
                    <a href="#" class="text-light p-1"><i class="mdi mdi-dots-vertical"></i></a>
                  </div>
                </div>
                <div class="tab-content tab-transparent-content">
                  <div class="tab-pane fade show active" id="coffe-tab" role="tabpanel" aria-labelledby="business-tab">
                    <div class="row">
                      <div class="col-xl-3 col-lg-6 col-sm-6 grid-margin stretch-card">
                        <div class="card">
                          <div class="card-body text-center">
                            <h5 class="mb-2 text-dark font-weight-normal">Orders</h5>
                            <h2 class="mb-4 text-dark font-weight-bold">932.00</h2>
                            <div class="dashboard-progress dashboard-progress-1 d-flex align-items-center justify-content-center item-parent"><i class="mdi mdi-lightbulb icon-md absolute-center text-dark"></i></div>
                            <p class="mt-4 mb-0">Completed</p>
                            <h3 class="mb-0 font-weight-bold mt-2 text-dark">5443</h3>
                          </div>
                        </div>
                      </div>
                      <div class="col-xl-3 col-lg-6 col-sm-6 grid-margin stretch-card">
                        <div class="card">
                          <div class="card-body text-center">
                            <h5 class="mb-2 text-dark font-weight-normal">Unique Visitors</h5>
                            <h2 class="mb-4 text-dark font-weight-bold">756,00</h2>
                            <div class="dashboard-progress dashboard-progress-2 d-flex align-items-center justify-content-center item-parent"><i class="mdi mdi-account-circle icon-md absolute-center text-dark"></i></div>
                            <p class="mt-4 mb-0">Increased since yesterday</p>
                            <h3 class="mb-0 font-weight-bold mt-2 text-dark">50%</h3>
                          </div>
                        </div>
                      </div>
                      <div class="col-xl-3  col-lg-6 col-sm-6 grid-margin stretch-card">
                        <div class="card">
                          <div class="card-body text-center">
                            <h5 class="mb-2 text-dark font-weight-normal">Impressions</h5>
                            <h2 class="mb-4 text-dark font-weight-bold">100,38</h2>
                            <div class="dashboard-progress dashboard-progress-3 d-flex align-items-center justify-content-center item-parent"><i class="mdi mdi-eye icon-md absolute-center text-dark"></i></div>
                            <p class="mt-4 mb-0">Increased since yesterday</p>
                            <h3 class="mb-0 font-weight-bold mt-2 text-dark">35%</h3>
                          </div>
                        </div>
                      </div>
                      <div class="col-xl-3 col-lg-6 col-sm-6 grid-margin stretch-card">
                        <div class="card">
                          <div class="card-body text-center">
                            <h5 class="mb-2 text-dark font-weight-normal">Followers</h5>
                            <h2 class="mb-4 text-dark font-weight-bold">4250k</h2>
                            <div class="dashboard-progress dashboard-progress-4 d-flex align-items-center justify-content-center item-parent"><i class="mdi mdi-cube icon-md absolute-center text-dark"></i></div>
                            <p class="mt-4 mb-0">Decreased since yesterday</p>
                            <h3 class="mb-0 font-weight-bold mt-2 text-dark">25%</h3>
                          </div>
                        </div>
                      </div>
                      <div class="col-xl-3 col-lg-6 col-sm-6 grid-margin stretch-card">
                        <div class="card">
                          <div class="card-body text-center">
                            <h5 class="mb-2 text-dark font-weight-normal">Followers</h5>
                            <h2 class="mb-4 text-dark font-weight-bold">4250k</h2>
                            <div class="dashboard-progress dashboard-progress-4 d-flex align-items-center justify-content-center item-parent"><i class="mdi mdi-cube icon-md absolute-center text-dark"></i></div>
                            <p class="mt-4 mb-0">Decreased since yesterday</p>
                            <h3 class="mb-0 font-weight-bold mt-2 text-dark">25%</h3>
                          </div>
                        </div>
                      </div>
                      <div class="col-xl-3 col-lg-6 col-sm-6 grid-margin stretch-card">
                        <div class="card">
                          <div class="card-body text-center">
                            <h5 class="mb-2 text-dark font-weight-normal">Followers</h5>
                            <h2 class="mb-4 text-dark font-weight-bold">4250k</h2>
                            <div class="dashboard-progress dashboard-progress-4 d-flex align-items-center justify-content-center item-parent"><i class="mdi mdi-cube icon-md absolute-center text-dark"></i></div>
                            <p class="mt-4 mb-0">Decreased since yesterday</p>
                            <h3 class="mb-0 font-weight-bold mt-2 text-dark">25%</h3>
                          </div>
                        </div>
                      </div>
                    </div>
                    <div class="row" >
                      <div class="col-12 grid-margin" >
                        <div class="card" style="height:100px;">
                          <div class="card-body">
                                  <h4 class="card-title mb-0">Recent Activity</h4>
                                  <div class="dropdown dropdown-arrow-none">
                                    <button class="btn p-0 text-dark dropdown-toggle" type="button" id="dropdownMenuIconButton1" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                      <i class="mdi mdi-dots-vertical"></i>
                                    </button>
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
            </div>
          </div>
          <!-- content-wrapper ends -->
          <!-- partial:partials/_footer.html -->
          
          <!-- partial -->
        </div>
        <!-- main-panel ends -->
     
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