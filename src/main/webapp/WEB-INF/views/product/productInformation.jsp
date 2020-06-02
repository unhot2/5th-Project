<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<jsp:include page="../include/header.jsp" />
<section class="productInformationSection">
	<div align="center">
		<table border="1">
			<tr>
				<td><img src=${productInfo.imgpath }></td>
				<td>
					<table border="1">
						<tr>
							<td>상품명</td>
							<td><input type="text" value="${productInfo.title }" name="title"></td>
						</tr>
						<tr>
							<td>상품가격</td>
							<td><input type="text" value="${productInfo.price }" name="price"></td>
						</tr>
						<tr>
							<td colspan="2" align="center">
								<form action="cart">
									<input type="hidden" name="product_id" value="${productInfo.product_id }">
									<select name="amount"> 
										<c:forEach begin="1" end="99" var="i">
											<option value="${i }">${i }</option>
										</c:forEach>
									</select>&nbsp;개
									<input type="submit" value="장바구니">
								</form>
									<a href="productAll">상품 목록</a>
							</td>
						</tr>
					</table>
				</td>
			</tr>
		</table>
	</div>

</section>
<jsp:include page="../include/footer.jsp" />