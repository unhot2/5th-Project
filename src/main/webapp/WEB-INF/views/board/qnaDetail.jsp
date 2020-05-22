<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<jsp:include page="../include/header.jsp" />
<section class="qnaDetailSection">
	<div align="center">
		<h1>회원정보</h1>
		<table border="1">
			<tr>
				<th>아이디</th>
				<td>${qnaDetail.id}</td>
			</tr>
			<tr>
				<th>이름</th>
				<td>${qnaDetail.name }</td>
			</tr>
			<tr>
				<th>제목</th>
				<td>${qnaDetail.title }</td>
			</tr>
			<tr>
				<th>내용</th>
				<td>${qnaDetail.content }</td>
			</tr>
			<tr>
				<th>작성시간</th>
				<td>${qnaDetail.savedate }</td>
			</tr>
			<tr>
				<th>조회수</th>
				<td>${qnaDetail.hit }</td>
			</tr>
			<tr>
				<td>
					<button type="button"
						onclick="location.href='qnaUpdate?id=${qnaDetail.id}'">글수정</button>
				</td>
				<td>
					<button type="button"
						onclick="location.href='qnaDelete?id=${qnaDetail.id }'">글삭제</button>
				</td>
			</tr>
		</table>
		<h3>댓글</h3>
		<hr>
		<div class="replyBoard"></div>
	</div>
</section>
<jsp:include page="../include/footer.jsp" />
