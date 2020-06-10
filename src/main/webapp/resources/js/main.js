function idcheck() {

	var query = {
		userId : $("#userId").val()
	};

	$.ajax({
		url : "idCheck",
		type : "post",
		data : query,
		success : function(data) {

			if (data == 1) {
				$(".result .msg").text("사용 불가");
				$(".result .msg").attr("style", "color:red");
				$("#submit").attr("disabled", "disabled")
			} else {
				$(".result .msg").text("사용 가능");
				$(".result .msg").attr("style", "color:blue");
				$("#submit").removeAttr("disabled");
			}
		}
	});
};

function cntUp(param) {

	$.ajax({
		url : "cntUp",
		type : "get",
		data : {
			cartId : param
		},
		success : function(data) {
			location.href="cartList"
		}
	});
};

function cntDown(param) {
	
	$.ajax({
		url : "cntDown",
		type : "get",
		data : {
			cartId : param
		},
		success : function(data) {
			location.href="cartList"
		}
	});
};

function DaumPostcode() {
	new daum.Postcode({
		oncomplete : function(data) {
			// 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

			// 각 주소의 노출 규칙에 따라 주소를 조합한다.
			// 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기한다.
			var fullAddr = ''; // 최종 주소 변수
			var extraAddr = ''; // 조합형 주소 변수

			// 사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
			if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택 했을 경우
				fullAddr = data.roadAddress;

			} else { // 사용자가 지번 주소를 선택했을 경우 (J)
				fullAddr = data.jibunAddress;
			}

			// 사용자가 선택한 주소가 도로명 타입일때 조합한다.
			if (data.userSelectedType === 'R') {
				// 법정동명이 있을 경우 추가한다.
				if (data.bname !== '') {
					extraAddr += data.bname;
				}
				// 건물명이 있을 경우 추가한다.
				if (data.buildingName !== '') {
					extraAddr += (extraAddr !== '' ? ', ' + data.buildingName
							: data.buildingName);
				}
				// 조합형 주소의 유무에 따라 양쪽에 괄호를 추가하여 최종 주소를 만든다.
				fullAddr += (extraAddr !== '' ? ' (' + extraAddr + ')' : '');
			}
			// 우편번호와 주소 정보를 해당 필드에 넣는다.
			document.getElementById('postcode').value = data.zonecode; // 5자리
																		// 새우편번호
																		// 사용
			document.getElementById('address').value = fullAddr;
		}

	}).open();
}

function copydata() {
	$(".rcName").val($(".orderName").val())
	$(".rcPostCode").val($(".orderPostCode").val())
	$(".rcAddr").val($(".orderAddr").val())
}

function like() {
	$.ajax({
		url: "BoardServlet",
		type: "POST",
		cache: false,
		dataType: "json",
		data: $('#like_form').serialize(), //아이디가 like_form인 곳의 모든 정보를 가져와 파라미터 전송 형태(표준 쿼리형태)로 만들어줌
		success:
			function(data){ //ajax통신 성공시 넘어오는 데이터 통째 이름 =data
			alert("'좋아요'가 반영되었습니다!") ; // data중 put한 것의 이름 like
			$("#like_result").html(data.like); //id값이 like_result인 html을 찾아서 data.like값으로 바꿔준다.
		},
		error:
			function (request, status, error){
			alert("ajax실패")
		}
	});
}

function hover(element){
	element.setAttribute('src',"resources/img/filllike.png")
}
function unhover(element){
	element.setAttribute('src',"resources/img/like.png")
}