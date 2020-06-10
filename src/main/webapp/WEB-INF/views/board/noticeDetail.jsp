<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<jsp:include page="../include/header.jsp" />
<section class="noticeDetailSection">
	<div align="center">
		<h1>${noticeDetail.title}의내용</h1>
		<table border="1" style="width: 100%; height: 300px;"
			style="position: relative;">
			<tr>
				<th style="width: 30px; height: 20px;">글번호</th>
				<td style="width: 50px; height: 20px;">${noticeDetail.id}</td>
				<th rowspan="2" style="width: 30px; height: 20px;">제목</th>
				<td rowspan="2" style="width: 200px; height: 20px;">${noticeDetail.title }</td>
				<th style="width: 50px; height: 20px;">작성일</th>
				<td style="width: 50px; height: 20px;">${noticeDetail.savedate }</td>
			</tr>
			<tr>
				<th style="width: 50px; height: 20px;">작성자</th>
				<td style="width: 50px; height: 20px;">${noticeDetail.name}</td>
				<th style="width: 50px; height: 20px;">조회수</th>
				<td style="width: 50px; height: 20px;">${noticeDetail.hit }</td>
			</tr>
			<tr>
				<th>내용</th>
				<td colspan="6" style="height: 100%">${noticeDetail.content }</td>
			</tr>
			<tr>

			</tr>
			<c:choose>
				<c:when test="${userId == noticeDetail.name}">
					<div style="position: absolute; bottom: 150px; right: 8px;">
						<button type="button"
							onclick="location.href='noticeUpdate?id=${noticeDetail.id}'">수정</button>
						<button type="button"
							onclick="location.href='noticeDelete?id=${noticeDetail.id }'">삭제</button>
					</div>
				</c:when>
				<c:otherwise>

				</c:otherwise>
			</c:choose>
		</table>
		<c:choose>
			<c:when test="${userId ne null }">
				<h3>&nbsp;</h3>
				<hr>
				<div class="replyBoard">
					<form
						action="noticeReplyWrite?userid=${userId }&idgroup=${noticeDetail.idgroup}&id=${noticeDetail.id}"
						method="post">
						<table border="1" style="width: 100%">
							<tr>
								<th>댓글</th>
								<td><input type="text" name="content" size="171px">
									<input type="submit" value="작성"></td>
							</tr>
						</table>

					</form>
				</div>
			</c:when>
		</c:choose>
		<span>&nbsp;</span>
		<table border="1" style="width: 100%;">
			<tr>
				<th style="width: 10%;">작성자</th>
				<th style="width: 80%;">내용</th>
				<th style="width: 100%;">작성일</th>
			</tr>
			<c:forEach var="reply" items="${noticeReplyList  }">
				<tr>
					<td>${reply.userid }</td>
					<td>${reply.content }</td>
					<td><fmt:formatDate value="${reply.rdate}"
							pattern="yyyy.MM.dd:hh.mm" /></td>
				</tr>
			</c:forEach>
		</table>
	</div>
</section>
<jsp:include page="../include/footer.jsp" />
