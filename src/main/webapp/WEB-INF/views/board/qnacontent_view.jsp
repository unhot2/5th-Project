<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<section>
	<div align="center">
		<form action="qnaupdate">
			<table border="1">
				<font size="6"><b>상세내용</b></font>
				<tr>
					<th>번호</th>
					<td><input type="text" name="id" value="${qnadetail.id}" size="100"></td>
				</tr>
				<tr>
					<th>이름</th>
					<td><input type="text" name="name" value="${qnadetail.name }" size="100"></td>
				</tr>
				<tr>
					<th>제목</th>
					<td><input type="text" name="title" value="${qnadetail.title }" size="100"></td>
				</tr>
				<tr>
					<th>내용</th>
					<td><textarea name="content" rows="10" cols="100">${qnadetail.content }</textarea></td>
				</tr>
				
				<tr>
					<th colspan="2">
					<input type="submit" value="수정">&nbsp;&nbsp;&nbsp;
					<a href="qnaList">목록이동</a>	&nbsp;&nbsp;				
					<button type="button" onclick="location.href='qnadelete?id=${qnadetail.id }'">삭제</button>&nbsp;&nbsp;
					<a href="qnarelpy_view">답변</a>
					</th>
				</tr>
			
			</table>
		</form>
	</div>
</section>		
</body>
</html>