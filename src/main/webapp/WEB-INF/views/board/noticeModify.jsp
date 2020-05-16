<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<jsp:include page="../include/header.jsp" />
<section class="noticeModifyFormSection">
	<h1>회원정보</h1>
	<form action="noticeModify">
		<table border="2">
			<tr>
				<th>아이디</th>
				<th><input type="text" value="${noticeDetail.id }" name="id"></th>
			</tr>
			<tr>
				<th>이름</th>
				<td><input type="text" value="${noticeDetail.name }" name="name"></td>
			</tr>
			<tr>
				<th>제목</th>
				<td><input type="text" value="${noticeDetail.title }" name="title"></td>
			</tr>
			<tr>
				<th>내용</th>
				<td><textarea row="5" cols="50" name="content">${noticeDetail.content }</textarea></td>
			</tr>
			<tr>
				<td colspan="2"><input type="submit" value="수정"></td>
			</tr>
		</table>
	</form>
</section>
<jsp:include page="../include/footer.jsp" />