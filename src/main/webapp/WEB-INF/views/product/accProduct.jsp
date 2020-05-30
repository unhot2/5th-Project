<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<jsp:include page="../include/header.jsp" />
<jsp:include page="../include/productmenu.jsp" />
<section class="accProductSection">
	<div id="columns" align="center">
		<c:forEach items="${acclist}" var="dto">
			<figure>
				<a href="productInformation"><img src="${dto.imgpath}"></a>
				<figcaption>${dto.title }${dto.price }</figcaption>
			</figure>
		</c:forEach>
	</div>
</section>
<jsp:include page="../include/footer.jsp" />