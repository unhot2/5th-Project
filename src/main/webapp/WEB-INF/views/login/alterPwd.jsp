<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<jsp:include page="../include/header.jsp" />
<section class="alterPwdSection">
	<form action="alterPwd">
		<table>
			<tr>
				<th>변경할 비밀번호</th>
				<td><input type="text" name="userPwd" placeholder="변경할 비밀번호 입력">
					<input type="hidden" name="userId" value="${id }"></td>
			</tr>
			<tr>
				<td colspan="2"><input type="submit" value="변경"></td>
			</tr>
		</table>
	</form>
</section>
<jsp:include page="../include/footer.jsp" />