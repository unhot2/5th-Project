<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<jsp:include page="../include/header.jsp" />
<section class="noticeWriteSection">
	<div align="center">
		<form action="noticeWrite">
			<table border="1">
				<tr>
					<td>아이디</td>
					<td>&nbsp;${userId }<input type="hidden" name="name"
						value="${userId }"></td>
				<tr>
					<td>제목</td>
					<td><input type="text" name="title"></td>
				<tr>
					<td>내용</td>
					<td><textarea rows="5" cols="50" name="content"></textarea></td>
				</tr>
				<tr>
					<td colspan="2"><input type="submit" value="작성"></td>
				</tr>
			</table>
		</form>
	</div>
</section>
<jsp:include page="../include/footer.jsp" />