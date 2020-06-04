<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<jsp:include page="../include/header.jsp" />
<section class="cartOrder">
	<div align="center">
	<h2>주문/결제</h2>
	<table border="1">
		<caption>주문리스트</caption>
		<tr>
			<td>제품</td>
			<td>수량</td>
			<td>가격</td>
		</tr>
		<c:forEach var="dto" items="${cartList}">
		<tr>
			<td>${dto.title }</td>
			<td>${dto.amount }</td>
			<td>${dto.price }</td>
		</tr>
		</c:forEach>
	</table>
	<table border="1">
		<caption>주문자 정보</caption>
		<tr>
			<td>이름</td>
			<td></td>
		</tr>
		<tr>
			<td>이메일</td>
			<td></td>
		</tr>
	</table>
	<table border="1">
		<caption>배송정보</caption>
		<tr>
			<td>이름</td>
			<td></td>
		</tr>
		<tr>
			<td>우편번호</td>
			<td></td>
		</tr>
		<tr>
			<td>주소</td>
			<td></td>
		</tr>
		<tr>
			<td>배송 메세지</td>
			<td></td>
		</tr>
	</table>
	<table border="1">
		<caption>주문상품 할인적용</caption>
		<tr>
			<td>상품 금액</td>
			<td>배송비</td>
			<td>결제 예정 금액</td>
		</tr>
		<tr>
			<td></td>
			<td></td>
			<td></td>
		</tr>
	</table>
	</div>
</section>
<jsp:include page="../include/footer.jsp" />
