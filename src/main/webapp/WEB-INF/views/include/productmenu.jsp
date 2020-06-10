<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<div align="center">
	<c:choose>
		<c:when test="${dto.category == '아우터' }">
			<table>
					<tr>
					<c:forEach items="${productList}" var="dto">
						<td>
							<h2>
								<a href="productsubList?subcategory=가디건"><span>${dto.subcategory }</span></a>&nbsp;&nbsp;&nbsp;&nbsp;
							</h2>
						</td>
						</c:forEach>
					</tr>
				
			</table>
		</c:when>

	</c:choose>

</div>
</body>
</html>