<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<jsp:include page="../include/header.jsp" />
<section class="noticeSection">
	<h1>공 지 사 항</h1>
	<table border="2">
		<tr>
			<th>아이디</th>
			<th>이름</th>
			<th>제목</th>
			<th>내용</th>
			<th>작성시간</th>
			<th>조회수</th>
		</tr>
		<c:forEach var="nt" items="${noticeList }">
			<tr>
				<td>${nt.id}</td>
				<td>${nt.name}</td>
				<td><a href="noticeDetail?id=${nt.id}">${nt.title}</a></td>
				<td>${nt.content}</td>
				<td>${nt.savedate}</td>
				<td>${nt.hit}</td>
			</tr>
		</c:forEach>
		<tr>
			<td colspan="6" align="right"><button type="button"
					onclick="location.href='noticeWriteForm'">글작성</button></td>
	</table>
</section>
<jsp:include page="../include/footer.jsp" />