<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<link rel="stylesheet" href="resources/css/main.css" />
<link rel="stylesheet" href="resources/css/cloth.css" />

<title>5TH POJECT</title>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/resources/js/main.js"></script>
<script
	src="${pageContext.request.contextPath}/resources/js/jquery-3.4.1.min.js"></script>
<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
<script>
	$(document).on('click', '#searchBtn', function() {
		$("#productSearch").attr('action',"productSearch")		
		$("#productSearch").submit()
	})
</script>
</head>
<body>
	<!-- 아래로 헤더부분 작성 -->
	<header class="menuBar">
		<nav class="navbar">
			<!-- 상표 넣을자리 -->
			<span class="img"> <a href="/sample"
				style="margin-right: 60px;"><img src="resources/img/JJim.png"></a>
			</span>
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
			<c:choose>
				<c:when test="${userMaster == 1 && userId != null}">
					<span class="menu"><a href="memberInfo?userId=${userId }"
						class="menu">내정보</a></span>
				</c:when>
				<c:when test="${userMaster == 0 && userId != null}">
					<span class="menu"><a href="memberList" class="menu">회원목록</a></span>
					<span class="menu"><a href="productRegister" class="menu">상품등록</a></span>
				</c:when>
			</c:choose>
			<div class="dropdown">
				<button class="dropbtn menu">고객센터</button>
				<span class="dropdown-content"> <a href="qnaList">QnA</a><a
					href="noticeList">공지사항</a>
				</span>
			</div>
			<div class="dropdown">
				<button class="dropbtn menu" onclick="location.href='#'">상품</button>
				<span class="dropdown-content"> <a href="productAll">전체</a> <a
					href="productList?category=상의">상의</a> <a
					href="productList?category=하의">하의</a> <a
					href="productList?category=아우터">아우터</a> <a
					href="productList?category=악세서리">악세서리</a>
				</span>
			</div>
			<span><a href="#" class="menu">세일</a></span><span class="img"></span>
			<!-- 검색창 -->
			
			<span class="img"> <!-- 찜목록? 추가안하려면 삭제 --> <a href="#"><img
					src="resources/img/JJim.png"></a>
			</span> <span class="img"> <!-- 장바구니 --> <a href="cartList"><img
					src="resources/img/cart.png"></a>
			</span> <span class="img"> <!-- 내정보 --> <a
				href="memberInfo?userId=${userId }"><img
					src="resources/img/MY.png"></a>
			</span>
			<form id="productSearch" style="display: inline;">
			<span class="img">
				<input type="text" name="title"> <a id="searchBtn"> <img
					src="resources/img/search.png">
				</a>
				</span>
			</form>
		</nav>
	</header>