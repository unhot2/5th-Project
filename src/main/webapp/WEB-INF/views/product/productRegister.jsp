<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<jsp:include page="../include/header.jsp" />
<section class="ProductWriteSection">
	<h2>상품 등록</h2>
	<form action="productSave" enctype="multipart/form-data" method="post">
		<table border="1">
			<tr>
				<td>상품 번호</td>
				<td><input type="text" name="product_id"></td>
			</tr>
			<tr>
				<td>상품명</td>
				<td><input type="text" name="title"></td>
			</tr>
			<tr>
				<td>가격</td>
				<td><input type="text" name="price"></td>
			</tr>
			<tr>
				<td>카테고리</td>
				<td><input type="text" name="category"></td>
			</tr>
			<tr>
				<td>상세 카테고리</td>
				<td><input type="text" name="subcategory"></td>
			</tr>
			<tr>
				<td>상품이미지</td>
				<td><input type="file" name="uploadFile" id="uploadFile"></td>
			</tr>
			<tr>
				<td>
				<div class="inputArea">
				 	<label for="gdsImg">미리보기</label>
				 	<div class="select_img"><img src="" /></div>
				 
				 	<script>
					  $("#gdsImg").change(function(){
					   if(this.files && this.files[0]) {
					    var reader = new FileReader;
					    reader.onload = function(data) {
					     $(".select_img img").attr("src", data.target.result).width(500);        
					    }
					    reader.readAsDataURL(this.files[0]);
					   }
					  });
				 	</script>
				</div>
				</td>
			</tr>
			<tr>
				<td colspan="2" align="center">
					<input type="submit" value="등록">
					<input type="button" value="목록" onclick="location.href='${path}/sample/productAll';">
				</td>
			</tr>
			
		</table>
	</form>
</section>
<jsp:include page="../include/footer.jsp" />