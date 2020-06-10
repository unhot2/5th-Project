<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<jsp:include page="../include/header.jsp" />
<section class="noticeDetailSection">
	<div align="center">
	<h1>${noticeDetail.title}의 내용</h1>
	<table border="1" style="width: 60%; height: 100%;">
		<tr>
			<th style="width:5%; height: 10%;">글번호</th>
			<td style="width:5%; height: 10%;">${noticeDetail.id}</td>
			<th rowspan="2" style="width: 5%; height: 20px;">제목</th>
			<td rowspan="2" style="width: 50%; height: 20px;">${noticeDetail.title }</td>
			<th style="width:5%; height: 20px;">작성일</th>
			<td style="width:10%; height: 20px;">${noticeDetail.savedate }</td>
		</tr>
		<tr>
			<th style="width:5%; height: 20px;">작성자</th>
			<td style="width:5%; height: 20px;">${noticeDetail.name}</td>
			<th style="width:5%; height: 20px;">조회수</th>
			<td style="width:10%; height: 20px;">${noticeDetail.hit }</td>
		</tr>
		<tr>
			<th>내용</th>
			<td colspan="6" style="width:70%; height: 100%">${noticeDetail.content }</td>
		</tr>
		</table>
		<table style="width: 60%">
		<c:choose>
				<c:when test="${userId == noticeDetail.name}">
				<tr>
				<td colspan="6" style="float: right;">
					<button type="button"
						onclick="location.href='noticeUpdate?id=${noticeDetail.id}'">수정</button>
					<button type="button"
						onclick="location.href='noticeDelete?id=${noticeDetail.id }'">삭제</button>
				</td>
				</tr>
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
					<table border="1" style="width: 60%;">
						<tr>
							<th style="width: 5%">댓글</th>
							<td align="center">
							<div>
								<input type="text" name="content" style="width: 90%;">
								<input type="submit" value="작성" style="width: 8%;">
							</div>
							</td>
						</tr>
					</table>
				</form>
			</div>
		</c:when>
	</c:choose>
	<span>&nbsp;</span>
		<table border="1" style="width: 60%;">
			<tr>
				<th style="width: 10%;">작성자</th><th style="width: 80%;">내용</th><th style="width: 100%;">작성일</th>
			</tr>
	<c:forEach var="reply" items="${noticeReplyList  }">
			<tr>
				<td>${reply.userid }</td>
				<td>${reply.content }</td>
				<td><fmt:formatDate value="${reply.rdate}" pattern="yyyy.MM.dd:hh.mm"/></td>
			</tr>
	</c:forEach>
		</table>
		</div>
</section>
<jsp:include page="../include/footer.jsp" />
