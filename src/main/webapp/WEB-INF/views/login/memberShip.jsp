<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<jsp:include page="../include/header.jsp" />
	<section class="memberShipSection">
		<div align="center">
			<form action="saveMember">
				아이디 : <input type="text" id="userId" name="userId">
				<button type="button" onclick="idcheck()">아이디 확인</button>
				<p class="result">
					<span class="msg">아이디를 확인해 주십시오</span>
				</p>
				<br> 비밀번호 : <input type="text" name="userPwd"><br>
				이름 : <input type="text" name="userName"><br> 나이 : <input
					type="number" name="userAge"><br> 주소 : <input
					type="text" name="userAddr"><br> <input type="text"
					name="#" id="postcode" placeholder="우편번호"> <input
					type="button" onclick="DaumPostcode()" value="우편번호 찾기"><br>
				<input type="text" name="#" id="address" placeholder="주소"> <input
					type="text" name="#" id="address2" placeholder="상세주소"><br>

				성별 : 남자<input type="radio" name="userGender" value="남자"
					checked="checked"> 여자<input type="radio" name="userGender"
					value="여자"><br> 생일 : <input type="date"
					name="userBirth"><br> 이메일 : <input type="email"
					name="userEmail"><br> <input id="submit" type="submit"
					value="회원가입" disabled="disabled">
			</form>
		</div>
	</section>
	<jsp:include page="../include/footer.jsp" />