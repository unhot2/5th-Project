<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<jsp:include page="../include/header.jsp" />
<section class="qnaListSection">
	<div align="center">
		<font size="6"><b>QnA</b></font>
		<table border="1">
			<tr>
				<th>번호</th>
				<th>제목</th>
				<th>이름</th>
				<th>내용</th>
				<th>날짜</th>
				<th>조회수</th>
				<th>group</th>
				<th>step</th>
				<th>indent</th>
			</tr>
			<c:choose>
				<c:when test="${qnaList.size() != 0 }">
					<c:forEach items="${qnaList }" var="dto">
						<tr>
							<td>${dto.id }</td>
							<td><a href="qnaDetail?id=${dto.id }">${dto.title }</a></td>
							<td>${dto.name }</td>
							<td>${dto.content }</td>
							<td>${dto.savedate }</td>
							<td>${dto.hit }</td>
							<td>${dto.idgroup }</td>
							<td>${dto.step }</td>
							<td>${dto.indent }</td>
						</tr>
					</c:forEach>
				</c:when>
				<c:otherwise>
					<tr>
						<th colspan="9">등록된 정보가 없습니다</th>
					</tr>
				</c:otherwise>
			</c:choose>
			<tr>
				<td colspan="9" align="right"><c:choose>
						<c:when test="${start > 1}">
							<button type="button"
								onclick="location.href='qnaList?start=${start-1}'">이전</button>
						</c:when>
						<c:otherwise>
							<button type="button" disabled="disabled">이전</button>
						</c:otherwise>
					</c:choose> <c:forEach begin="1" end="${pc.totalPage }" step="1" var="cnt">
						<a href="qnaList?start=${cnt }">[${cnt }]</a>
					</c:forEach> <c:choose>
						<c:when test="${start < pc.totalPage }">
							<button type="button"
								onclick="location.href='qnaList?start=${start+1}'">다음</button>
						</c:when>
						<c:otherwise>
							<button type="button" disabled="disabled">다음</button>
						</c:otherwise>
					</c:choose>
					<form action="search" method="post" style="display: inline;">
						<input type="text" name="search" placeholder="검색"> <input
							type="submit" value="검색" />
					</form>
					<button type="button" onclick="location.href='qnaSave'">글작성</button></td>
			</tr>
		</table>
	</div>
</section>
<jsp:include page="../include/footer.jsp" />