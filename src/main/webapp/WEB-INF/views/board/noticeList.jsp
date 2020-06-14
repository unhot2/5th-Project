<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<jsp:include page="../include/header.jsp" />
<jsp:useBean id="dao" class="com.team.dao.BoardDAOImpl" />
<section class="noticeListSection">
	<div align="center">
		<h1>공 지 사 항</h1>
		<table border="1" style="width: 60%;text-align: center;">
			<tr>
				<th style="width: 5%">번호</th>
				<th style="width: 10%">작성자</th>
				<th style="width: 20%">제목</th>
				<th style="width: 40%">내용</th>
				<th style="width: 15%">작성일</th>
				<th style="width: 10%">조회수</th>
			</tr>
			<c:choose>
				<c:when test="${noticeList.size() !=0 }">
					<c:forEach var="nt" items="${noticeList }">
						<tr>
							<td>${nt.id}</td>
							<td><a href="noticeDetail?id=${nt.id}&idgroup=${nt.idgroup}">${nt.name}</a></td>
							<td>${nt.title}</td>
							<td>${nt.content}</td>
							<td>${nt.savedate}</td>
							<td>${nt.hit}</td>
						</tr>
					</c:forEach>
				</c:when>
				<c:otherwise>
					<tr>
						<th colspan="6">등록된 정보가 없습니다</th>
					</tr>
				</c:otherwise>
			</c:choose>
			<tr>
				<td colspan="6" align="right"><c:choose>
						<c:when test="${noticestart > 1}">
							<button type="button"
								onclick="location.href='noticeList?noticestart=${noticestart-1}'">이전</button>
						</c:when>
						<c:otherwise>
							<button type="button" disabled="disabled">이전</button>
						</c:otherwise>
					</c:choose> <c:forEach begin="1" end="${pc.totalPage }" step="1" var="cnt">
						<a href="noticeList?noticestart=${cnt }">[${cnt }]</a>
					</c:forEach> <c:choose>
						<c:when test="${noticestart < pc.totalPage }">
							<button type="button"
								onclick="location.href='noticeList?noticestart=${noticestart+1}'">다음</button>
						</c:when>
						<c:otherwise>
							<button type="button" disabled="disabled">다음</button>
						</c:otherwise>
					</c:choose>
					<form action="noticeSearch" method="post" style="display: inline;">
						<input type="text" name="noticeSearch" placeholder="검색"> <input
							type="submit" value="검색" />
					</form>
					<button type="button" onclick="location.href='noticeSave'">글작성</button></td>
		</table>
	</div>
</section>
<jsp:include page="../include/footer.jsp" />