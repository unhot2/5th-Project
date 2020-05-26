<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>

<jsp:include page="../include/header.jsp" />

<section class="loginSection">
	<form action="loginChk" method="post">
		<table border="1">
			<tr>
				<th>아이디</th>
				<th><input type="text" name="userId"></th>
			</tr>
			<tr>
				<th>비밀번호</th>
				<th><input type="text" name="userPwd"></th>
			</tr>
			<tr>
				<th colspan="2"><a href="${kakao_url }"> <img
						src="resources/img/kakao_login_btn_medium_narrow.png">
				</a></th>
			</tr>
			<tr>
				<th><input type="submit" value="로그인"></th>
				<th><button type="button" onclick="location.href='memberShip'">회원가입</button></th>
			</tr>
		</table>

	</form>

</section>
<jsp:include page="../include/footer.jsp" />