<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<jsp:include page="../include/header.jsp" />

	
	<div id="columns" align="center">
	<c:forEach items="${toplist}" var="dto">
		<figure>
			<img src="${dto.imgpath}">
			<figcaption>
				${dto.title }
				${dto.price }
			</figcaption>
		</figure>
	</c:forEach>
	</div>
	

<jsp:include page="../include/footer.jsp"/>