<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<link rel="stylesheet" href="resources/css/main.css?after" />
<link rel="stylesheet" href="resources/css/cloth.css?after" />
<link rel="stylesheet" href="resources/css/fadeout.css?after">
<link href="https://fonts.googleapis.com/css2?family=Dancing+Script:wght@562&display=swap" rel="stylesheet">
<title>5TH POJECT</title>
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
</script>
</head>
<body>
	<!-- 아래로 헤더부분 작성 -->
	<header class="menuBar" style="z-index: 1">
		<!-- 로고 이미지 -->
		<div>
			<a href="index"><img src="resources/img/logo2.jpg"
				class="logo"></a>
		</div>

		<div class="topNav" align="center">
			<!--  로그인 -->
			<c:choose>
				<c:when test="${userId eq null }">
					<div class="menu topfont">
						<a href="login">로그인</a>
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
			<div class="menu topfont">
				<a href="cartList">장바구니</a>
			</div>
			<!-- 고객센터 -->
			<div class="dropdown">
				<button class="dropbtn topfont">고객센터</button>
				<span class="dropdown-content"> <a href="qnaList">QnA</a><a
					href="noticeList">공지사항</a>
				</span>
			</div>
		</div>
		<nav class="navbar">
			<div class="menu1">
				<div class="dropdown">
					<button class="dropbtn dropmenu font"
						onclick="location.href='productList?category=아우터'">Outer</button>
					<span class="dropdown-content font"> <a
						href="productsubList?subcategory=가디건">Cardigan</a> <a
						href="productsubList?subcategory=자켓">Jacket</a> <a
						href="productsubList?subcategory=코트">Coat</a> <a
						href="productsubList?subcategory=점퍼">Jumper</a>
					</span>
				</div>
				<div class="dress font">
					<a href="productList?category='드레스'">Dress</a>
				</div>
				<div class="dropdown">
					<button class="dropbtn dropmenu font"
						onclick="location.href='productList?category=상의'">Top</button>
					<span class="dropdown-content font"> <a
						href="productsubList?subcategory=블라우스">blouse</a> <a
						href="productsubList?subcategory=티셔츠">T-shirt</a> <a
						href="productsubList?subcategory=니트">knit</a> <a
						href="productsubList?subcategory=반팔">Short-sleeve</a>
					</span>
				</div>
			</div>
			<div class="menu2">
				<div class="dropdown">
					<button class="dropbtn dropmenu2 font"
						onclick="location.href='productList?category=하의'">Pants</button>
					<span class="dropdown-content font"> <a
						href="productsubList?subcategory=점프슈트">Jumping suit</a> <a
						href="productsubList?subcategory=와이드팬츠">wide pants</a> <a
						href="productsubList?subcategory=스커트">skirt</a> <a
						href="productsubList?subcategory=면바지">Cotton Pants</a>
					</span>
				</div>
				<div class="skirts font">
					<a href="productList?category='스커트'">Skirts</a>
				</div>
				<div class="dropdown">
					<button class="dropbtn dropmenu2 font"
						onclick="location.href='productList?category=악세서리'">Acc</button>
					<span class="dropdown-content font"> <a
						href="productsubList?subcategory=스카프">Scarf</a> <a
						href="productsubList?subcategory=헤어핀">Hairpin</a> <a
						href="productsubList?subcategory=안경">Glasses</a> <a
						href="productsubList?subcategory=벨트">Belt</a> <a
						href="productsubList?subcategory=가방">Bag</a> <a
						href="productsubList?subcategory=신발">Shoes</a> <a
						href="productsubList?subcategory=기타">Guitar</a>
					</span>
				</div>
			</div>
		</nav>
	</header>