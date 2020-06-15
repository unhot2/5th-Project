<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<link rel="stylesheet" href="resources/css/bootstrap_basic.min.css">
<jsp:include page="../include/header.jsp" />
<section class="qnaDetailSection">
	<div class="container my-1" style="height: 65%; margin-top: 5%;">
		<div class="row">
			<table class="table">
				<thead>
					<tr class="table-active">
						<th scope="col" style="width: 30%"><font size="3"><b>글번호
									: ${qnaDetail.id}</b></font><br> <font size="3"><b>작성자 :
									${qnaDetail.name }</b></font></th>
						<th scope="col" style="width: 40%; text-align: center;"><font
							size="6"><b>${qnaDetail.title }</b></font></th>
						<th scope="col" style="width: 30%" class="text-right"><font
							size="3"><b>조회수 : ${qnaDetail.hit }</b></font><br> <font
							size="3"><b>작성일 : ${qnaDetail.savedate }</b></font></th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td colspan="3">
							<div>
								<pre>${qnaDetail.content }</pre>
							</div>
						</td>
					</tr>
				</tbody>
			</table>
			<table style="width: 100%">
				<c:choose>
					<c:when test="${userId == qnaDetail.name}">
						<tr>
							<td>
								<div align="right">
									<button class="btn btn-secondary mb-3" type="button"
										onclick="location.href='qnaUpdate?id=${qnaDetail.id }'">수정</button>
									<button class="btn btn-secondary mb-3" type="button"
										onclick="location.href='qnaDelete?id=${qnaDetail.id }'">삭제</button>
									<button type="button" class="btn btn-secondary mb-3"
										onclick="location.href='qnaList'">목록이동</button>
								</div>
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
					<div>
						<form
							action="qnaReplyWrite?userid=${userId }&idgroup=${qnaDetail.idgroup}&id=${qnaDetail.id}"
							method="post">
							<div style="margin-top: 10px; margin-bottom: 10px;">
								<div align="center"
									style="margin-top: 10px; margin-bottom: 10px;">
									<font size="4"><b>댓&nbsp;&nbsp;&nbsp;글</b></font>
								</div>
								<div style="width: 100%" align="center">
									<div style="float: left; width: 90%">
										<input class="form-control mt-4 mb-2" type="text"
											name="content" style="width: 100%;">
									</div>
									<div>
										<input class="btn btn-secondary mb-3" type="submit" value="작성"
											style="width: 5%; margin-left: 40px;">
									</div>
								</div>
							</div>
						</form>
					</div>
				</c:when>
			</c:choose>
			<span>&nbsp;</span>
			<table class="table table-hover">
				<tr>
					<th class="text-center">작성자</th>
					<th class="text-center">내용</th>
					<th class="text-center">작성일</th>
				</tr>
				<c:forEach var="reply" items="${qnaReplyList }">
					<tr>
						<td>${reply.userid }</td>
						<td>${reply.content }</td>
						<td><fmt:formatDate value="${reply.rdate}"
								pattern="yyyy.MM.dd:hh.mm" /></td>
					</tr>
				</c:forEach>
				<tr>
					<td class="text-center">${reply.userid }</td>
					<td class="text-center">${reply.content }</td>
					<td class="text-center"><fmt:formatDate value="${reply.rdate}"
							pattern="yyyy.MM.dd:hh.mm" /></td>
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
				<c:if test="${noticeDetail.id!=null}">
					<c:if test="${noticeDetail.id == login.userId}">
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
					</c:if>
				</c:if>
			</table>
	</div>
	</div>
</section>
<jsp:include page="../include/footer.jsp" />
