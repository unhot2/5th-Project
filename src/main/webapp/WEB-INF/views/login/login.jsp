<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<script type="text/javascript"
	src="http://code.jquery.com/jquery-1.11.3.min.js"></script>
<script src="//developers.kakao.com/sdk/js/kakao.min.js"></script>
<jsp:include page="../include/header.jsp" />
<section class="loginSection">
			<form action="loginChk" method="post">
				<table>
					<tr>
						<th>아이디</th>
						<th><input type="text" name="userId"></th>
					</tr>
					<tr>
						<th>비밀번호</th>
						<th><input type="text" name="userPwd"></th>
					</tr>
					<tr>
						<th colspan="2"><a href="userFind">[비밀번호 찾기]</a></th>
					</tr>
					<tr>
						<th><input type="submit" value="로그인"></th>
						<th><button type="button"
								onclick="location.href='memberShip'">회원가입</button></th>
					</tr>
					<tr>
						<th colspan="2"><a href="${kakao_url }"> <img
								src="resources/img/etc/kakao_login_btn_medium_narrow.png">
						</a></th>
					</tr>
					<tr>
						<th colspan="2"><a href="${naver_url}"> <img width="223"
								src="https://developers.naver.com/doc/review_201802/CK_bEFnWMeEBjXpQ5o8N_20180202_7aot50.png" /></a></th>
					</tr>
				</table>
			</form>
</section>
<jsp:include page="../include/footer.jsp" />

