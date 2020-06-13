<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<link rel="stylesheet" href="https://unpkg.com/swiper/css/swiper.min.css">
<!DOCTYPE html>
<jsp:include page="../include/header.jsp" />
<section class="productsubListSection">
<jsp:include page="../include/mainview.jsp" />
<jsp:include page="../include/productsubmenu.jsp" />
<div class="columns" align="center">
	<c:forEach items="${productsubList}" var="dto">
		<figure>
			<a href="productInformation?product_id=${dto.product_id }"> <img
				src="${dto.imgpath}" class="img">
			</a>
			<figcaption>
				${dto.title }<br>
				<hr>
				<fmt:formatNumber value="${dto.price }" pattern="##,###" />원
			</figcaption>
		</figure>
	</c:forEach>
</div>
</section>