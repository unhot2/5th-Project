<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<jsp:include page="../include/header.jsp" />
<section class="qnaWriteSection">
	<div align="center">
		<form action="qnaWrite">
			<font size="6"><b>QnA</b></font>
			<table class="table table-hover">
				<thead>
				<tr class="table-light">
					<th>아이디</th>
					<td>&nbsp;${userId }<input type="hidden" name="name"
						value="${userId }"></td>
				</tr>
				<tr class="table-light">
					<th>제목</th>
					<td><input type="text" name="title" size="100"
						value="${qnaUpdate.title }"></td>
				</tr>
				<tr class="table-light">
					<th>내용</th>
					<td><textarea name="content" rows="10" cols="100">${qnaUpdate.content }</textarea></td>
				</tr>
				<tr class="table-light">
					<th colspan="2"><input type="submit" value="저장">&nbsp;&nbsp;&nbsp;
						<a href="qnaList">목록이동</a></th>
				</tr>
				</thead>
			</table>
		</form>
	</div>
</section>
<jsp:include page="../include/footer.jsp" />