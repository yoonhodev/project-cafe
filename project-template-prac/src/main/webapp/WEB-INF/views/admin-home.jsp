<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>


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
        <!-- partial:partials/_sidebar.html -->
        <jsp:include page="/WEB-INF/views/admin-modules/sidebar.jsp"></jsp:include>
        <!-- partial -->
        <div class="main-panel">
          <div class="content-wrapper">
            <div class="row">
              <div class="col-md-12">
                <div class="d-sm-flex justify-content-between align-items-center transaparent-tab-border {">
                  <ul class="nav nav-tabs tab-transparent" role="tablist">
                    <li class="nav-item">
                      <a class="nav-link active" id="business-tab" data-toggle="tab" href="#business-1" role="tab" aria-selected="false">Green Coffee</a>
                  </ul>                  
                </div>
                <div class="tab-content tab-transparent-content">
                  <div class="tab-pane fade show active" id="business-1" role="tabpanel" aria-labelledby="business-tab">
                    <div class="row">
                      <div class="col-xl-3 col-lg-6 col-sm-6 grid-margin stretch-card">
                        <div class="card">
                          <div class="card-body text-center">
                         <br>
                            <h2 class="mb-4 text-dark font-weight-bold">고정 지출</h2>
                            <br><br><br><br>
                            <a href="fixedSpend"><i style="font-size: 100px; color: green" class="mdi mdi-cash-multiple menu-icon icon-md absolute-center"></i></a>
                            <br><br><br>
                          </div>
                        </div>
                      </div>
                      <div class="col-xl-3 col-lg-6 col-sm-6 grid-margin stretch-card">
                        <div class="card">
                          <div class="card-body text-center">         
                         <br>         
                            <h2 class="mb-4 text-dark font-weight-bold">직원 관리</h2>
                            <br><br><br><br>
                            <a href="workerInfo"><i style="font-size: 100px; color: green" class="mdi mdi-contacts menu-icon icon-md absolute-center"></i></a>
                            <br><br><br>
                          </div>
                        </div>
                      </div>
                      <div class="col-xl-3  col-lg-6 col-sm-6 grid-margin stretch-card">
                        <div class="card">
                          <div class="card-body text-center">
                          <br>
                            <h2 class="mb-4 text-dark font-weight-bold">주문 관리</h2>
                            <br><br><br><br>
                            <a href="raw-order"><i style="font-size: 100px; color: green" class="mdi mdi-cart menu-icon icon-md absolute-center"></i></a>
                            <br><br><br>
                          </div>
                        </div>
                      </div>                      
                      <div class="col-xl-3 col-lg-6 col-sm-6 grid-margin stretch-card">
                        <div class="card">
                          <div class="card-body text-center">
                          <br>
                            <h2 class="mb-4 text-dark font-weight-bold">유저 관리</h2>
                            <br><br><br><br>
                            <a href="accountControl"><i  style="font-size: 100px; color: green" class="mdi mdi-table-large menu-icon icon-md absolute-center "></i></a>
                           <br><br><br>
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
  </body>
</html>
