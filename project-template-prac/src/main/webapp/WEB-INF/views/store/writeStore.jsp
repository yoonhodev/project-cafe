<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<!DOCTYPE html>
<html class="no-js" lang="en">

<!-- belle/short-description.html   11 Nov 2019 12:43:10 GMT -->
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="x-ua-compatible" content="ie=edge">
<title>GREEN CAFE - BRANCH OFFICE</title>
<meta name="description" content="description">
<meta name="viewport" content="width=device-width, initial-scale=1">

<!-- Common-css -->
<jsp:include page="/WEB-INF/views/modules/common-css.jsp"></jsp:include>
<style>


@font-face {
    font-family: 'neon';
    src: url('../fonts/TmonMonsori.ttf') format('truetype');
}
body {
	font-family: 'neon';
}
	
	.filebox1 .upload-name {
    display: inline-block;
    height: 40px;
    padding: 0 10px;
    vertical-align: middle;
    border: 1px solid #dddddd;
    width: 78%;
    color: #999999;
}
	
 	.filebox1 label { 
     display: inline-block; 
     padding: 10px 20px; 
     color: #fff; 
     vertical-align: middle; 
     background-color: #black; 
     cursor: pointer; 
     height: 40px;  
     margin-top: 8px;
 } 
	
.filebox1 input[type="file"] {
    position: absolute;
    width: 0;
    height: 0;
    padding: 0;
    overflow: hidden;
    border: 0;
}

</style>
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
                            
                            <li rel="tab2"><a class="tablink">지점 소개 추가</a></li>
                            
                        </ul>
                        <div class="tab-container">
                            
                            
                            <div id="tab2" class="tab-content">
                                <div id="shopify-product-reviews">
                                    <div class="spr-container">
                                        <div class="spr-header clearfix">
                                            <div class="spr-summary">
                                                
                                                <p>이곳에 새로 추가할 지점의 정보를 입력해 주세요</p>
                                            </div>
                                        </div>
                                        <div class="spr-content">
                                            <div class="spr-form clearfix">
                                                <form method="post" action="#" id="new-review-form" class="new-review-form" enctype="multipart/form-data">
                                                    <h3 class="spr-form-title">지점 소개 추가</h3>
                                                    <fieldset class="spr-form-contact">
                                                        <div class="spr-form-contact-name">
                                                          <label class="spr-form-label" for="review_author_10508262282">지점명</label>
                                                          <input class="spr-form-input spr-form-input-text " id="review_author_10508262282" type="text" name="storeName" value="" placeholder="지점명을 입력해주세요">
                                                        </div>
                                                        <div class="spr-form-contact-email">
                                                          <label class="spr-form-label" for="review_email_10508262282">지점 연락처</label>
                                                          <input class="spr-form-input spr-form-input-email " id="review_email_10508262282" type="text" name="storePhone" value="" placeholder="지점 연락처를 입력해주세요">
                                                        </div>
                                                        <div class="spr-form-contact-name">
                                                          <label class="spr-form-label" for="review_author_10508262282">지점 주소</label>
                                                          <input class="spr-form-input spr-form-input-text " id="review_author_10508262282" type="text" name="storeAddr" value="" placeholder="지점 주소를 입력해주세요">
                                                        </div>
                                                    </fieldset>
                                                    <fieldset class="spr-form-review">
                                                      <div class="spr-form-contact-name">
                                                        <label class="spr-form-label" for="review_title_10508262282" >지점 외관(사진)</label>
                                                        <br>
                                                        
                                                        
                                                        <div class="filebox1">
													    <input class="upload-name" value="첨부파일" placeholder="첨부파일">
													    <label for="file1" class="btn btn-primary" >파일찾기</label> 
													    <input style="" class="btn btn-primary upload-name" id="file1" type="file" name="attach" accept="image/png, image/gif, image/jpeg, image/jpg" value="파일 선택" >
														</div>
                                                      </div>
                                                
                                           			 <div class="spr-form-contact-name">
                                                          <label class="spr-form-label" for="review_author_10508262282">지점 영업시간</label>
                                                          <input class="spr-form-input spr-form-input-text " id="review_author_10508262282" type="text" name="storeSchedule" value="" placeholder="지점 영업시간을 입력해주세요">
                                                     </div>
                                                
                                                      <div class="spr-form-review-body">
                                                        <label class="spr-form-label" for="review_body_10508262282">지점 소개글 <span class="spr-form-review-body-charactersremaining"></span></label>
                                                        <div class="spr-form-input">
                                                          <textarea class="spr-form-input spr-form-input-textarea " id="review_body_10508262282" data-product-id="10508262282" name="storeIntroduce" rows="10" placeholder="지점 소개글을 적어주세요"></textarea>
                                                        </div>
                                                      </div>
                                                    </fieldset>
                                                    <fieldset class="spr-form-actions">
                                                        <input type="submit" class="spr-button spr-button-primary button button-primary btn btn-primary" id="upload_store_intro" value="소개 추가" />
                                                    </fieldset>
                                                </form>
                                            </div>
                                           
                                        </div>
                                        </div>
                                    </div>
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
    	<script type="text/javascript">
    	$("#file1").on('change',function(){
    		  var fileName = $("#file1").val();
    		  $(".upload-name").val(fileName);
    		});
    	</script>
    	
    
    </div>

	
</body>

<!-- belle/short-description.html   11 Nov 2019 12:43:10 GMT -->
</html>