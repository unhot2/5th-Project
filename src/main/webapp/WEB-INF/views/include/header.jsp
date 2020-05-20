<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet"
	href="http://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css">
<script
	src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="resources/css/main.css" />
<link rel="stylesheet" href="resources/js/main.js" />
<title>5TH POJECT</title>
</head>
<body>
	<!-- 아래로 헤더부분 작성 -->
	<div class="menuBar">
		<c:choose>
			<c:when test="${userId eq null }">
				<span><a href="login" class="menu">로그인</a></span> 
			</c:when>
			<c:otherwise>
				<span><a href="logout" class="menu">로그아웃</a></span> 
			</c:otherwise>
		</c:choose>
		<c:choose>
			<c:when test="${userMaster == 1 && userId != null}">
				<span><a href="memberInfo?userId=${userId }" class="menu">내정보</a></span>
			</c:when>
			<c:when test="${userMaster == 0 && userId != null}">
				<span><a href="memberList" class="menu">회원목록</a></span>
			</c:when>
		</c:choose>
		<span><a href="noticeList" class="menu">공지사항</a></span> <span><a
			href="qnaList" class="menu">QnA</a></span>
	</div>