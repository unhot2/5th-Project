<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<jsp:include page="include/header.jsp" />
<%-- <c:remove var="userId"/>
<c:remove var="userMaster"/> --%>
<section class="indexSection">
	<h1>INDEX 영역</h1>
	<table border="1">
		<tr>
			<th colspan="2">카카오로 들어온 값</th>
		</tr>
		<tr><td>id</td><td>${kakaoDTO.userId}</td></tr>
		<tr><td>name</td><td>${kakaoDTO.userName}</td></tr>
		<tr><td>gender</td><td>${kakaoDTO.userGender }</td></tr>
		<tr><td>email</td><td>${kakaoDTO.userEmail }</td></tr>
	</table>

</section>
<jsp:include page="include/footer.jsp" />