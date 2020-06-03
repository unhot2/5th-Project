<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<jsp:include page="../include/header.jsp" />
<section class="cartList">
	<script type="text/javascript" src="resources/jquery-3.4.1.min.js"></script>
	<script type="text/javascript">
		
	</script>
	<div align="center">
		<table border='1'>
			<tr>
				<th>상품명</th>
				<th>수량</th>
				<th>가격</th>
				<th>취소</th>
			</tr>
			<c:forEach var="cartList" items="${cartList }">
				<tr>
					<td>${cartList.title}</td>
					<td>
						<button type="button" onclick="cntDown('${cartList.cartId}')">-</button>
						${cartList.amount}
						<button type="button" onclick="cntUp('${cartList.cartId}')">+</button>
					</td>
					<td>${cartList.price}</td>
					<td><button type="button"
							onclick="location.href='cartDelete?cartId=${cartList.cartId}'">취소</button></td>
				</tr>
			</c:forEach>
			<tr>
				<th>상품금액</th>
				<td colspan="2">${totalPrice }원</td>
			</tr>
			<tr>
				<th>택배비</th>
				<td colspan="2">${fee }원</td>
			</tr>
			<tr>
				<th>총금액</th>
				<td colspan="2">${totalMoney }원</td>
			</tr>
			<tr>

				<td colspan="4">
					<button type="button" onclick="location.href='productAll'">쇼핑
						계속하기</button>
					<button type="button" onclick="location.href='cartDeleteAll?userId=${userId}}'">장바구니
						비우기</button>
					<button type="button" onclick="location.href='#'">전체 상품 주문</button>

				</td>
			</tr>
		</table>
	</div>
</section>
<jsp:include page="../include/footer.jsp" />