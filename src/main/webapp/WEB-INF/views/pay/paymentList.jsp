<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<link rel="stylesheet" href="resources/css/paymentList.css">
<!DOCTYPE html>
<link
	href="//netdna.bootstrapcdn.com/twitter-bootstrap/2.3.2/css/bootstrap-combined.min.css"
	rel="stylesheet" id="bootstrap-css">
<script
	src="//netdna.bootstrapcdn.com/twitter-bootstrap/2.3.2/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<jsp:include page="../include/header.jsp" />
<section class="paymentList">
	<div class="container mb-4" align="center">
		<div class="row">
			<div class="col-12">
				<div class="table-responsive">
					<table class="table table-striped">
						<h2>구매내역</h2>
						<thead>
							<tr>
							<tr>
								<td>상품</td>
								<td>구매자</td>
								<td>상품명</td>
								<td>수량</td>
								<td>가격</td>
							</tr>
						</thead>
						<c:forEach var="list" items="${paymentList1 }">
							<tr>
								<td class="img"><img src="${list.imgpath }"></td>
								<td>${list.userId}</td>
								<td>${list.title}</td>
								<td>${list.amount }</td>
								<td>${list.price }</td>
							</tr>
						</c:forEach>
					</table>
					<div class="col-sm-12 col-md-6 text-right">
						<button class="btn_pay" onclick="location.href='index'">쇼핑계속하기</button>
					</div>
				</div>
			</div>
		</div>
	</div>
</section>
<jsp:include page="../include/footer.jsp" />
