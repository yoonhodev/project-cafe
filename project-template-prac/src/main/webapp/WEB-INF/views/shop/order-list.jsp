<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<form action="order" method="post">
	<table>
		<thead style="background-color:#efefef;">
			<tr>
				<th class="text-center">No</th>
				<th class="text-center">Product</th>
				<th class="text-center">Price</th>
				<th class="text-center">Quantity</th>
				<th class="text-center">Total</th>
				<th class="text-center"> </th>
			</tr>
		</thead>
		<tbody>
			<c:forEach var="product" items="${ products }" varStatus="status">
				<tr class="cart__row border-bottom border-top">
					<td class="cart-flex-item text-center">
						${ status.count }
					</td>
					<td class="cart__meta small--text-left cart-flex-item text-center">
						<div class="list-view-item__title">
							${ product.prodName }
						</div>
					</td>
					<td class="cart__price-wrapper cart-flex-item text-center">
						<span class="money" style="text-align: center;" id="prodPrice-${ product.prodId }">${ product.prodPrice }</span>
					</td>
					<td class="cart__update-wrapper cart-flex-item text-right">
						<div class="cart__qty text-center">
							<div class="qtyField" id="prodField">
								<a class="qtyBtn minus" data-productId="${ product.prodId }"><i class="icon icon-minus"></i></a>
								<input class="cart__qty-input qty" id="amount-${ product.prodId }" type="text" name="updates[]" id="qty" value="1" pattern="[0-9]*" disabled>
								<a class="qtyBtn plus" data-productId="${ product.prodId }"><i class="icon icon-plus"></i></a>
							</div>
						</div>
					</td>
					<td class="text-center small--hide">
						<div><span class="product-price-sum" style="text-align: center;" id="price-${ product.prodId }">${ product.prodPrice }</span></div>
					</td>
					<td class="text-center small--hide">
						<button type="button" data-prodId="${ product.prodId }" class="btn btn--secondary cart__remove delete-order" title="Remove tem">
							<i class="icon icon anm anm-times-l"></i>
						</button>
					</td>
				</tr>
			</c:forEach>
		</tbody>
		<tfoot>
			<tr>
				<td colspan="3" class="text-left" style="padding-top: 5px">
					<a href="shop" class="btn btn-secondary btn--small cart-continue">쇼핑 계속하기</a>
				</td>
				<td colspan="3" class="text-right" style="padding-top: 5px">
					<a href="#" class="btn btn-secondary btn--small cart-continue ml-2 delete-all-order">장바구니 전체 삭제</a>
				</td>
			</tr>
		</tfoot>
	</table>
</form>
