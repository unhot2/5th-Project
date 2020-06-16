<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<jsp:include page="../include/header.jsp" />
<section class="ProductResultSection">
<jsp:include page="../include/productmenu.jsp" />
<div>
<h1>" ${searchValue } " 의 검색 결과입니다.</h1>
</div>
	<div class="columns" align="center">
		<c:forEach items="${list}" var="dto">
			<figure>
				<img src="${dto.imgpath}" class="img">
				<figcaption>
					<a>${dto.title }</a>
					<a>${dto.price }</a>
				</figcaption>
			</figure>
		</c:forEach>
	</div>
</section>
<jsp:include page="../include/footer.jsp" />

