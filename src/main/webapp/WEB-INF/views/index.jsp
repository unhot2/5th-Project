<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<jsp:include page="include/header.jsp" />
<section class="indexSection">
	<div>
		<ul class="slideshow">
			<li><span></span></li>
			<li><span></span></li>
			<li><span></span></li>
			<li><span></span></li>
			<li><span></span></li>
		</ul>
	</div>
	<div class="columns" align="center">
		<c:forEach items="${list}" var="dto">
			<figure>
				<a href="productInformation?product_id=${dto.product_id }"> <img
					src="${dto.imgpath}" class="img">
				</a>
				<figcaption>
					${dto.title }<br>
					<hr>
					<fmt:formatNumber value="${dto.price }" pattern="##,###" />
					원
				</figcaption>
			</figure>
		</c:forEach>
	</div>
</section>
<jsp:include page="include/footer.jsp" />