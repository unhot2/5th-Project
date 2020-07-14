<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<jsp:include page="../include/header.jsp" />
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
<script>
	$(document).on('click','#inputBtn', function(){
		if(document.getElementById('id').value==""){
			alert("아이디를 입력하십시오");
			location.href="userFind";
		}
		else if(${idconfirm == false}){
			alert("아이디가 존재하지 않습니다")
			location.href="userFind";
		}
		else{
			$("#find").attr('action',"find")
			$("#find").submit()
		}
	});
</script>
<section>
	<div class="checkId">
		<h3>
			<img src="resources/img/etc/아이디비밀번호.png" alt="아이디 /비밀번호 찾기" />
		</h3>
		<fieldset>
			<form id="find" action="find">
				<b>ID :</b> <input type="text" name="id" id="id"
					placeholder="찾을 아이디 입력"> <br> <br> 
					<a id="inputBtn"> 
					<img src="http://img.echosting.cafe24.com/skin/base_ko_KR/member/btn_submit.gif" alt="입력" />
					</a>
			</form>
		</fieldset>
	</div>
</section>
<jsp:include page="../include/footer.jsp" />

