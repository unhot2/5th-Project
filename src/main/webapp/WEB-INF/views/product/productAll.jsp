<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<jsp:include page="../include/header.jsp" />
<jsp:include page="../include/productmenu.jsp" />
<script>
	$(document).ready(function(){
		$("#btnAdd").click(function(){
			location.href="${path}/sample/productWrite";
		});
		$("#btnEdit").click(function(){
			location.href="${path}/sample/productEdit";
		});
	});
</script>
<section class="ProductAllSection">
	<div id="columns" align="center">
	<c:if test="${userMaster == 0 && userId != null}">
		<button type="button" id="btnAdd">상품등록</button><br>
	</c:if>
		<c:forEach items="${list}" var="dto">
			<figure>
				<a href="productInformation?product_id=${dto.product_id }"><img src="${dto.imgpath}"></a>
				<figcaption>
					<a>${dto.title }</a>
					<a>${dto.price }</a>
					<a href="productEdit?product_id=${dto.product_id}">[상품편집]</a>
				</figcaption>
			</figure>
		</c:forEach>
	</div>
</section>
<jsp:include page="../include/footer.jsp" />