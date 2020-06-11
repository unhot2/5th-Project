<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<div align="center">
	<table>
		<tr>
			<c:choose>
				<c:when test="${category == '아우터'}">
					<td>
						<h2>
							<a href="productsubList?subcategory=가디건"><span>가디건</span></a>&nbsp;&nbsp;&nbsp;&nbsp;
						</h2>
					</td>
					<td>
						<h2>
							<a href="productsubList?subcategory=자켓"><span>자켓</span></a>&nbsp;&nbsp;&nbsp;&nbsp;
						</h2>
					</td>
					<td>
						<h2>
							<a href="productsubList?subcategory=코트"><span>코트</span></a>&nbsp;&nbsp;&nbsp;&nbsp;
						</h2>
					</td>
					<td>
						<h2>
							<a href="productsubList?subcategory=점퍼"><span>점퍼</span></a>&nbsp;&nbsp;&nbsp;&nbsp;
						</h2>
					</td>
				</c:when>
				<c:when test="${category == '상의'}">
					<td>
						<h2>
							<a href="productsubList?subcategory=블라우스"><span>블라우스</span></a>&nbsp;&nbsp;&nbsp;&nbsp;
						</h2>
					</td>
					<td>
						<h2>
							<a href="productsubList?subcategory=티셔츠"><span>티셔츠</span></a>&nbsp;&nbsp;&nbsp;&nbsp;
						</h2>
					</td>
					<td>
						<h2>
							<a href="productsubList?subcategory=니트"><span>니트</span></a>&nbsp;&nbsp;&nbsp;&nbsp;
						</h2>
					</td>
					<td>
						<h2>
							<a href="productsubList?subcategory=반팔"><span>반팔</span></a>&nbsp;&nbsp;&nbsp;&nbsp;
						</h2>
					</td>
				</c:when>
				<c:when test="${category == '하의'}">
					<td>
						<h2>
							<a href="productsubList?subcategory=점프슈트"><span>점프슈트</span></a>&nbsp;&nbsp;&nbsp;&nbsp;
						</h2>
					</td>
					<td>
						<h2>
							<a href="productsubList?subcategory=와이드팬츠"><span>와이드팬츠</span></a>&nbsp;&nbsp;&nbsp;&nbsp;
						</h2>
					</td>
					<td>
						<h2>
							<a href="productsubList?subcategory=스커트"><span>스커트</span></a>&nbsp;&nbsp;&nbsp;&nbsp;
						</h2>
					</td>
					<td>
						<h2>
							<a href="productsubList?subcategory=면바지"><span>면바지</span></a>&nbsp;&nbsp;&nbsp;&nbsp;
						</h2>
					</td>
				</c:when>
				<c:when test="${category == '악세서리'}">
					<td>
						<h2>
							<a href="productsubList?subcategory=스카프"><span>스카프</span></a>&nbsp;&nbsp;&nbsp;&nbsp;
						</h2>
					</td>
					<td>
						<h2>
							<a href="productsubList?subcategory=헤어핀"><span>헤어핀</span></a>&nbsp;&nbsp;&nbsp;&nbsp;
						</h2>
					</td>
					<td>
						<h2>
							<a href="productsubList?subcategory=안경"><span>안경</span></a>&nbsp;&nbsp;&nbsp;&nbsp;
						</h2>
					</td>
					<td>
						<h2>
							<a href="productsubList?subcategory=벨트"><span>벨트</span></a>&nbsp;&nbsp;&nbsp;&nbsp;
						</h2>
					</td>
					<td>
						<h2>
							<a href="productsubList?subcategory=가방"><span>가방</span></a>&nbsp;&nbsp;&nbsp;&nbsp;
						</h2>
					</td>
					<td>
						<h2>
							<a href="productsubList?subcategory=신발"><span>신발</span></a>&nbsp;&nbsp;&nbsp;&nbsp;
						</h2>
					</td>
					<td>
						<h2>
							<a href="productsubList?subcategory=기타"><span>기타</span></a>&nbsp;&nbsp;&nbsp;&nbsp;
						</h2>
					</td>
				</c:when>
			</c:choose>
		</tr>
	</table>
</div>

</body>
</html>