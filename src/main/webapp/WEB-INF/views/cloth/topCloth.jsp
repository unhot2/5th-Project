<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<jsp:include page="../include/header.jsp" />
<section class="loginSection">
	<div align="center">
		<table border="1">
			<tr>
				<th>상품 번호</th>
				<th>상품명</th>
				<th>상품 이미지</th>
				<th>상품 가격</th>
				<th>수량</th>
				<th>재고</th>
			</tr>
			<c:forEach var="dto" items="${clothlist }">
				<tr>
					<td>${dto.number }</td>
					<td>${dto.clothtitle }</td>
					<td><img src="${dto.clothimgpath }"></td>
					<td>${dto.clothprice }</td>
					<td>${dto.clothbuycount }</td> 
					<td>${dto.clothremain }</td>
				</tr>
			</c:forEach>
		</table>
	</div>
</section>
<jsp:include page="../include/footer.jsp" />