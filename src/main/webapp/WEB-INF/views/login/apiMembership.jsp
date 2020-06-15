<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<link rel="stylesheet" href="resources/css/bootstrap_litera.css">
<jsp:include page="../include/header.jsp" />
<section class="apiMembershipSection" style="margin: 0px 0px 100px 0px">
<div align="center">
	<form action="apiSaveMember">
	<h1>회원가입 폼</h1>
		<table class="table table-hover">
			<tr>
				<th class="table-light">이름</th>
				<td><input type="text" name="userName" value="${loginDTO.userName }" placeholder="이름"></td>
			</tr>
			<tr>
				<th class="table-light">핸드폰 번호</th>
				<td><input type="text" name="userPhone" id="userPhone"></td>
			</tr>
			<tr>
				<th class="table-light">주소</th>
				<td><input type="text" name="userPostCode" id="postcode" placeholder="우편번호">
				<input type="button" onclick="DaumPostcode()" value="우편번호 찾기"><br> 
				<input type="text" name="userAddr" id="address" placeholder="주소"></td>
			</tr>
			<tr>
				<th class="table-light">성별</th>
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
				<th class="table-light">생년월일</th>
				<td>
					<input type="date" value="${memberInfo.userBirth }"	name="userBirth">
				</td>
			</tr>
			<tr>
				<th class="table-light">Email</th>
				<td><input type="text" name="userEmail" value="${loginDTO.userEmail }" placeholder="이메일"></td>
			</tr>
			<tr>
				<th class="table-light"><font color="red">*</font>개인정보용 질문</th>
				<td><select size="1" name="userQuestion">
						<option value="q1" selected>나의 보물 1호는?
						<option value="q2">나의 고향은?
						<option value="q3">가장 소중한 것은?
						<option value="q4">나의 초등학교 이름은?
						<option value="q5">가장 친한 친구의 이름은?
						<option value="q6">나의 첫사랑의 이름은?
						<option value="q7">어머니의 생일은?
				</select><br> <input type="text" name="userAnswer" id="userAnswer"></td>
			</tr>
			<tr>
				<td></td>
				<td align="right"><input class="form-control mr-sm-2" type="submit" id="apiSubmit" value="회원가입"></td>
			</tr>
		</table>
	</form>
</div>
</section>
<jsp:include page="../include/footer.jsp" />
