<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<link rel="stylesheet" href="resources/css/bootstrap.css">
<link rel="stylesheet" href="resources/css/custom.min.css">
<script src="resources/js/custom.js"></script>
<jsp:include page="../include/header.jsp" />
<section class="qnaListSection">
	<c:choose>
		<c:when test="${start == null}">
			<c:set var="start" value="1" />
		</c:when>
		<c:otherwise>
			<c:set var="start" value="${start }" />
		</c:otherwise>
	</c:choose>
	<hr>
	<div align="center">
		<h1>QnA</h1>
	</div>
	<div align="center">
		<table class="table table-hover" style="text-align: center;">
			<thead>
				<tr class="table-light">
					<th style="width: 5%">번호</th>
					<th style="width: 100px">제목</th>
					<th style="width: 10%">작성자</th>
					<th style="width: 42%">내용</th>
					<th style="width: 15%">작성일</th>
					<th style="width: 8%">조회수</th>
				</tr>
			</thead>
			<tbody>
				<c:choose>
					<c:when test="${qnaList.size() != 0 }">
						<c:forEach items="${qnaList }" var="dto">
							<tr>
								<td>${dto.id }</td>
								<td><a
									href="qnaDetail?id=${dto.id }&idgroup=${dto.idgroup}">${dto.title }</a></td>
								<td>${dto.name }</td>
								<td>${dto.content }</td>
								<td>${dto.savedate }</td>
								<td>${dto.hit }</td>
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
					<td colspan="9" align="right">
					<div style="float: left;">
					<ul class="pagination">
					<c:choose>
						<c:when test="${start > 1}">
							<li class="page-item"><a class="page-link"
								onclick="location.href='qnaList?start=${start-1}'">&laquo;</a>
							</li>
						</c:when>
						<c:otherwise>
							<li class="page-item diabled"><a class="page-link"
								onclick="location.href='qnaList?start=${start-1}'">&laquo;</a>
							</li>
						</c:otherwise>
					</c:choose> 
					
					<c:forEach begin="1" end="${pc.totalPage }" step="1" var="cnt">
						<li class="page-item"><a class="page-link"
							href="qnaList?start=${cnt }">${cnt }</a></li>
					</c:forEach> 
					
					<c:choose>
						<c:when test="${start < pc.totalPage }">
							<li class="page-item"><a class="page-link"
								onclick="location.href='qnaList?start=${start+1}'">&raquo;</a>
							</li>
						</c:when>
						<c:otherwise>
							<li class="page-item disabled"><a class="page-link"
								onclick="location.href='qnaList?start=${start+1}'">&raquo;</a>
							</li>
						</c:otherwise>
					</c:choose>
					</ul>
					</div>
					<div>
					<form class="form-inline my-2 my-lg-0" action="qnaSearch" method="post" style="display: inline;">
						<input class="form-control mr-sm-2" type="text" name="qnaSearch" placeholder="검색"> 
						<input class="btn btn-secondary" type="submit" value="검색" />
					</form>
					<button class="btn btn-secondary" type="button" onclick="location.href='qnaSave'">글작성</button>
					</div>
					</td>
				</tr>
			</tbody>
		</table>
	</div>
</section>
<jsp:include page="../include/footer.jsp" />