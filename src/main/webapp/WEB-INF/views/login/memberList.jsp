<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<link href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<link
	href="//netdna.bootstrapcdn.com/twitter-bootstrap/2.3.2/css/bootstrap-combined.min.css"
	rel="stylesheet" id="bootstrap-css">
<script	src="//netdna.bootstrapcdn.com/twitter-bootstrap/2.3.2/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>

<!------ Include the above in your HEAD tag ---------->

<jsp:include page="../include/header.jsp" />

<section class="memberListSection">
<p class="memberListTitle">회 원 목 록(관리자)</p>
<br>
	<div align="center">
		<div class="container">
			<div class="row">
				<table class="table table-hover table-responsive">
					<thead>
						<tr>
							<th>아이디</th>
							<th>비밀번호</th>
							<th>이름</th>
							<th>핸드폰 번호</th>
							<th>주소</th>
							<th>성별</th>
							<th>생년월일</th>
							<th>이메일</th>
							<th style="width: 36px;"></th>
						</tr>
					</thead>
					<tbody>


						<c:forEach var="mb" items="${memberList }">
							<tr>
								<td>${mb.userId }</td>
								<td>${mb.userPwd }</td>
								<td>${mb.userName }</td>
								<td>${mb.userPhone}</td>
								<td>${mb.userAddr }</td>
								<td>${mb.userGender }</td>
								<td><fmt:formatDate value="${mb.userBirth }"
										pattern="yyyy.MM.dd" /></td>
								<td>${mb.userEmail }</td>
								<td class="memberListBtn"><a href="memberInfo?userId=${mb.userId }"> <i
										class="icon-pencil"></i></a> <a href="deleteMember" role="button"
									data-toggle="modal"> <i class="icon-remove"></i></a></td>
							</tr>
						</c:forEach>

					</tbody>
					
				</table>
				<div class="col col-xs-8" style="float: right;">
                    <ul class="pagination hidden-xs pull-right">
					<c:choose>
						<c:when test="${memberstart > 1}">
							<li><a class="page-link"
								onclick="location.href='memberList?memberstart=${memberstart-1}'">&laquo;</a>
							</li>
						</c:when>
						<c:otherwise>
							<li><a class="page-link"
								onclick="location.href='memberList?memberstart=${memberstart-1}'">&laquo;</a>
							</li>
						</c:otherwise>
					</c:choose> 
					
					<c:forEach begin="1" end="${pc.totalPage }" step="1" var="cnt">
						<li><a class="page-link" href="memberList?memberstart=${cnt }">${cnt }</a></li>
					</c:forEach> 
					
					<c:choose>
						<c:when test="${memberstart < pc.totalPage }">
							<li><a class="page-link"
								onclick="location.href='memberList?memberstart=${memberstart+1}'">&raquo;</a>
							</li>
						</c:when>
						<c:otherwise>
							<li><a class="page-link"
								onclick="location.href='memberList?memberstart=${memberstart+1}'">&raquo;</a>
							</li>
						</c:otherwise>
					</c:choose>
					</ul>
					</div>
			</div>
		</div>
		

	</div>
</section>
<div class="modal small hide fade" id="myModal" tabindex="-1"
	role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
	<div class="modal-header">
		<button type="button" class="close" data-dismiss="modal"
			aria-hidden="true">×</button>
		<h3 id="myModalLabel">Delete Confirmation</h3>
	</div>
	<div class="modal-body">
		<p class="error-text">Are you sure you want to delete the user?</p>
	</div>
	<div class="modal-footer">
		<button class="btn" data-dismiss="modal" aria-hidden="true">Cancel</button>
		<button class="btn btn-danger" data-dismiss="modal">Delete</button>
	</div>
</div>


<jsp:include page="../include/footer.jsp" />