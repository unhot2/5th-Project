<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<jsp:include page="../include/header.jsp" />
<h1>회원가입 폼</h1>
<form action="apiSaveMember">
	<table border='1'>
		<tr>
			<th>이름</th>
			<td><input type="text" name="userName"
				value="${loginDTO.userName }" placeholder="이름"></td>
		</tr>
		<tr>
			<th>주소</th>
			<td><input type="text" name="userPostCode" id="postcode" placeholder="우편번호">
			<input type="button" onclick="DaumPostcode()" value="우편번호 찾기"><br> 
			<input type="text" name="userAddr" id="address" placeholder="주소"></td>
		</tr>
		<tr>
			<th>성별</th>
			<td><c:choose>
					<c:when
						test="${loginDTO.userGender eq 'M' || loginDTO.userGender eq 'Male'}">
						남자 <input type="radio" value="남자" name="userGender" checked="checked">
						여자 <input type="radio" value="여자" name="userGender">
					</c:when>
					<c:otherwise>
						남자 <input type="radio" value="남자" name="userGender">
						여자 <input type="radio" value="여자" name="userGender" checked="checked">
					</c:otherwise>
				</c:choose></td>
		</tr>
		<tr>
			<th>생년월일</th>
			<td>
				<input type="date" value="${memberInfo.userBirth }"	name="userBirth">
			</td>
		</tr>
		<tr>
			<th>Email</th>
			<td><input type="text" name="userEmail" value="${loginDTO.userEmail }" placeholder="이메일"></td>
		</tr>
		<tr>
			<td><input type="submit" id="apiSubmit" value="회원가입"></td>
		</tr>
	</table>
</form>
<jsp:include page="../include/footer.jsp" />
