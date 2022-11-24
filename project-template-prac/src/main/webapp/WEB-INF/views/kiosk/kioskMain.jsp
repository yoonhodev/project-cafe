<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>

<html lang="kr">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>Green Coffee</title>
    <!-- plugins:css -->
   <jsp:include page="/WEB-INF/views/admin-modules/admin-common-css.jsp"></jsp:include>
  <style type="text/css">
  .wrap{padding:10px;}
  .btn_open{font-weight:bold; margin:5px; padding:4px 6px;}
  .pop_wrap{position:fixed; top:0; left:0; right:0; bottom:0; background:rgba(0,0,0,.5); font-size:0; text-align:center;}
  .pop_wrap:after{display:inline-block; height:100%; vertical-align:middle; content:'';}
  .pop_wrap .pop_inner{display:inline-block; padding:20px 30px; background:#fff; width:800px; vertical-align:middle; font-size:15px;}
  </style>
  
  </head>
  <body>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js"></script>
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
                  <img src="/project-template-prac/resources/assets/images/cafe-out-image-folder/kiosk-main-top.jpg" height="150px" width="1090px" alt="${attachment.savedFileName}">
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
                  </ul>
                </div>
                <div class="tab-content tab-transparent-content">
                  <div class="tab-pane" id="hot-tab">
                    <div class="row">
                     <c:forEach var="product" items="${ productViews }">
                      <div class="col-xl-3 col-lg-6 col-sm-6 grid-margin stretch-card"  style="height:300px">
                        <div class="card">
                        <form class="variants add addform order-popup" id="addform" action="update-kiosk-order" method="post">
	                        <a href="#pop_info_1" class="btn_open" style="color:white" type="button">
	                        <img src="${ product.prodImg }" width="250px" alt="image" title="product" style="margin:auto">
	                         </a>
                        </form>
                          <div class="text-center">
                            <h3 style="color:black">${ product.prodName }</h3>
                            <h3 style="color:black">₩ <fmt:formatNumber value="${ product.prodPrice }" pattern="#,###"/></h3>
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
                            <h3 style="color:black">₩ <fmt:formatNumber value="${ product2.prodPrice }" pattern="#,###"/></h3>
                          </div>
                        </div>
                      </div>
                       </c:forEach> 
                     </div>
                    </div>
                      <div class="row" >
                      <div class="col-12 grid-margin" >
                        <div class="card" style="height:100px; width:1100px;">
                     	   <table style="height:100px; width:1100px; border:1px solid black;" >
                        		<tr align="center">
                        			<td> 
                        				<button type="button" class="btn btn-outline-primary btn-fw" style="width: 100px; height:100px; font-size: 25px;" >상품사진1</button>        			
                        			</td>
                       		 		<td> 
                       		 			<button type="button" class="btn btn-outline-primary btn-fw" style="width: 100px; height:100px; font-size: 25px;" >상품사진2</button>        
                       		 		</td>
                       		 		<td> 
                       		 			<button type="button" class="btn btn-outline-primary btn-fw" style="width: 100px; height:100px; font-size: 25px;" >상품사진3</button>        
                       		 		</td>
                       		 		<td> 
                       		 			<button type="button" class="btn btn-outline-primary btn-fw" style="width: 100px; height:100px; font-size: 25px;" >상품사진4</button>        
                       		 		</td>
                       		 		
                       		 		<td> 
                       		 			<button type="button" class="btn btn-outline-primary btn-fw" style="width: 100px; height:100px; font-size: 25px; margin-left:50px;" > 결제예정금액</button>        
                       		 		</td>
                       		 		<td> 
                       		 			<button type="button" class="btn btn-outline-primary btn-fw" style="width: 100px; height:100px; font-size: 25px;" > 전체취소</button>        
                       		 		</td>
                       			 	<td>  
                       			 		<form method="post" action="kioskMainPay">	
                                  			<input type="submit" id="btn-kioskMain-pay" value="결 제" class="btn btn-primary btn-fw" style="width: 100px; height:100px; font-size: 25px;" >
                                  		</form>
                                  	</td>
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
 <!-- 팝업1 -->
<div id="pop_info_1" class="pop_wrap" style="display:none;">
  <div class="pop_inner" style="width:500px; height:500px;">
    <p class="dsc">제품 상세 페이지 입니다.</p>
    <button type="button" class="btn_close">닫기</button>
  </div>
</div>
	<!-- Common-js -->
	<jsp:include page="/WEB-INF/views/admin-modules/admin-common-js.jsp"></jsp:include>
    <script type="text/javascript">
		$(".tab-pane").hide();
		$(".tab-pane:first").show();
		/* if in tab mode */
		$(".nav-tabs li").on('click', function () {
			$(".tab-pane").hide();
			var activeTab = $(this).attr("data-name"); 
			$("#"+activeTab).fadeIn();
		});
		
		$('.update-kiosk-order').on('click', function(event) {
			var addform = $(this).parent(".addform").serialize();
		//    const formData = $('.addform').serialize(); //form 내부의 모든 입력 요소의 값을 전송가능한 문자열 형식으로 반환
		/* const formData = $('#addform').serializeArray(); */ //form 내부의 모든 입력 요소의 값을 전송가능한 객체 배열 형식으로 반환
			$.ajax({
				"url": "update-kiosk-order",
				"method": "post",
				"data": addform,
				"success": function(data, status, xhr) {
					},
				"error": function(xhr, status, err) {
					
					}
			});
		});
	
 var target = document.querySelectorAll('.btn_open');
 var btnPopClose = document.querySelectorAll('.pop_wrap .btn_close');
 var targetID;
  // 팝업 열기
  for(var i = 0; i < target.length; i++){
    target[i].addEventListener('click', function(){
      targetID = this.getAttribute('href');
      document.querySelector(targetID).style.display = 'block';
    });
  }
  
  // 팝업 닫기
  for(var j = 0; j < target.length; j++){
    btnPopClose[j].addEventListener('click', function(){
      this.parentNode.parentNode.style.display = 'none';
    });
  }
</script>
  </body>
</html>