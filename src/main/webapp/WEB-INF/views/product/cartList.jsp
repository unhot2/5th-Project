<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<jsp:include page="../include/header.jsp" />
<section class="cartList">
<table border='1'>
<tr><th>상품명</th><th>수량</th><th>가격</th></tr>
<c:forEach var="cartList" items="${cartList }">
<tr><td>${cartList.title}</td><td>${cartList.amount}</td><td>${cartList.price}</td></tr>
</c:forEach>
<tr><th>상품금액</th><td colspan="2">${totalPrice }원</td></tr>
<tr><th>택배비</th><td colspan="2">${fee }원</td></tr>
<tr><th>총금액</th><td colspan="2">${totalMoney }원</td></tr>
</table>
</section>
<jsp:include page="../include/footer.jsp" />