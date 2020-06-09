<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<link rel="stylesheet" href="resources/css/cloth.css" />
<!DOCTYPE html>
<jsp:include page="../include/header.jsp" />
<jsp:include page="../include/productmenu.jsp" />
<section class="ProductAllSection">
	<div id="columns" align="center">
		
		<c:forEach items="${list}" var="dto">
			<figure>
				<a href="productInformation?product_id=${dto.product_id }">
					<img src="${dto.imgpath}">
				</a>
				<figcaption>
					${dto.title }<br><hr>
					<fmt:formatNumber value="${dto.price }" pattern="##,###" />원
					</figcaption>
				<button type="button" onclick="like">좋아요</button>
			</figure>
		</c:forEach>
	</div>
</section>
<jsp:include page="../include/footer.jsp" />