<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<div class="col-lg-12 grid-margin stretch-card" id="rawOrderList">
	<div class="card">
		<div class="card-body">
			<button type="button" class="btn btn-inverse-success">
				<i class="mdi mdi-check"></i> 전체 선택
			</button>
			<button type="button" class="btn btn-inverse-secondary">
				<i class="mdi mdi-cart-outline"></i> 장바구니 담기
			</button>
			<div style="height: 10px"></div>
			<table class="table table-striped" style="text-align: center">
				<thead>
					<tr>
						<th></th>
						<th>제품명</th>
						<th>제품상태</th>
						<th>단가</th>
						<th>수량</th>
						<th>총합</th>
						<th>장바구니</th>
					</tr>
				</thead>
				<tbody>
					<c:if test='${ rawOrders eq "[]" }'>
						<tr>
							<td colspan="7"> 조회된 상품이 없습니다. </td>
						</tr>
					</c:if>
					<c:forEach var="raw" items="${ rawOrders }">
						<tr>
							<td><input type="checkbox"></td>
							<td>${ raw.rawName }</td>
							<td>${ raw.rawTemp }</td>
							<td>${ raw.rawPrice }원</td>
							<td>
								<button type="button" class="btn btn-outline-secondary btn-sm">
									<i class="mdi mdi-minus"></i>
								</button> &nbsp;&nbsp;1&nbsp;&nbsp;
								<button type="button" class="btn btn-outline-secondary btn-sm">
									<i class="mdi mdi-plus"></i>
								</button>
							</td>
							<td><span id="price-${ raw.rawId }">${ raw.rawPrice }</span></td>
							<td>
								<button type="button" class="btn btn-outline-secondary btn-md">
									<i class="mdi mdi-cart-plus" style="font-size: 14pt"></i>
								</button>
							</td>
						</tr>
					</c:forEach>
				</tbody>
				<tfoot>
				</tfoot>
			</table>
		</div>
	</div>
</div>
