<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<jsp:include page="../include/header.jsp" />
<section class="userFind">
	<h1>아이디 /비밀번호 찾기</h1>
	<form action="find">
		<table>
			<tr>
				<th>ID :</th>
				<th><input type="text" name="id" placeholder="찾을 아이디 입력"></th>
			</tr>
			<tr>
				<td><input type="submit" value="입력"></td>
			</tr>
		</table>
	</form>
</section>
<jsp:include page="../include/footer.jsp" />

