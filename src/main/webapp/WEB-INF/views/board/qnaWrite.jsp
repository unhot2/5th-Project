<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<jsp:include page="../include/header.jsp" />
<section class="qnaeWriteSection">
	<div align="center">
		<form action="qnaWrite">
			<font size="6"><b>QnA</b></font>
			<table border="1">
				<tr>
					<th>이름</th>
					<td><input type="text" name="name" size="100" value="${qnaUpdate.name }"></td>
				</tr>
				<tr>
					<th>제목</th>
					<td><input type="text" name="title" size="100" value="${qnaUpdate.title }"></td>
				</tr>
				<tr>
					<th>내용</th>
					<td><textarea name="content" rows="10" cols="100">${qnaUpdate.content }</textarea></td>
				</tr>
				<tr>
					<th colspan="2"><input type="submit" value="저장">&nbsp;&nbsp;&nbsp;
					<a href="qnaList">목록이동</a></th>
				</tr>
			</table>
		</form>
	</div>
</section>
<jsp:include page="../include/footer.jsp" />