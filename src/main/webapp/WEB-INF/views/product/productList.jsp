<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<jsp:include page="../include/header.jsp" />
<jsp:include page="../include/productmenu.jsp" />
<section class="topProductSection">
	<div id="columns" align="center">
		<c:forEach items="${productList}" var="dto">
			<figure>
				<a href="productInformation?product_id=${dto.product_id }"><img src="${dto.imgpath}"></a>
				<figcaption>
				${dto.title }<br>
				${dto.price }원
				</figcaption>
			</figure>
		</c:forEach>
	</div>
</section>
<jsp:include page="../include/footer.jsp" />