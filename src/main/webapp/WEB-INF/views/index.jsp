<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<link rel="stylesheet" href="resources/css/fadeout.css">
<script src='https://developers.kakao.com/sdk/js/kakao.min.js'></script>
<jsp:include page="include/header.jsp" />
<section class="indexSection">
	<c:choose>
		<c:when test="${userId !=null }">
			<h2>로그인 성공</h2>
			<h3>'${userId}'님 환영합니다</h3>
		</c:when>
	</c:choose>
</section>
<div>
<ul class="slideshow">
	<li><span></span></li>
  	<li><span></span></li>
	<li><span></span></li>
	<li><span></span></li>
	<li><span></span></li>
</ul>
</div>
<jsp:include page="include/footer.jsp" />