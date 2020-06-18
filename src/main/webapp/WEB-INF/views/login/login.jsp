<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<script type="text/javascript"
	src="http://code.jquery.com/jquery-1.11.3.min.js"></script>
<script src="//developers.kakao.com/sdk/js/kakao.min.js"></script>
<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<link rel="stylesheet" href="resources/css/login.css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<!------ Include the above in your HEAD tag ---------->

<jsp:include page="../include/header.jsp" />
<section class="loginSection">
    <div class = "container">
	<div class="wrapper">
		<form action="loginChk" method="post" class="form-signin">  
			<div class="radius">     
		    <h3 class="form-signin-heading">Login</h3>
			  <hr class="colorgraph"><br>
			  
			  <input type="text" class="form-control" name="userId" placeholder="UserID" required="" autofocus="" />
			  <input type="password" class="form-control" name="userPwd" placeholder="Password" required=""/>     		  
			 
			  <button class="btn"  name="Submit" value="Login" type="Submit">로그인</button> 
			  <button class="btn"   value="Register" type="button" onclick="location.href='memberShip'"
			  >회원가입</button> 
			  <button class="btn"  name="Submit" value="Login" type="Submit" onclick="location.href='userFind'">비밀번호 찾기</button>
			  <br> 
			  <a  href="${kakao_url }"> <img class="btn2" width="165" height="45" src="resources/img/etc/kakao_login_btn_medium_narrow.png"></a>
			  <a href="${naver_url}"> 
			  <img width="165" height="45" src="resources/img/etc/naverLogin.jpg" /></a></th>
			
			</div>				
		</form>			
	</div>
</div>
</section>   

<jsp:include page="../include/footer.jsp" />

