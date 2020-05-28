<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>네이버 회원가입 폼</h1>
<form action="">
<input type="text" name="이름" value="${naverDTO.userName }" placeholder="이름">
<input type="text" name="성별" value="${naverDTO.userGender }" placeholder="성별">
<input type="text" name="이메일" value="${naverDTO.userEmail }" placeholder="이메일">
<input type="submit" value="회원가입">
</form>
</body>
</html>