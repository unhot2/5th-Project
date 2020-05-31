<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<jsp:include page="../include/header.jsp" />
<section class="productInformationSection">
	<div align="center">
		<table border="1">
			<tr>
				<td>
					<img src=${productInfo.imgpath }>
				</td>
			</tr>
			<tr>
				<td>
					<input type="text" value="${productInfo.title }" name="title">
				</td>
			</tr>
			<tr>	
				<td>
					<input type="text" value="${productInfo.price }" name="price">
				</td>
			</tr>
		</table>
	</div>

</section>
<jsp:include page="../include/footer.jsp" />