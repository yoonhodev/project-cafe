<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<!DOCTYPE html>
<html class="no-js" lang="en">

<!-- belle/short-description.html   11 Nov 2019 12:43:10 GMT -->
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="x-ua-compatible" content="ie=edge">
<title>지점 소개 추가</title>
<meta name="description" content="description">
<meta name="viewport" content="width=device-width, initial-scale=1">

<!-- Common-css -->
<jsp:include page="/WEB-INF/views/modules/common-css.jsp"></jsp:include>

</head>
<body class="template-product belle">
	<div class="pageWrapper">
       
		<!-- Top Header --> <!-- Header --> <!-- Mobile Menu -->
		<jsp:include page="/WEB-INF/views/modules/header.jsp"></jsp:include>
		<!-- ./Top Header --> <!-- ./Header --> <!-- ./Mobile Menu -->
        
        <!--Body Content-->
        <div id="page-content">
            <!--MainContent-->
            <div id="MainContent" class="main-content" role="main">
                
                <div id="ProductSection-product-template" class="product-template__container prstyle1 container">
        

                    <!--Product Tabs-->
                    <div class="tabs-listing">
                    <br><br><br><br><br>
                        <ul class="product-tabs">
                            
                            <li rel="tab2"><a class="tablink">고정 지출 입력</a></li>
                            
                        </ul>
                        <div class="tab-container">
                            
                            
                            <div id="tab2" class="tab-content">
                                <div id="shopify-product-reviews">
                                    <div class="spr-container">
                                        <div class="spr-header clearfix">
                                            <div class="spr-summary">
                                                
                                                <p>이곳에 고정 지출 내역을 입력해주세요</p>
                                            </div>
                                        </div>
                                        <div class="spr-content">
                                            <div class="spr-form clearfix">
                                                <form method="post" action="#" id="new-review-form" class="new-review-form">
                                                    <h3 class="spr-form-title">고정 지출 입력</h3>
                                                    <fieldset class="spr-form-contact">
<!--                                                     	<div class="spr-form-contact-name"> -->
<!--                                                           <label class="spr-form-label" for="review_author_10508262282">월</label> -->
<!--                                                           <input class="spr-form-input spr-form-input-text " id="review_author_10508262282" type="date" name="month" placeholder="월을 입력해주세요"> -->
<!--                                                         </div> -->
                                                        <div class="spr-form-contact-name">
                                                          <label class="spr-form-label" for="review_author_10508262282">임대료</label>
                                                          <input class="spr-form-input spr-form-input-text " id="review_author_10508262282" type="text" name="monthPay" placeholder="임대료 입력해주세요">
                                                        </div>
                                                        <div class="spr-form-contact-email">
                                                          <label class="spr-form-label" for="review_email_10508262282">관리비</label>
                                                          <input class="spr-form-input spr-form-input-email " id="review_email_10508262282" type="text" name="managePay" value="" placeholder="관리비 입력해주세요">
                                                        </div>
                                                        <div class="spr-form-contact-name">
                                                          <label class="spr-form-label" for="review_author_10508262282">전기료</label>
                                                          <input class="spr-form-input spr-form-input-text " id="review_author_10508262282" type="text" name="elecPay" value="" placeholder="전기료 입력해주세요">
                                                        </div>
                                                    </fieldset>
                                                    <fieldset class="spr-form-review">
                                               	
                                                      
                                                
                                           			 <div class="spr-form-contact-name">
                                                          <label class="spr-form-label" for="review_author_10508262282">광고홍보비</label>
                                                          <input class="spr-form-input spr-form-input-text " id="review_author_10508262282" type="text" name="adPay" value="" placeholder="광고홍보비 입력해주세요">
                                                     </div>
                                                	
                                                	<div class="spr-form-contact-name">
                                                          <label class="spr-form-label" for="review_author_10508262282">수도인터넷</label>
                                                          <input class="spr-form-input spr-form-input-text " id="review_author_10508262282" type="text" name="waterInternetPay" value="" placeholder="수도인터넷 입력해주세요">
                                                     </div>
                                                     <div class="spr-form-contact-name">
                                                          <label class="spr-form-label" for="review_author_10508262282">배달대행</label>
                                                          <input class="spr-form-input spr-form-input-text " id="review_author_10508262282" type="text" name="deliPay" value="" placeholder="배달대행 입력해주세요">
                                                     </div>
                                                     
                                                    </fieldset>
                                                    <fieldset class="spr-form-actions">
                                                        <input type="submit" class="spr-button spr-button-primary button button-primary btn btn-primary" value="고정 지출 추가" />
                                                    </fieldset>
                                                </form>
                                            </div>
                                           
                                        </div>
                                        </div>
                                    </div>
                                </div>                                                      
                        </div>
                    </div>
<!--                 Spend table     -->
                    <div class="container">
				<div class="row">
					
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
                    <!--End Product Tabs-->
                    

                    

                    </div>
                <!--#ProductSection-product-template-->
            </div>
            <!--MainContent-->
        </div>
    	<!--End Body Content-->
    	
		<!-- Footer -->
		<jsp:include page="/WEB-INF/views/modules/footer.jsp"></jsp:include>
		<!-- ./Footer -->    

    <!--Scoll Top-->
    <span id="site-scroll"><i class="icon anm anm-angle-up-r"></i></span>
    <!--End Scoll Top-->
    
	<!-- Common-js -->
		<jsp:include page="/WEB-INF/views/modules/common-js.jsp"></jsp:include>
    
    	
    
    </div>

	
</body>

<!-- belle/short-description.html   11 Nov 2019 12:43:10 GMT -->
</html>