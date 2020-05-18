<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<jsp:include page="../include/header.jsp" />
<section class="noticeDetailSection">
	<h1>회원정보</h1>
	<table border="2">
		<tr>
			<th>아이디</th>
			<td>${noticeDetail.id }</td>
		</tr>
		<tr>
			<th>이름</th>
			<td>${noticeDetail.name }</td>
		</tr>
		<tr>
			<th>제목</th>
			<td>${noticeDetail.title }</td>
		</tr>
		<tr>
			<th>내용</th>
			<td>${noticeDetail.content }</td>
		</tr>
		<tr>
			<th>작성시간</th>
			<td>${noticeDetail.savedate }</td>
		</tr>
		<tr>
			<th>조회수</th>
			<td>${noticeDetail.hit }</td>
		</tr>
		<tr>
			<td>
				<button type="button" onclick="location.href='noticeUpdate?id=${noticeDetail.id}'">글수정</button>
			</td>
			<td>
				<button type="button" onclick="location.href='noticeDelete?id=${noticeDetail.id }'">글삭제</button>
			</td>
		</tr>
	</table>
	<h3>댓글</h3>
	<hr>
	<div class="replyBoard">
	</div>
</section>
<jsp:include page="../include/footer.jsp" />