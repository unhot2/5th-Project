<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<script>
	function error() {
		alert("로그인 하셔야 합니다.");
		location.href = "login";
	}
</script>
<table class="tablefooter">
	<tr>
		<td><a href="#" class="footerlogo"><img
				src="resources/img/etc/logo.png"></a></td>
		<td>
			<div class="div01">
				<a>회사소개</a>&nbsp;&nbsp; <a>이용약관</a> <a>개인정보취급방침</a> <a>이용안내</a><br>
				<a>(주)Angelica TEL. 02)351 - 4875</a><br> <a>사업자등록번호.
					347-08-15784</a><br> <a>통신판매신고번호. 제 37-서울특별시-05호 개인정보취급관리자</a><br>
				<a>호스팅제공자.Angelica(주)</a>
			</div>
		</td>
		<td>
			<div class="div02">
				<a>Quick</a><br> <br>
				<c:choose>
					<c:when test="${userId eq null }">
						<a href="login" class="footermenu">로그인</a>
						<br>
					</c:when>
					<c:otherwise>
						<c:choose>
							<c:when test="${userType eq 'member'}">
								<a href="logout" class="footermenu">로그아웃</a>
								<br>
							</c:when>
							<c:when test="${userType eq 'kakao'}">
								<a href="kakaoLogout" class="footermenu">로그아웃</a>
								<br>
							</c:when>
							<c:when test="${userType eq 'naver'}">
								<a href="naverLogout" class="footermenu">로그아웃</a>
								<br>
							</c:when>
						</c:choose>
					</c:otherwise>
				</c:choose>
				<br>
				<c:choose>
					<c:when test="${userId eq null }">
						<a href="memberShip" class="footermenu">회원가입</a>
					</c:when>
					<c:otherwise>
						<a href="memberList" class="footermenu">내정보</a>
					</c:otherwise>
				</c:choose>
				<br> <br>
				<c:choose>
					<c:when test="${userId eq null }">
						<a onclick="error()" href="#">장바구니</a>
					</c:when>
					<c:otherwise>
						<a href="cartList">장바구니</a>
					</c:otherwise>
				</c:choose>
				<br>
				<br> <a href="noticeList" class="footermenu">공지사항</a><br>
				<br> <a href="qnaList" class="footermenu">QnA</a>
			</div>
		</td>
		<td>
			<div class="div03">
				<br> <a>CALL CENTER</a> <a>02)351 - 4875</a><br> <br>
				<a>평일 오전 11:00 - 오후 5:00</a><br> <a>점심시간 오후 12:00 - 오휴 1:00</a><br>
				<a>토.일.공휴일 휴무</a><br> <br> <a>RETURN/EXCHANGE</a><br>
				<br> <a>서울 특별시 종로구 아이티뱅크</a>
			</div>
		</td>
		<td>
			<div class="div04">
				<a>BANK INFO</a><br> <br> <a>국민은행 14875-37-487117</a><br>
				<br> <a>농협 302-08-74521</a><br> <br> <a>예금주
					:(주)Angelica</a>
			</div>
		</td>
	</tr>
	<tr>
		<td></td>
		<td>
			<div class="div05">
				<a>Copyright&copy; MAYSOME all right reserved. design by
					design102</a>
			</div>
		</td>
	</tr>
	<tr>
		<td></td>
		<td>
			<div class="div06">
				<a><img src="resources/img/etc/facebook.png" class="socialimg">facebook</a>
				<a><img src="resources/img/etc/instagram.png" class="socialimg">instagram</a>
				<a><img src="resources/img/etc/youtube.png" class="socialimg">Youtube</a>&nbsp;&nbsp;&nbsp;&nbsp;
				<a href="//www.cafe24.com/" target="_blank"><img
					src="resources/img/etc/cafe24.png"></a> <a
					href="//www.ftc.go.kr/" target="_blank"><img
					src="resources/img/etc/ftc.png"></a>
			</div>
		</td>
	</tr>
</table>
</body>
</html>