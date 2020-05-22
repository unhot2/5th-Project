<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<jsp:include page="../include/header.jsp" />
<section class="memberListSection">
	<div align="center">
		<h1>회 원 목 록(관리자)</h1>
		<table border="1">
			<tr>
				<th>아이디</th>
				<th>비밀번호</th>
				<th>이름</th>
				<th>나이</th>
				<th>주소</th>
				<th>성별</th>
				<th>생년월일</th>
				<th>이메일</th>
			</tr>
			<c:forEach var="mb" items="${memberList }">
				<tr>
					<td><a href="memberInfo?userId=${mb.userId }">${mb.userId }</a></td>
					<td>${mb.userPwd }</td>
					<td>${mb.userName }</td>
					<td>${mb.userAge }</td>
					<td>${mb.userAddr }</td>
					<td>${mb.userGender }</td>
					<td>${mb.userBirth }</td>
					<td>${mb.userEmail }</td>
				</tr>
			</c:forEach>
		</table>
	</div>
</section>
<jsp:include page="../include/footer.jsp" />