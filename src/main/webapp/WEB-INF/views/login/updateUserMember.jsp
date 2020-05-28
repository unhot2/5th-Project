<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<jsp:include page="../include/header.jsp" />
<section class="updateUserMemberSection">
	<div align="center">
		<h1>내정보 수정</h1>
		<form action="updateUser" method="post">
			<table border="1">
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
					<td><input type="date" value="${memberInfo.userBirth }"
						name="userBirth"></td>
				</tr>
				<tr>
					<th>이메일</th>
					<td><input type="email" value="${memberInfo.userEmail }"
						name="userEmail"></td>
				</tr>
				<tr>
					<td><input type="submit" value="수정"></td>
					<td><button type="button"
							onclick="location.href='deleteMember?userId=${memberInfo.userId}'">삭제</button></td>
				</tr>
			</table>
		</form>
	</div>
</section>
<jsp:include page="../include/footer.jsp" />