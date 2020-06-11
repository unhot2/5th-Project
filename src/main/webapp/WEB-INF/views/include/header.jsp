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
		<nav class="navbar">
			<div class="dropdown">
				<button class="dropbtn menu"
					onclick="location.href='productList?category=아우터'">OUTER</button>
				<span class="dropdown-content">
					 <a href="productsubList?subcategory=가디건">Cardigan</a>
		             <a href="productsubList?subcategory=자켓">Jacket</a> 
		             <a href="productsubList?subcategory=코트">Coat</a>
		             <a href="productsubList?subcategory=점퍼">Jumper</a>
				</span>
			</div>
			<div class="dropdown">
				<button class="dropbtn menu"
					onclick="location.href='productList?category=상의'">TOP</button>
				<span class="dropdown-content">
					<a href="productsubList?subcategory=블라우스">blouse</a>
		            <a href="productsubList?subcategory=티셔츠">T-shirt</a> 
		            <a href="productsubList?subcategory=니트">knit</a>
		            <a href="productsubList?subcategory=반팔">Short-sleeve</a>
				</span>
			</div>
			<!-- 상표 넣을자리 -->
			<span class="img"> <a href="/sample"
				style="margin-right: 60px;"><img src="resources/img/shooping.jpg"></a>
			</span>
			<div class="dropdown">
				<button class="dropbtn menu"
					onclick="location.href='productList?category=하의'">PANTS</button>
				<span class="dropdown-content">
				   <a href="productsubList?subcategory=점프슈트">Jumping suit</a>
	               <a href="productsubList?subcategory=와이드팬츠">wide pants</a> 
	               <a href="productsubList?subcategory=스커트">skirt</a>
	               <a href="productsubList?subcategory=면바지">Cotton Pants</a>
				</span>
			</div>
			<div class="dropdown">
				<button class="dropbtn menu"
					onclick="location.href='productList?category=악세서리'">ACC</button>
				<span class="dropdown-content">  
			   <a href="productsubList?subcategory=스카프">Scarf</a>
               <a href="productsubList?subcategory=헤어핀">Hairpin</a> 
               <a href="productsubList?subcategory=안경">Glasses</a>
               <a href="productsubList?subcategory=벨트">Belt</a>
               <a href="productsubList?subcategory=가방">Bag</a>
               <a href="productsubList?subcategory=신발">Shoes</a>
               <a href="productsubList?subcategory=기타">Guitar</a>
				</span>
			</div>
			 <c:choose>
				<c:when test="${userMaster == 1 && userId != null}">
					<span class="menu"><a href="memberInfo?userId=${userId }"
						class="menu">내정보</a></span>
				</c:when>
			</c:choose>
			<c:choose>
				<c:when test="${userMaster == 0 && userId != null}">
					<div class="dropdown">
						<button class="dropbtn menu">관리자</button>
						<span class="dropdown-content">
							<a href="memberList">회원목록</a>
							<a href="productRegister">상품등록</a>
						</span>
					</div>
				</c:when>
			</c:choose>
			<div class="dropdown">
				<button class="dropbtn menu">고객센터</button>
				<span class="dropdown-content"> <a href="qnaList">QnA</a><a
					href="noticeList">공지사항</a>
				</span>
			</div>
			<c:choose>
				<c:when test="${userId eq null }">
					<span class="menu"><a href="login" class="menu">로그인</a></span>
				</c:when>
				<c:otherwise>
					<c:choose>
						<c:when test="${userType eq 'member'}">
							<span class="menu"><a href="logout" class="menu">로그아웃</a></span>
						</c:when>
						<c:when test="${userType eq 'kakao'}">
							<span class="menu"><a href="kakaoLogout" class="menu">로그아웃</a></span>
						</c:when>
						<c:when test="${userType eq 'naver'}">
							<span class="menu"><a href="naverLogout" class="menu">로그아웃</a></span>
						</c:when>
					</c:choose>
				</c:otherwise>
			</c:choose>	
			<!-- 검색창 -->
			<form id="productSearch" style="display: inline;">
				<input type="Search" name="title"
					onkeypress="if(event.keyCode==13) {press()}"> <a
					id="searchBtn"> <img src="resources/img/search.png">
				</a>
			</form>
			<span class="img"> <!-- 장바구니 --> <a href="cartList"><img
					src="resources/img/cart.png"></a>
			</span>
			<c:choose>
				<c:when test="${userId ne null}">
					<span class="img"> <!-- 내정보 --> <a
						href="memberInfo?userId=${userId }"> <img
							src="resources/img/MY.png"></a>
					</span>
				</c:when>
				<c:otherwise>
					<span class="img"> <!-- 내정보 --> <a
						href="memberInfo?userId=empty"> <img
							src="resources/img/MY.png"></a>
					</span>
				</c:otherwise>
			</c:choose>
		</nav>
	</header>
