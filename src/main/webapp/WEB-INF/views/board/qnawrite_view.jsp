<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div align="center">
		<form action="qnawrite_save">
			<table border="1">
				<font size="6"><b>QnA</b></font>
				<tr>
					<th>이름</th>
					<td><input type="text" name="name" size="100"></td>
				</tr>
				<tr>
					<th>제목</th>
					<td><input type="text" name="title" size="100"></td>
				</tr>
				<tr>
					<th>내용</th>
					<td><textarea name="content" rows="10" cols="100"></textarea></td>
				</tr>
				<tr>
					<th colspan="2"><input type="submit" value="저장">&nbsp;&nbsp;&nbsp;
					<a href="qnalist">목록이동</a></th>
				</tr>
			</table>
		</form>
	</div>
</body>
</html>