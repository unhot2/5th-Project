<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<link rel="stylesheet" href="resources/css/main.css" />
<link rel="stylesheet" href="resources/js/main.js" />
<title>5TH POJECT</title>
</head>
<body>
	<!-- 아래로 헤더부분 작성 -->
	<header class="menuBar">
		<nav class="navbar">
			<!-- 상표 넣을자리 -->
			<span class="img">
			<a href="home" style="margin-right: 60px;"><img src="resources/img/JJim.png"></a>
			</span>
			<c:choose>
				<c:when test="${userId eq null }">
					<span class="menu"><a href="login" class="menu">로그인</a></span>
				</c:when>
				<c:otherwise>
					<span class="menu"><a href="logout" class="menu">로그아웃</a></span>
				</c:otherwise>
			</c:choose>
			<c:choose>
				<c:when test="${userMaster == 1 && userId != null}">
					<span class="menu"><a href="memberInfo?userId=${userId }" class="menu">내정보</a></span>
				</c:when>
				<c:when test="${userMaster == 0 && userId != null}">
					<span class="menu"><a href="memberList" class="menu">회원목록</a></span>
				</c:when>
			</c:choose>
			<div class="dropdown">
				<button class="dropbtn menu" onclick="location.href='noticeList'">고객센터</button>
				<span class="dropdown-content">
					<a href="qnaList">QnA</a><a href="#">공지사항</a>
				</span>
			</div>
			
			<div class="dropdown">
				<button class="dropbtn menu" onclick="location.href='#'">상품</button>
				<span class="dropdown-content">
					<a href="#">상의</a><a href="#">하의</a>
					<a href="#">신발</a><a href="#">악세서리</a>
				</span>
			</div>
			<span><a href="#" class="menu">세일</a></span>
			<span class="img"><!-- 검색창 -->
				<a href="#"><img src="resources/img/search.png"></a>
			</span>
			<span class="img"><!-- 찜목록? 추가안하려면 삭제 -->
				<a href="#"><img src="resources/img/JJim.png"></a>
			</span>
			<span class="img"><!-- 장바구니 -->
				<a href="#"><img src="resources/img/cart.png"></a>
			</span>
			<span class="img"><!-- 내정보 -->
				<a href="memberInfo?userId=${userId }"><img src="resources/img/MY.png"></a>
			</span>
		</nav>
	</header>