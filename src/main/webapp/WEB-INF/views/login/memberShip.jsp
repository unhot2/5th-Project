<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<jsp:include page="../include/header.jsp" />
<script>
   $(document).ready(function() {
      $('input[type="text"]').keyup(function() {
         var chk;
         if ($("#userId").val() != ''&&$("#userPwd").val() != ''&&$("#userName").val() != ''&&$("#userPhone").val() != ''&&$("#postcode").val() != ''&&$("#address").val() != ''&&$("#userAnswer").val() != '') {
            chk = true;
         }
         else if ($("#userId").val() == '') {
            chk = false;
         }
         else if ($("#userPwd").val() == '') {
            chk = false;
         }
         else if ($("#userName").val() == '') {
            chk = false;
         }
         else if ($("#userPhone").val() == '') {
            chk = false;
         }
         else if ($("#postcode").val() == '') {
            chk = false;
         }
         else if ($("#address").val() == '') {
            chk = false;
         }
         else if ($("#userAnswer").val() == '') {
            chk = false;
         }
         if (chk) {
            $(':input[type="submit"]').prop('disabled', false);
         }
         else if(chk == false){
            $(':input[type="submit"]').prop('disabled', true);
            
         }
      });
   });
</script>
<link rel="stylesheet" href="resources/css/membership.css">
<section class="container">
	<article class="half">
		<h1>Azure</h1>
		<div class="tabs">
			<span class="tab signup"><a href="#signup">회원가입</a></span>
		</div>
		<div class="content">

			<div class="signup-cont cont">
				<form id="saveMember" action="saveMember" method="post">
					<font color="red">*</font>
					아이디 <input type="text" name="userId" id="userId" class="inpt" required="required" placeholder="Your id">
					<button type="button" onclick="idcheck()">아이디 확인</button>
					<p class="result">
						<span class="msg">아이디를 확인해 주십시오</span>
					</p>
					<font color="red">*</font>
					비밀번호 <input type="password"name="userPwd" id="userPwd" class="inpt" required="required"placeholder="Your password">
					<font color="red">*</font>
					이름 <input type="text" name="userName"id="userName" class="inpt" required="required"placeholder="Your name">
					<font color="red">*</font>핸드폰번호 <input type="text" name="userPhone" id="userPhone" class="inpt" required="required" maxlength="11"placeholder="Your phoneNumber"><br>
					<font color="red">*</font>
					주소 <input type="text" name="userPostCode" id="postcode" placeholder="postNum"><br>
					<input type="button" id="Phone" onclick="DaumPostcode()" value="우편번호 찾기"><br>
					<input type="text" name="userAddr" id="address" placeholder="주소"><br>
					성별<br> 
					남자<input type="radio" name="userGender"value="남자" checked="checked">
					여자<input type="radio"name="userGender" value="여자"><br>
					 생일<br>
					<input type="date" name="userBirth"><br>
					이메일<br>
					<input type="email" name="userEmail" id="email" class="inpt" required="required" placeholder="Your email">
					<font color="red">*</font>개인정보용 질문 <select size="1" name="userQuestion">
						<option value="q1" selected>나의 보물 1호는?
						<option value="q2">나의 고향은?
						<option value="q3">가장 소중한 것은?
						<option value="q4">나의 초등학교 이름은?
						<option value="q5">가장 친한 친구의 이름은?
						<option value="q6">나의 첫사랑의 이름은?
						<option value="q7">어머니의 생일은?
					</select>
					<input type="text" name="userAnswer" id="userAnswer"><br>
					<input type="submit" value="회원가입" class="submit" disabled="disabled"> <a href="#" class="more">위로</a>
				</form>
			</div>
		</div>
	</article>
	<div class="half bg"></div>
</section>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
<script type="text/javascript">
	$('.tabs .tab').click(function() {
		if ($(this).hasClass('signin')) {
			$('.tabs .tab').removeClass('active');
			$(this).addClass('active');
			$('.cont').hide();
			$('.signin-cont').show();
		}
		if ($(this).hasClass('signup')) {
			$('.tabs .tab').removeClass('active');
			$(this).addClass('active');
			$('.cont').hide();
			$('.signup-cont').show();
		}
	});
	$('.container .bg').mousemove(
			function(e) {
				var amountMovedX = (e.pageX * -1 / 30);
				var amountMovedY = (e.pageY * -1 / 9);
				$(this).css('background-position',
						amountMovedX + 'px ' + amountMovedY + 'px');
			});
</script>
<jsp:include page="../include/footer.jsp" />