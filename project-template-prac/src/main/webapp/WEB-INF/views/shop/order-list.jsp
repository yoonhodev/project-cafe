<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
		<form action="order" method="post" class="cart style2">
							<table>
								<thead class="cart__row cart__header">
									<tr>
										<th class="text-center">No</th>
										<th class="text-center">Product</th>
										<th class="text-center">Price</th>
										<th class="text-center">Quantity</th>
										<th class="text-right">Total</th>
										<th class="action">&nbsp;</th>
									</tr>
								</thead>
								<tbody>
								<c:forEach var="product" items="${ products }" varStatus="status">
								<c:set var="quantity" value="1" />
								<tr class="cart__row border-bottom line1 cart-flex border-top">
                                    <td class="cart__image-wrapper cart-flex-item text-center">
                                        <a href="#">${ status.count }</a>
                                    </td>
                                    <td class="cart__meta small--text-left cart-flex-item text-center">
                                        <div class="list-view-item__title">
                                            <a href="#">${ product.prodName }</a>
                                        </div>
                                    </td>
                                    <td class="cart__price-wrapper cart-flex-item">
                                        <span class="money" id="prodPrice-${ product.prodId }">${ product.prodPrice }</span>
                                    </td>
                                    <td class="cart__update-wrapper cart-flex-item text-right">
                                        <div class="cart__qty text-center">
                                            <div class="qtyField">
                                                <a class="qtyBtn minus" href="javascript:void(0);" data-productId="${ product.prodId }"><i class="icon icon-minus"></i></a>
                                                <input class="cart__qty-input qty" id="amount" type="text" name="updates[]" id="qty" value="1" pattern="[0-9]*" disabled>
                                                <a class="qtyBtn plus"  href="javascript:void(0);" data-productId="${ product.prodId }"><i class="icon icon-plus"></i></a>
                                            </div>
                                        </div>
                                    </td>
                                    <td class="text-right small--hide cart-price">
                                        <div><span class="product-price-sum productSpan" id="price-${ product.prodId }">${ product.prodPrice }</span></div>
                                    </td>
                                    <td class="text-center small--hide"><button type="button" data-prodId="${ product.prodId }" class="btn btn--secondary cart__remove delete-order" title="Remove tem"><i class="icon icon anm anm-times-l"></i></button></td>
                                </tr>
                                </c:forEach>
                           		</tbody>
								<tfoot>
									<tr>
										<td colspan="3" class="text-left"><a href="shop"
											class="btn btn-secondary btn--small cart-continue">쇼핑 계속하기</a></td>
										<td colspan="3" class="text-right">
											<a href="#" class="btn btn-secondary btn--small cart-continue ml-2 delete-all-order">장바구니 전체 삭제
												</a>
										</td>
									</tr>
								</tfoot>
							</table>
						</form>
			
<script type="text/javascript">
	
</script>