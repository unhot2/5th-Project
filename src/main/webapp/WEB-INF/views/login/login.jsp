<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	 <form action="loginChk" method="post">
	아이디 : <input type="text" name="userId"><br>
	비밀번호 : <input type="text" name="userPwd">
	<input type="submit" value="로그인">
</form>
	<button type="button" onclick="location.href='memberShip'">회원가입</button>
	
	
</body>
</html>