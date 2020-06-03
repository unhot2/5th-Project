<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<jsp:include page="../include/header.jsp" />
<jsp:include page="../include/productmenu.jsp" />
<script>
	$(document).ready(function(){
		$("#editBtn").click(function(){
			var productName = $("#productName").val();
			var productPrice = $("#productPrice").val();
			var productDesc = $("#productDesc").val();
			var productPhoto = $("#productPhoto").val();
			
			if(productName == "") {
				alert("상품명을 입력해주세요");
				productName.foucs();
			} else if (productPrice == "") {
				alert("상품 가격을 입력해주세요");
				productPrice.focus();
			} else if (productDesc == "") {
				alert("상품 설명을 입력해주세요");
				productDesc.focus();
			} /* else if (productPhoto == "") {
				alert("상품 사진을 입력해주세요");
				productPhoto.focus();
			} */
			document.form1.action = "${path}/shop/product/update.do";
			document.form1.submit();
		});
		$("#deleteBtn").click(function(){
			if(confirm("상품을 삭제하시겠습니까?")){
				document.form1.action = "${path}/shop/product/delete.do";
				document.form1.submit();
			}
		});
		$("#listBtn").click(function(){
			location.href = "${path}/shop/product/list.do";	
		});
	});
</script>
<section class="ProductEditSection">
	<h2>상품 정보/삭제</h2>
	<form action="" id="form1" name="form1" enctype="multipart/form-data" method="post">
		<table border="">
			<tr>
				<td>상품 이미지</td>
				<td>
					<img src="${dto.imgpath}" height="300px" width="310px">
					<br>
					<input type="file" id="productPhoto" name="productPhoto">
				</td>
			</tr>
			<tr>
				<td>상품명</td>
				<td><input type="text" id="productName" name="productName" value="${dto.title }"></td>
			</tr>
			<tr>
				<td>가격</td>
				<td><input type="number" id="productPrice" name="productPrice" value="${dto.price }"></td>
			</tr>
			<tr>
				<td>상품소개</td>
				<td><textarea id="productDesc" name="productDesc" rows="5" cols="60">소개란</textarea></td>
			</tr>
			<tr>
				<td colspan="2" align="center">
					<input type="hidden" name="productId" value="${dto.product_id}">
					<input type="button" id="editBtn" value="수정">
					<input type="button" id="deleteBtn"value="삭제">
					<input type="button" id="listBtn" value="상품목록">	
				</td>	
			</tr>
		</table>
	</form>
</section>
<jsp:include page="../include/footer.jsp" />