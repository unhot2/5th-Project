<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<script type="text/javascript"
	src="http://code.jquery.com/jquery-1.11.3.min.js"></script>
<script src="//developers.kakao.com/sdk/js/kakao.min.js"></script>
<script src="https://apis.google.com/js/platform.js" async defer></script>
<!DOCTYPE html>

<jsp:include page="../include/header.jsp" />

<section class="loginSection">
<form action="loginChk" method="post">
	<table border="1">
		<tr>
			<th>아이디</th><th><input type="text" name="userId"></th>
		</tr>
		<tr>
			<th>비밀번호</th><th><input type="text" name="userPwd"></th>
		</tr>
		<tr>
			<th colspan="2"><a href="${url}"> <img width="223"
						src="https://developers.naver.com/doc/review_201802/CK_bEFnWMeEBjXpQ5o8N_20180202_7aot50.png" /></a></th>
		</tr>
		<tr>
			<th colspan="2"><a
						href="https://kauth.kakao.com/oauth/authorize?client_id=57e29a56d203070d6cf1e82d0cf4ed2f&redirect_uri=http://localhost:8083/sample/kakaologin&response_type=code">
						<img src="//mud-kage.kakao.com/14/dn/btqbjxsO6vP/KPiGpdnsubSq3a0PHEGUK1/o.jpg" width="223" />
					</a></th>
		</tr>
		<tr>
			<th colspan="2"><div id="google_id_login" style="text-align: center">
					<a href="${google_url}">
					<img width="230" src="${pageContext.request.contextPath}/resources/btn_google_signin_dark_normal_web@2x.png"/>
					</a>
				</div></th>
		</tr>
		<tr> 
			<th><input type="submit" value="로그인"></th>
			<th><button type="button" onclick="location.href='memberShip'">회원가입</button></th>
		</tr>
	</table> 
	
</form>

</section>
<jsp:include page="../include/footer.jsp" />
