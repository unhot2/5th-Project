<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">


<link rel="stylesheet" href="resources/css/main.css?after" />
<link rel="stylesheet" href="resources/css/footer.css?after" />
<link rel="stylesheet" href="resources/css/cloth.css?after" />
<link rel="stylesheet" href="resources/css/fadeout.css?after">
<link
	href="https://fonts.googleapis.com/css2?family=Dancing+Script:wght@562&display=swap"
	rel="stylesheet">
<link
	href="https://fonts.googleapis.com/css2?family=Combo&family=Fjalla+One&family=Staatliches&display=swap"
	rel="stylesheet">
<title>Angelica</title>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/resources/js/main.js"></script>
<script src='https://developers.kakao.com/sdk/js/kakao.min.js'></script>
<script
	src="${pageContext.request.contextPath}/resources/js/jquery-3.4.1.min.js"></script>
<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
<script>
	$(document).on('click', '#searchBtn', function() {
		$("#productSearch").attr('action', "productSearch")
		$("#productSearch").submit()
	})
	function press() {
		$("#productSearch").attr('action', "productSearch")
		$("#productSearch").submit()
	}
	function error() {
		alert("로그인 하셔야 합니다.");
		location.href = "login";
	}
</script>
</head>
<body>
	<!-- 아래로 헤더부분 작성 -->

	<header class="menuBar" style="z-index: 1">
		<!-- 로고 이미지 -->
		<div>
			<a href="index"><img src="resources/img/etc/logo.png"
				class="logo"></a>
		</div>

		<div class="topNav" align="center">
			<!--  로그인 -->
			<c:choose>
				<c:when test="${userId eq null }">
					<div class="menu topfont">
						<a href="login">로그인</a>
					</div>
					<div class="menu topfont">
						<a href="memberShip">회원가입</a>
					</div>
				</c:when>
				<c:otherwise>
					<c:choose>
						<c:when test="${userType eq 'member'}">
							<div class="menu topfont">
								<a href="logout">로그아웃</a>
							</div>
						</c:when>
						<c:when test="${userType eq 'kakao'}">
							<div class="menu topfont">
								<a href="kakaoLogout">로그아웃</a>
							</div>
						</c:when>
						<c:when test="${userType eq 'naver'}">
							<div class="menu topfont">
								<a href="naverLogout">로그아웃</a>
							</div>
						</c:when>
					</c:choose>
				</c:otherwise>
			</c:choose>
			<!-- 장바구니 -->
			<c:choose>
				<c:when test="${userId eq null }">
					<div class="menu topfont">
						<a onclick="error()" href="#">장바구니</a>
					</div>
				</c:when>
				<c:otherwise>
					<div class="menu topfont">
						<a href="cartList">장바구니</a>
					</div>
				</c:otherwise>
			</c:choose>
			<!-- 고객센터 -->
			<div class="dropdown1">
				<button class="dropbtn topfont">고객센터</button>
				<span class="dropdown1-content"> <a href="qnaList">QnA</a><a
					href="noticeList">공지사항</a>
				</span>
			</div>
			<c:choose>
				<c:when test="${userMaster eq 0 }">
					<div class="dropdown1">
						<button class="dropbtn topfont">관리자 메뉴</button>
						<span class="dropdown1-content"> <a href="memberList">회원목록</a>
							<a href="productRegister">상품 등록</a> <a href="#">주문관리</a>

						</span>
					</div>
				</c:when>
				<c:when test="${userId ne null && userMaster eq 1}">
					<div class="dropdown1">
						<button class="dropbtn topfont">마이페이지</button>
						<span class="dropdown1-content"> <a
							href="memberInfo?userId=${userId }">내정보</a> <a href="#">구매내역</a>
						</span>
					</div>
				</c:when>
			</c:choose>
			<div class="searchInput">
				<form action="productSearch">
					<input type=text name="title" placeholder="상품명">
					<input type="submit" value="검색">
				</form>
			</div>
		</div>
		<nav class="navbar">
			<div>
				<img class="sakura" src="resources/img/etc/벚꽃2.png">
			</div>
			<div class="menu1">
				<div class="dropdown1">
					<button class="dropbtn dropmenu font" id="menu"
						onclick="location.href='productList?category=아우터'">Outer</button>
					<span class="dropdown1-content font"> <a
						href="productsubList?category=가디건">Cardigan</a> <a
						href="productsubList?category=자켓">Jacket</a> <a
						href="productsubList?category=코트">Coat</a> <a
						href="productsubList?category=점퍼">Jumper</a>
					</span>
				</div>
				<div class="dress font">
					<a href="productList?category=드레스">Dress</a>
				</div>
				<div class="dropdown1">
					<button class="dropbtn dropmenu font"
						onclick="location.href='productList?category=상의'">Top</button>
					<span class="dropdown1-content font"> <a
						href="productsubList?category=블라우스">Blouse</a> <a
						href="productsubList?category=티셔츠">T-Shirt</a> <a
						href="productsubList?category=니트">Knit</a>
					</span>
				</div>
			</div>
			<div class="menu2">
				<div class="dropdown1">
					<button class="dropbtn dropmenu2 font"
						onclick="location.href='productList?category=하의'">Pants</button>
					<span class="dropdown1-content font"> <a
						href="productsubList?category=와이드팬츠">Wide Pants</a> <a
						href="productsubList?category=면바지">Cotton Pants</a><a
						href="productsubList?category=점프슈트">Jump Suit</a> <a
						href="productsubList?category=청바지">Denim</a> <a
						href="productsubList?category=슬랙스">Slacks</a>
					</span>
				</div>
				<div class="skirts font">
					<a href="productList?category=스커트">Skirts</a>
				</div>
				<div class="dropdown1">
					<button class="dropbtn dropmenu2 font"
						onclick="location.href='productList?category=악세서리'">Acc</button>
					<span class="dropdown1-content font"> <a
						href="productsubList?category=헤어핀">Hairpin</a> <a
						href="productsubList?category=안경">Glasses</a> <a
						href="productsubList?category=스카프벨트">Scarf & Belt</a> <a
						href="productsubList?category=가방신발">Bag & Shoes</a> <a
						href="productsubList?category=기타">ETC</a>
					</span>
				</div>
			</div>
		</nav>
		<div class="topBtn">
			<a href="#top"><img src="resources/img/etc/top.png"></a>
		</div>
	</header>