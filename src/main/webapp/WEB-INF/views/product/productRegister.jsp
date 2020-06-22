<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<link rel="stylesheet" href="resources/css/productRegister.css">
<!DOCTYPE html>
<jsp:include page="../include/header.jsp" />
<section class="ProductWriteSection">
<form action="productSave" enctype="multipart/form-data" method="post" class="main-reg">
	<h2 class="form-heading">상품 등록</h2>
		<table class="form-group">
			<tr>
				<td class="form-label">상품 번호</td>
				<td class="form-input"><input type="text" name="product_id"></td>
			</tr>
			<tr>
				<td class="form-label">상품명</td>
				<td class="form-input"><input type="text" name="title"></td>
			</tr>
			<tr>
				<td class="form-label">가격</td>
				<td class="form-input"><input type="text" name="price"></td>
			</tr>
			<tr>
				<td class="form-label">카테고리</td>
				<td  class="form-input">
				<select name="category">
					<option value="select" selected="selected">선택하세요</option>
					<option value="아우터">아우터</option>
					<option value="드레스">드레스</option>
					<option value="상의">상의</option>
					<option value="하의">하의</option>
					<option value="스커트">스커트</option>
					<option value="악세서리">악세서리</option>
				</select>
				</td>
			</tr>
			<tr>
				<td class="form-label">상세 카테고리</td>
				<td class="form-input"><input type="text" name="subcategory"></td>
			</tr>
			<tr>
				<td class="form-label">섬네일 이미지</td>
				<td class="form-input"><input type="file" name="uploadthFile" id="uploadThFile"></td>
			</tr>
			<tr>
				<td colspan="2" class="form-label">
				 	<label for="uploadThFile">미리보기</label>
				 	<div class="select_Thimg"><img src="" /></div>
				 	<script>
					  $("#uploadThFile").change(function(){
					   if(this.files && this.files[0]) {
					    var reader = new FileReader;
					    reader.onload = function(data) {
					     $(".select_Thimg img").attr("src", data.target.result).width(500);       
					    }
					    reader.readAsDataURL(this.files[0]);
					   }
					  });
				 	</script>
				</td>
			</tr>
			<tr>
				<td class="form-label">상세 이미지</td>
				<td class="form-input"><input multiple="multiple" type="file" name="uploadFile" id="uploadFile"></td>
			</tr>
			<tr>
				<td colspan="2" class="form-label">
				 	<label for="uploadFile">미리보기</label>
				 	<div class="select_img"><img src="" /></div>
				 
				 	<script>
					  $("#uploadFile").change(function(){
					   if(this.files && this.files[0]) {
					    var reader = new FileReader;
					    reader.onload = function(data) {
					     $(".select_img img").attr("src", data.target.result).width(500);       
					    }
					    reader.readAsDataURL(this.files[0]);
					   }
					  });
				 	</script>
				</td>
			</tr>
			<tr>
				<td colspan="2" align="center" class="form-label">
					<input class="btn" type="submit" value="등록">
					<input class="btn" type="button" value="목록" onclick="location.href='${path}/sample/productAll';">
				</td>
			</tr>
			
		</table>
	</form>
</section>	
<jsp:include page="../include/footer.jsp" />