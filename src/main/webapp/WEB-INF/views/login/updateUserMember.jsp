<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<link href="//netdna.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//netdna.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<link rel="stylesheet" href="resources/css/memberInfo.css">
<jsp:include page="../include/header.jsp" />
<section class="updateUserMemberSection">
	<div align="center">
		
		<form action="updateUser" method="post">
		<div class="container">
					<div class="row">
    	<div class="col-md-8 col-md-offset-2 divwidth">
    	    <div class="panel panel-default ticket-list">
              <div class="panel-heading">
                <h3 class="panel-title text-center titlesize">정보 수정</h3>
              </div>
              <div class="panel-body ">
                  <table class="table">
                    <thead class='table-head'>
                      <tr class='table-head'>
				<tr>
					<th>아이디</th>
					<td><input type="text" value="${memberInfo.userId }"
						name="userId"></td>
				</tr>
				<tr>
					<th>비밀번호</th>
					<td><input type="text" value="${memberInfo.userPwd }"
						name="userPwd"></td>
				</tr>
				<tr>
					<th>이름</th>
					<td><input type="text" value="${memberInfo.userName }"
						name="userName"></td>
				</tr>
				<tr>
					<th>핸드폰 번호</th>
					<td><input type="text" value="${memberInfo.userPhone }"
						name="userPhone"></td>
				</tr>
				<tr>
					<th>주소</th>
					<td><input type="text" value="${memberInfo.userAddr }"
						name="userAddr"></td>
				</tr>
				<tr>
					<th>성별</th>
					<c:choose>
						<c:when test="${memberInfo.userGender == '남자'}">
							<td>남자<input type="radio" name="userGender" value="남자"
								checked="checked" name="userGender"> 여자<input
								type="radio" name="userGender" value="여자" name="userGender">
							</td>
						</c:when>
						<c:otherwise>
							<td>남자<input type="radio" name="userGender" value="남자"
								name="userGender"> 여자<input type="radio"
								name="userGender" value="여자" checked="checked" name="userGender">
							</td>
						</c:otherwise>
					</c:choose>
				</tr>
				<tr>
					<th>생년월일</th>
					<td><input type="date" value="${userBirth }"
						name="userBirth"></td>
				</tr>
				<tr>
					<th>이메일</th>
					<td><input type="email" value="${memberInfo.userEmail }"
						name="userEmail"></td>
				</tr>
				
				
			</table>
			<input class="btn" type="submit" value="수정">
				<button class="btn" type="button" onclick="location.href='deleteMember?userId=${memberInfo.userId}'">삭제</button>
				 </div>
           </div>
    	</div>
	</div>
</div>
		</form>
	</div>
</section>
<jsp:include page="../include/footer.jsp" />