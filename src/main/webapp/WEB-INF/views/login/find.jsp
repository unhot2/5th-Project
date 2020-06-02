<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<jsp:include page="../include/header.jsp" />
<h1>비밀번호 찾기</h1>
<form action="answerChk">
	<c:choose>
		<c:when test="${dto.userQuestion eq 'q1' }">
			<table>
				<tr>
					<th>질문</th>
					<td>나의 보물 1호는?</td>
				</tr>
				<tr>
					<th>답변</th>
					<td><input type="text" name="anwser" placeholder="답변 입력">
						<input type="hidden" name="id" value="${id}"></td>

				</tr>
				<tr>
					<td colspan="2"><input type="submit" value="답변확인"></td>
				</tr>
			</table>
		</c:when>
		<c:when test="${dto.userQuestion eq 'q2' }">
			<table>
				<tr>
					<th>질문</th>
					<td>나의 고향은?</td>
				</tr>
				<tr>
					<th>답변</th>
					<td><input type="text" name="anwser" placeholder="답변 입력"></td>
				</tr>
				<tr>
					<td colspan="2"><input type="submit" value="답변확인"><input type="hidden" name="id" value="${id}"></td>
				</tr>
			</table>
		</c:when>
		<c:when test="${dto.userQuestion eq 'q3' }">
			<table>
				<tr>
					<th>질문</th>
					<td>가장 소중한 것은?</td>
				</tr>
				<tr>
					<th>답변</th>
					<td><input type="text" name="anwser" placeholder="답변 입력"></td>
				</tr>
				<tr>
					<td colspan="2"><input type="submit" value="답변확인"><input type="hidden" name="id" value="${id}"></td>
				</tr>
			</table>
		</c:when>
		<c:when test="${dto.userQuestion eq 'q4' }">
			<table>
				<tr>
					<th>질문</th>
					<td>나의 초등학교 이름은?</td>
				</tr>
				<tr>
					<th>답변</th>
					<td><input type="text" name="anwser" placeholder="답변 입력"></td>
				</tr>
				<tr>
					<td colspan="2"><input type="submit" value="답변확인"><input type="hidden" name="id" value="${id}"></td>
				</tr>
			</table>
		</c:when>
		<c:when test="${dto.userQuestion eq 'q5' }">
			<table>
				<tr>
					<th>질문</th>
					<td>가장 친한 친구의 이름은?</td>
				</tr>
				<tr>
					<th>답변</th>
					<td><input type="text" name="anwser" placeholder="답변 입력"></td>
				</tr>
				<tr>
					<td colspan="2"><input type="submit" value="답변확인"><input type="hidden" name="id" value="${id}"></td>
				</tr>
			</table>
		</c:when>
		<c:when test="${dto.userQuestion eq 'q6' }">
			<table>
				<tr>
					<th>질문</th>
					<td>나의 첫사랑의 이름은?</td>
				</tr>
				<tr>
					<th>답변</th>
					<td><input type="text" name="anwser" placeholder="답변 입력"></td>
				</tr>
				<tr>
					<td colspan="2"><input type="submit" value="답변확인"><input type="hidden" name="id" value="${id}"></td>
				</tr>
			</table>
		</c:when>
		<c:when test="${dto.userQuestion eq 'q7' }">
			<table>
				<tr>
					<th>질문</th>
					<td>어머니의 생일은?</td>
				</tr>
				<tr>
					<th>답변</th>
					<td><input type="text" name="anwser" placeholder="답변 입력"></td>
				</tr>
				<tr>
					<td colspan="2"><input type="submit" value="답변확인"><input type="hidden" name="id" value="${id}"></td>
				</tr>
			</table>
		</c:when>
	</c:choose>
</form>
<jsp:include page="../include/footer.jsp" />