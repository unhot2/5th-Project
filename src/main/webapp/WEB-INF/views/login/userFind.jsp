<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<jsp:include page="../include/header.jsp" />
<script>
	$(document).on('click','#inputBtn', function(){
		if(document.getElementById('id').value==""){
			alert("아이디를 입력하십시오");
			location.href="userFind";
		}
		else if(${idconfirm==false}){
			alert("아이디가 존재하지 않습니다")
			location.href="userFind";
		}
		else{
			$("#find").attr('action',"find")
			$("#find").submit()
		}
	});
</script>
<style>
.checkId {
	max-width: 18%;
	max-height: 50%;
	margin-left: 700px;
	margin-bottom: 100px;
}
</style>
<section class="userFind">
	<div module="member_findpasswd">
		<!--@css(/css/module/member/find_passwd.css)-->
		<!--
        $nextURL = /member/passwd/find_passwd_question.html
     -->
		<div class="checkId">
			<h3>
				<img src="resources/img/etc/아이디비밀번호.png" alt="아이디 /비밀번호 찾기" />
			</h3>
			<fieldset>
				<form id="find" action="find">
					<table>
						<tr>
							<th>ID :</th>
							<th><input type="text" name="id" id="id"
								placeholder="찾을 아이디 입력"></th>
						</tr>
						<tr>
							<td colspan="2"><p class="button">
									<a id="inputBtn"><img
										src="http://img.echosting.cafe24.com/skin/base_ko_KR/member/btn_submit.gif"
										alt="입력" /></a>
								</p></td>
						</tr>
					</table>

				</form>
			</fieldset>
		</div>
	</div>
</section>
<jsp:include page="../include/footer.jsp" />

