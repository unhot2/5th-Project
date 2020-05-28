<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<script src='https://developers.kakao.com/sdk/js/kakao.min.js'></script>
<jsp:include page="include/header.jsp" />
<%-- <c:remove var="userId"/>
<c:remove var="userMaster"/> --%>
<section class="indexSection">
	<h1>INDEX 영역</h1>
	<c:choose>
		<c:when test="${userId !=null }">
			<h2>로그인 성공</h2>
			<h3>'${userId}'님 환영합니다</h3>
		</c:when>
	</c:choose>
</section>
<jsp:include page="include/footer.jsp" />