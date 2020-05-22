<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<jsp:include page="../include/header.jsp" />
<section class="qnaeReplySection">
	<div align="center">
		<form action="reply">
			<table border="1">
				<tr>
					<td>번호</td>
					<td>{dto.id}</td>
				</tr>
				<tr>
					<td>조회수</td>
					<td>{dto.hit}</td>
				</tr>
				<tr>
					<td>제목</td>
					<td><input type="text" name="title" value="${dto.title }"></td>
				</tr>
				<tr>
					<td>내용</td>
					<td><textarea rows="10" name="content"></textarea></td>
				</tr>
				<tr>
					<td colspan="2"><input type="submit" value="답변"> <a
						href="qnsList">목록</a></td>
				</tr>
			</table>
		</form>
	</div>
</section>
<jsp:include page="../include/footer.jsp" />