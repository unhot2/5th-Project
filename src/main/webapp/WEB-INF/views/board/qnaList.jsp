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
<jsp:include page="../include/header.jsp" />
<hr>
	<div align="center">
		<font size="6"><b>QnA</b></font>
	</div>
	<div align="center">
		<table border="1">

			<tr>
				<th>번호</th>
				<th>제목</th>
				<th>이름</th>
				<th>날짜</th>
				<th>조회수</th>
				<th>group</th>
				<th>step</th>
				<th>indent</th>
			</tr>
			<c:forEach items="${qnalist }" var="dto">
				<tr>
					<td>${dto.id }</td>
					<td><a href="qnacontent_view?id=${dto.id }">${dto.title }</a></td>
					<td>${dto.name }</td>
					<td>${dto.savedate }</td>
					<%-- <td>${dto.content }</td> --%>
					<td>${dto.hit }</td>
					<td>${dto.idgroup }</td>
					<td>${dto.step }</td>
					<td>${dto.indent }</td>
				</tr>
			</c:forEach>
			<tr>
				<td colspan="8"><a href="qnawrite_view">글작성</a></td>
			</tr>
		</table>
	</div>
</body>
</html>