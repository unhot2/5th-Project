<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<jsp:include page="../include/header.jsp" />
<section class="memberShipSection">
	
	<div align="center">
		<form action="saveMember">
			<table>
				<tr>
					<th><font color="red">*</font>아이디</th>
					<td><input type="text" id="userId" name="userId"></td>
					<td><button type="button" onclick="idcheck()">아이디 확인</button></td>
				</tr>
				<tr>
					<td colspan="3"><p class="result">
							<span class="msg">아이디를 확인해 주십시오</span>
						</p></td>
				</tr>
				<tr>
					<th><font color="red">*</font>비밀번호</th>
					<td><input type="text" name="userPwd"></td>
				</tr>
				<tr>
					<th><font color="red">*</font>이름</th>
					<td><input type="text" name="userName"></td>
				</tr>
				<tr>
					<th><font color="red">*</font>핸드폰번호</th>
					<td><input type="text" name="userPhone" maxlength="11"></td>
				</tr>

				<tr>
					<th><font color="red">*</font>주소</th>
					<td>우편번호 : <input type="text" name="userPostCode"
						id="postcode" placeholder="우편번호"></td>
					<td><input type="button" id="Phone" onclick="DaumPostcode()"
						value="우편번호 찾기"></td>
				</tr>
				<tr>
					<th></th>
					<td colspan="2">상세주소 : <input type="text" name="userAddr"
						id="address" placeholder="주소"></td>
				</tr>
				<tr>
					<th>성별</th>
					<td>남자<input type="radio" name="userGender" value="남자"
						checked="checked"></td>
					<td>여자<input type="radio" name="userGender" value="여자"></td>
				</tr>
				<tr>
					<th>생일</th>
					<td><input type="date" name="userBirth"></td>
				</tr>
				<tr>
					<th>이메일</th>
					<td><input type="email" name="userEmail"></td>
				</tr>
				<tr>
					<th><font color="red">*</font>개인정보용 질문</th>
					<td><select size="1" name="userQuestion">
							<option value="q1" selected>나의 보물 1호는?
							<option value="q2">나의 고향은?
							<option value="q3">가장 소중한 것은?
							<option value="q4">나의 초등학교 이름은?
							<option value="q5">가장 친한 친구의 이름은?
							<option value="q6">나의 첫사랑의 이름은?
							<option value="q7">어머니의 생일은?
					</select><br> <input type="text" name="userAwnser"></td>
				</tr>
				<tr>
					<td><input id="submit" type="submit" value="회원가입"
						disabled="disabled"></td>
				</tr>
			</table>
		</form>
	</div>
</section>
<jsp:include page="../include/footer.jsp" />