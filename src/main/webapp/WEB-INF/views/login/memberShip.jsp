<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="saveMember">
		아이디 : <input type="text" name="userId"><br>
		비밀번호 : <input type="text" name="userPwd"><br>
		이름 : <input type="text" name="userName"><br>
		나이 : <input type="number" name="userAge"><br>
		주소 : <input type="text" name="userAddr"><br>
		성별 : 남자<input type="radio" name="userGender" value="남자" checked="checked">
			여자<input type="radio" name="userGender" value="여자"><br>
		생일 : <input type="date" name="userBirth"><br>
		이메일 : <input type="email" name="userEmail"><br>
		<input type="submit" value="회원가입">
	</form>
</body>
</html>