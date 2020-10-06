<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet" integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN" crossorigin="anonymous">
<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<!DOCTYPE html>
<jsp:include page="../include/header.jsp" />
<section class="paySuccessSection">
	<div align="center">
		<h2>주문 / 결제</h2>
		<div>
			<table class="table table-striped" style="width:60%">
				<tr>
					<th colspan="6">주문이 정상적으로 완료되었습니다</th>
				</tr>
				<tr>
					<td>상품이미지</td>
					<td>주문 번호</td>
					<td>상품명</td>
					<td>수량</td>
					<td>가격</td>
					<td>총 금액</td>
				</tr>
				<c:forEach var="list" items="${paymentList }">
					<tr>
						<td><img src="${list.imgpath }"
							style="width: 100px; height: 100px;"></td>
						<td>${list.orderId }</td>
						<td>${list.title }</td>
						<td>${list.amount }</td>
						<td>${list.price }</td>
						<td>${list.totalprice }</td>
					</tr>
				</c:forEach>

			</table>
		</div>
	</div>
</section>
<jsp:include page="../include/footer.jsp" />
