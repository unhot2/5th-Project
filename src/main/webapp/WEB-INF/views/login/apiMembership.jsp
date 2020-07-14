<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<link rel="stylesheet" href="resources/css/apiMembership.css">
<jsp:include page="../include/header.jsp" />
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
<script>
	$(document).ready(
			function() {
				$('input[type="text"]').keyup(
						function() {
							var chk = false;
							if ($("#userId").val() != ''
									&& $("#userPwd").val() != ''
									&& $("#userName").val() != ''
									&& $("#userPhone").val() != ''
									&& $("#postcode").val() != ''
									&& $("#address").val() != ''
									&& $("#userAnswer").val() != '') {
								chk = true;
							} else if ($("#userId").val() == '') {
								chk = false;
							} else if ($("#userPwd").val() == '') {
								chk = false;
							} else if ($("#userName").val() == '') {
								chk = false;
							} else if ($("#userPhone").val() == '') {
								chk = false;
							} else if ($("#postcode").val() == '') {
								chk = false;
							} else if ($("#address").val() == '') {
								chk = false;
							} else if ($("#userAnswer").val() == '') {
								chk = false;
							}
							if (chk) {
								$(':input[type="submit"]').prop('disabled',
										false);
							} else {
								$(':input[type="submit"]').prop('disabled',
										true);

							}
						});
			});
</script>
<article class="half">
	<section class="container">
		<div class="tabs">
			<span class="tab signup"><a href="#signup">회원가입</a></span>
		</div>
		<div class="content">
			<div class="signup-cont cont">
				<form action="apiSaveMember" method="post">
					<span class="name">이름</span> <input class="inpt" type="text"
						name="userName" required="required" value="${loginDTO.userName }"
						placeholder="이름"> 핸드폰 번호 <input type="text" class="inpt"
						name="userPhone" id="userPhone" required="required"> 주소<br>
					<input class="inpt" type="text" name="userPostCode" id="postcode"
						placeholder="우편번호"> <input class="submit" type="button"
						onclick="DaumPostcode()" value="우편번호 찾기"><br> <input
						class="inpt" type="text" name="userAddr" id="address"
						placeholder="주소"> 성별<br>
					<c:choose>
						<c:when
							test="${loginDTO.userGender eq 'M' || loginDTO.userGender eq 'Male'}">
								남자 <input type="radio" value="남자" name="userGender"
								checked="checked">
								여자 <input type="radio" value="여자" name="userGender">
						</c:when>
						<c:otherwise>
								남자 <input type="radio" value="남자" name="userGender">
								여자 <input type="radio" value="여자" name="userGender"
								checked="checked">
						</c:otherwise>
					</c:choose>
					<br> <br> 생년월일 <input type="date"
						value="${memberInfo.userBirth }" name="userBirth"><br>
					<br> Email <input class="inpt" type="text" name="userEmail"
						value="${loginDTO.userEmail }" placeholder="이메일"> <font
						color="red">*</font> <a>개인정보용 질문</a><br> <select size="1"
						name="userQuestion" class="inpt">
						<option value="q1" selected>나의 보물 1호는?
						<option value="q2">나의 고향은?
						<option value="q3">가장 소중한 것은?
						<option value="q4">나의 초등학교 이름은?
						<option value="q5">가장 친한 친구의 이름은?
						<option value="q6">나의 첫사랑의 이름은?
						<option value="q7">어머니의 생일은?
					</select><br> <input class="inpt" type="text" name="userAnswer"
						id="userAnswer"> <input class="submit" type="submit"
						id="apiSubmit" value="회원가입">
				</form>
			</div>
		</div>
	</section>
</article>
<jsp:include page="../include/footer.jsp" />
