<%@page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html class="no-js" lang="ko">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="x-ua-compatible" content="ie=edge">
<title>Green Coffee</title>
<meta name="description" content="description">
<meta name="viewport" content="width=device-width, initial-scale=1">
	<!-- Common-css -->
	<jsp:include page="/WEB-INF/views/modules/common-css.jsp"></jsp:include>
</head>
<body class="page-template belle">
	<div class="pageWrapper">

		<!-- Header -->
		<jsp:include page="/WEB-INF/views/modules/header.jsp"></jsp:include>
		<!-- ./Header -->

		<!-- Body Content -->
		<div id="page-content">
			<!--Page Title-->
			<br> <br> <br> <br>
	    	<div class="page section-header text-center mb-0">
				<div class="page-title">
	        		<div class="wrapper"><h1 class="page-width">쿠폰함</h1></div>
	      		</div>
			</div>
	        <!--End Page Title-->
		    <div class="bredcrumbWrap">
	            <div class="container breadcrumbs">
	                <a href="index.html" title="Back to the home page">마이페이지</a>
	                <span aria-hidden="true">›</span><span>쿠폰함</span>
	            </div>
	        </div>
	        
	        
	        <div class="container">
				<div class="row">
					<p style="margin: 0 auto">
	        			<a href="newCoupon" class="btn btn-secondary btn--small">
	        				생일쿠폰생성<i class="fa fa-caret-right" aria-hidden="true"></i>
	        			</a>
	        		</p>
	        		<br> <br>
					<div class="col-12 col-sm-12 col-md-12 col-lg-12 main-col">
						<form action="order" method="post" class="cart style2">
							<table>
								<thead class="cart__row cart__header">
									<tr>
										<th class="text-center">번호</th>
										<th class="text-center">쿠폰이름</th>
										<th class="text-center">쿠폰내용</th>
										<th class="text-center">쿠폰발행일</th>
										<th class="text-center">쿠폰만료일</th>
										<th class="text-center">삭제</th>
									</tr>
								</thead>
								<tbody>
	                                <tr class="cart__row border-bottom line1 cart-flex border-top"
	                                	align="center">
	                                    <td>
	                                        <span>01</span>
	                                    </td>
	                                    <td>
	                                        <div class="list-view-item__title">
	                                            <span>생일 기념 쿠폰</span>
	                                        </div>
	                                    </td>
	                                    <td>
	                                        <span>2,000원 할인</span>
	                                    </td>
	                                    <td>
	                                        <span>2022.10.27</span>
	                                    </td>
	                                    <td>
	                                        <span>2022.12.31</span>
	                                    </td>
	                                    <td class="text-center small--hide">
	                                    	<a href="#" class="btn btn--secondary cart__remove"
	                                    	   title="Remove tem">
	                                    		<i class="icon icon anm anm-times-l"></i>
	                                    	</a>
	                                    </td>
	                                </tr>
                           		</tbody>
								<tfoot></tfoot>
							</table>
						</form>
					</div>
				</div>
			</div>
		</div>
		<!-- ./Body Content -->

		<!-- Footer -->
		<jsp:include page="/WEB-INF/views/modules/footer.jsp"></jsp:include>
		<!-- ./Footer -->

		<!-- Scoll Top -->
		<span id="site-scroll"><i class="icon anm anm-angle-up-r"></i></span>
		<!-- ./Scoll Top -->

		<!-- Common-js -->
		<jsp:include page="/WEB-INF/views/modules/common-js.jsp"></jsp:include>
	</div>
</body>
</html>
