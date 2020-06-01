<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<jsp:include page="../include/header.jsp" />
<section class="cartSection">
	<div align="center">
		<table border="1">
			<tr>
				<th>상품선택</th>
				<th>상품명</th>
				<th>수량</th>
				<th>가격</th>
			</tr>
		 	<tr>
				<td><a>dd</a></td>
				<td><a>${cart.title }</a></td>
				<td><a>${cart1}</a></td>
				<td><a>${cart.price }</a></td>
			</tr>
		</table>
	</div>
</section>
<jsp:include page="../include/footer.jsp" />