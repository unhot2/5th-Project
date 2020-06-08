<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<script src='https://developers.kakao.com/sdk/js/kakao.min.js'></script>
<link rel="stylesheet" href="resources/css/slide.css">
<jsp:include page="include/header.jsp" />
<%-- <c:remove var="userId"/>
<c:remove var="userMaster"/> --%>
<section class="indexSection">

	<h1>INDEX 영역</h1>
	<c:choose>
		<c:when test="${userId !=null }">
			<h2>로그인 성공</h2>
			<h3>'${userId}'님 환영합니다</h3>
		</c:when>
	</c:choose>
	
    <div class="slidershow middle">

      <div class="slides">
        <input type="radio" name="r" id="r1" checked>
        <input type="radio" name="r" id="r2">
        <input type="radio" name="r" id="r3">
        <input type="radio" name="r" id="r4">
        <input type="radio" name="r" id="r5">
        <div class="slide s1">
          <img src="resources/slideImg/1.jpg" alt="">
        </div>
        <div class="slide">
          <img src="resources/slideImg/2.jpg" alt="">
        </div>
        <div class="slide">
          <img src="resources/slideImg/3.jpg" alt="">
        </div>
        <div class="slide">
          <img src="resources/slideImg/4.jpg" alt="">
        </div>
        <div class="slide">
          <img src="resources/slideImg/5.jpg" alt="">
        </div>
      </div>

      <div class="navigation">
        <label for="r1" class="bar"></label>
        <label for="r2" class="bar"></label>
        <label for="r3" class="bar"></label>
        <label for="r4" class="bar"></label>
        <label for="r5" class="bar"></label>
      </div>
    </div>	
</section>
<jsp:include page="include/footer.jsp" />