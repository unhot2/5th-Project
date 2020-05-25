<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<<<<<<< HEAD
<jsp:include page="../include/header.jsp" />
<section class="qnaModifySection">
=======
<!DOCTYPE html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<jsp:include page="../include/header.jsp" />
<section class="qnaeModifySection">
>>>>>>> refs/heads/온슬기
	<div align="center">
		<form action="qnaModify">
				<font size="6"><b>상세내용</b></font>
				<table border="1">
				<tr>
					<th>번호</th>
					<td><input type="text" name="id" value="${qnaUpdate.id}" size="100"></td>
				</tr>
				<tr>
					<th>이름</th>
					<td><input type="text" name="name" value="${qnaUpdate.name }" size="100"></td>
				</tr>
				<tr>
					<th>제목</th>
					<td><input type="text" name="title" value="${qnaUpdate.title }" size="100"></td>
				</tr>
				<tr>
					<th>내용</th>
					<td><textarea name="content" rows="10" cols="100">${qnaUpdate.content }</textarea></td>
				</tr>
				
				<tr>
					<th colspan="2">
					<input type="submit" value="수정">&nbsp;&nbsp;&nbsp;
					<a href="qnaList">목록이동</a>	&nbsp;&nbsp;				
					<button type="button" onclick="location.href='qnaDelete?id=${qnaUpdate.id }'">삭제</button>&nbsp;&nbsp;
					<a href="qnaReply">답변</a>
					</th>
				</tr>
			
			</table>
		</form>
	</div>
</section>		
<jsp:include page="../include/footer.jsp" />