<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<div align="center">
	<table class="subfont">
		<tr>
			<c:choose>
				<c:when test="${category=='아우터'||category=='가디건'||category=='자켓'||category=='코트'||category=='점퍼'}">
					<td><a href="productsubList?category=가디건"><span>Cardigan</span></a>&nbsp;&nbsp;&nbsp;&nbsp;
					</td>
					<td><a href="productsubList?category=자켓"><span>Jacket</span></a>&nbsp;&nbsp;&nbsp;&nbsp;
					</td>
					<td><a href="productsubList?category=코트"><span>Coat</span></a>&nbsp;&nbsp;&nbsp;&nbsp;
					</td>
					<td><a href="productsubList?category=점퍼"><span>Jumper</span></a>&nbsp;&nbsp;&nbsp;&nbsp;
					</td>
				</c:when>
				<c:when test="${category == '드레스'}">
					<td><a href="productsubList?category=드레스"><span>All</span></a>&nbsp;&nbsp;&nbsp;&nbsp;
					</td>
				</c:when>
				<c:when test="${category=='상의'||category=='블라우스'||category=='티셔츠'||category=='니트'}">
					<td><a href="productsubList?category=블라우스"><span>blouse</span></a>&nbsp;&nbsp;&nbsp;&nbsp;
					</td>
					<td><a href="productsubList?category=티셔츠"><span>T-shirt</span></a>&nbsp;&nbsp;&nbsp;&nbsp;
					</td>
					<td><a href="productsubList?category=니트"><span>knit</span></a>&nbsp;&nbsp;&nbsp;&nbsp;
					</td>
				</c:when>
				<c:when test="${category=='하의'||category=='와이드팬츠'||category=='면바지'||category=='점프슈트'||category=='청바지'||category=='슬랙스'}">
					<td><a href="productsubList?category=와이드팬츠"><span>wide-pants</span></a>&nbsp;&nbsp;&nbsp;&nbsp;
					</td>
					<td><a href="productsubList?category=면바지"><span>Cotton-Pants</span></a>&nbsp;&nbsp;&nbsp;&nbsp;
					</td>
					<td><a href="productsubList?category=점프슈트"><span>Jumping-suit</span></a>&nbsp;&nbsp;&nbsp;&nbsp;
					</td>
					<td><a href="productsubList?category=청바지"><span>Denim</span></a>&nbsp;&nbsp;&nbsp;&nbsp;
					</td>
					<td><a href="productsubList?category=슬랙스"><span>Slacks</span></a>&nbsp;&nbsp;&nbsp;&nbsp;
					</td>
				</c:when>
				<c:when test="${category == '스커트'}">
					<td><a href="productsubList?category=스커트"><span>All</span></a>&nbsp;&nbsp;&nbsp;&nbsp;
					</td>
				</c:when>
				<c:when test="${category == '악세서리'||category == '헤어핀'||category == '안경'||category == '스카프벨트'||category == '가방신발'||category == '기타'}">
					<td><a href="productsubList?category=헤어핀"><span>Hairpin</span></a>&nbsp;&nbsp;&nbsp;&nbsp;
					</td>
					<td><a href="productsubList?category=안경"><span>Glasses</span></a>&nbsp;&nbsp;&nbsp;&nbsp;
					</td>
					<td><a href="productsubList?category=스카프벨트"><span>Scarf & Belt</span></a>&nbsp;&nbsp;&nbsp;&nbsp;
					</td>
					<td><a href="productsubList?category=가방신발"><span>Bag & Shoes</span></a>&nbsp;&nbsp;&nbsp;&nbsp;
					</td>
					<td><a href="productsubList?category=기타"><span>ETC</span></a>&nbsp;&nbsp;&nbsp;&nbsp;

					</td>
				</c:when>
			</c:choose>
		</tr>
	</table>
</div>

</body>
</html>