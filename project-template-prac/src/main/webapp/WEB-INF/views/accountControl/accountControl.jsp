<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<!DOCTYPE html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>Connect Plus</title>
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
              <h3 class="page-title"> 사용자 정보 </h3>
              <nav aria-label="breadcrumb">
                <ol class="breadcrumb">
                  <li class="breadcrumb-item"><a href="accountControl">사용자 정보</a></li>
                  <li class="breadcrumb-item active" aria-current="page">유저 정보</li>
                </ol>
              </nav>
            </div>
            <div class="row">
              <div class="col-lg-6 grid-margin stretch-card" >
                <div class="card" >
                  <div class="card-body" style="width:40cm ;background-color: white;">
                    <h4 class="card-title">유저 정보</h4> 
                    <form action="searchCustomerId" method="get" id="searchCustomer">
                    <h5>
                    <input style="height: 1cm" list="customerList" class="CustomerId" name="CustomerId" id="CustomerId" placeholder="유저 아이디 검색하기">
                    <datalist id="customerList">
                    	<c:forEach var="customer" items="${ customers1234 }" varStatus="status">
                    		<option value="${ customer.customerId }"></option>
                    	</c:forEach>                    
                    </datalist>
                    <input type="hidden" id="customerId" name="customerId">
                   <input type="submit" value="검색" id="searchCustomerId" class="search_customerId btn btn-info">                
                    </h5>       
                    </form> 
                    <table class="table table-hover">                    
                      <thead>
                        <tr align="center">
                          <th >유저 아이디</th>
                          <th>유저 연락처</th>
                          <th>E-mail</th>
                          <th>생년월일</th>
                          <th>성별</th>
                          <th>계정 생성일</th>
                          <th>계정 등급 변경</th>
                          <th>계정 등급</th>
                        </tr>
                      </thead>
                      <tbody>
<!--                       검색 했을때 나오는곳  -->
                     <c:forEach var="customer" items="${ selectCustomer }" varStatus="status">                      
                        <tr align="center">
                        <c:choose>
                        <c:when test="${ customer.deleted }">
                        <td colspan="8" style="color: gray;">[${ customer.customerId } 는 회원 탈퇴된 계정 입니다]</td>
                        </c:when>
                        <c:otherwise>
                          <td><span>${ customer.customerId }</span></td>
                          <td><span>${ customer.phone }</span></td>
                          <td><span>${ customer.email }</span></td>
                          <td><span>${ customer.birth }</span></td>
<!--                           성별 표시  -->
                          <c:choose>
                          <c:when test="${ customer.sex }">
                          <td>MALE</td>
                          </c:when>
                          <c:otherwise>
                          <td>FEMALE</td>
                          </c:otherwise>                      
                          </c:choose>
<!--                           -- -->
                          <td><span>${ customer.regDate }</span></td>
<!--                           관리자 변경 버튼 -->
						  <c:if test="${ customer.userType eq 'false'}">
						   <td><input type="button" value="관리자로 변경" id="changeAdmin-${customer.customerId}" class="change_to_admin btn btn-outline-primary btn-fw" data-customerId="${ customer.customerId }"/></td>
						  </c:if>
                          <c:if test="${ customer.userType eq 'true'}">
                          <td><input type="button" value="일반 유저로 변경" id="change-${ customer.customerId }" class="change_to_user btn btn-outline-dark btn-fw" data-customerId="${ customer.customerId }"/></td>
                          </c:if>
                          
<!--                           -- -->
                          
<!--                           관리자 표시 -->
                          <c:choose>
                          <c:when test="${ customer.userType }">
                          <td style="color: blue;"><b>관리자 계정</b></td>
                          </c:when>
                          <c:otherwise>
                          <td>사용자 계정</td>
                          </c:otherwise>
                          </c:choose>  
<!--                           --                         -->
						</c:otherwise>
						</c:choose>
                        </tr>                        
                        </c:forEach> 
<!--     ///////////////////////////////////////////////////////////////////////////////////////////////----- -->
                      <c:forEach var="customer" items="${ customers123 }" varStatus="status">                      
                        <tr align="center">
                        <c:choose>
                        <c:when test="${ customer.deleted }">
                        <td colspan="8" style="color: gray;">[${ customer.customerId } 는 회원 탈퇴된 계정 입니다]</td>
                        </c:when>
                        <c:otherwise>
                          <td><span>${ customer.customerId }</span></td>
                          <td><span>${ customer.phone }</span></td>
                          <td><span>${ customer.email }</span></td>
                          <td><span>${ customer.birth }</span></td>
<!--                           성별 표시  -->
                          <c:choose>
                          <c:when test="${ customer.sex }">
                          <td>MALE</td>
                          </c:when>
                          <c:otherwise>
                          <td>FEMALE</td>
                          </c:otherwise>                      
                          </c:choose>
<!--                           -- -->
                          <td><span>${ customer.regDate }</span></td>
<!--                           관리자 변경 버튼 -->
						  <c:if test="${ customer.userType eq 'false'}">
						   <td><input type="button" value="관리자로 변경" id="changeAdmin-${customer.customerId}" class="change_to_admin btn btn-outline-primary btn-fw" data-customerId="${ customer.customerId }"/></td>
						  </c:if>
                          <c:if test="${ customer.userType eq 'true'}">
                          <td><input type="button" value="일반 유저로 변경" id="change-${ customer.customerId }" class="change_to_user btn btn-outline-dark btn-fw" data-customerId="${ customer.customerId }"/></td>
                          </c:if>
                          
<!--                           -- -->
                          
<!--                           관리자 표시 -->
                          <c:choose>
                          <c:when test="${ customer.userType }">
                          <td style="color: blue;"><b>관리자 계정</b></td>
                          </c:when>
                          <c:otherwise>
                          <td>사용자 계정</td>
                          </c:otherwise>
                          </c:choose>  
<!--                           --                         -->
						</c:otherwise>
						</c:choose>
                        </tr>                        
                        </c:forEach>                       
                      </tbody>
                    </table>
                    <br>
                    <div style="text-align: center; background-color: white">
                          <span style="background-color: white">${ pager }</span>
					</div>                    
                  </div>
                </div>
              </div>
            </div>
          </div>
          <!-- content-wrapper ends -->
          <!-- partial:../../partials/_footer.html -->
         <jsp:include page="/WEB-INF/views/admin-modules/admin-footer.jsp"></jsp:include>
              </div>
            </div>
          </footer>
          <!-- partial -->
        </div>
        <!-- main-panel ends -->
      </div>
      <!-- page-body-wrapper ends -->
    </div>
    <!-- container-scroller -->
    <!-- Common-js -->
	<jsp:include page="/WEB-INF/views/admin-modules/admin-common-js.jsp"></jsp:include>
	<script type="text/javascript">
	
	$(".CustomerId").on("change", function() {
		
		var customerId = $(this).val();
		
		$("#customerId").val(customerId);
		
	});	
	
	$(function() {
	
		
	
		
		
		$(".change_to_admin").on('click', function(event) {
			
			var customerId = $(this).attr("data-customerId")
			
			
			location.href = customerId + '/changeAdmin';
			
			alert(customerId + "를 관리자 계정으로 변경 했습니다")
		});
		
		$(".change_to_user").on('click', function(event) {
			
			var customerId = $(this).attr("data-customerId")
			
			
			location.href = customerId + '/changeUser';
			
			alert(customerId + "를 일반 계정으로 변경 했습니다")
		});
		
		$('#searchCustomerId').on('click', function(event) {
			
			if($('#customerId').val()=="") {
				alert("검색할 아이디를 입력해 주세요");
				return false;
			}
							
		});	
		
	});
	
	
	
	
	</script>
	
  </body>
</html>































