<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<jsp:include page="../include/header.jsp" />
<jsp:include page="../include/productmenu.jsp" />
<section class="ProductAllSection">
	<div id="columns" align="center">
		<c:forEach items="${list}" var="dto">
			<figure>
				<a href="productInformation?product_id=${dto.product_id }"><img src="${dto.thimgpath}"></a>
				<figcaption>
					<a>${dto.title }</a>
					<a>${dto.price }</a>
				</figcaption>
			</figure>
		</c:forEach>
	</div>
</section>
<jsp:include page="../include/footer.jsp" />