<%@page import="com.team.dto.LoginDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet" integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN" crossorigin="anonymous">
<link rel="stylesheet" href="resources/css/cartOrder.css">
<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">

<!DOCTYPE html>
<%
	String name = (String) request.getAttribute("name");
	String email = (String) request.getAttribute("email");
	String title = (String) request.getAttribute("title");
	String phone = (String) request.getAttribute("phone");
	String addr = (String) request.getAttribute("addr");
	int boo = (int) request.getAttribute("boo");
	String postcode = (String) request.getAttribute("postcode");
	int totalMoney = (int) request.getAttribute("totalMoney");
%>
<jsp:include page="../include/header.jsp" />
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script type="text/javascript" src="https://cdn.iamport.kr/js/iamport.payment-1.1.5.js"></script>
<script>
if (<%=boo%>==0){
$(document).on('click', '#kakaopay', function() {
   var IMP = window.IMP; // 생략가능
   IMP.init('imp01815205'); // 'iamport' 대신 부여받은 "가맹점 식별코드"를 사용
   IMP.request_pay({
       pg : 'kakaopay', // version 1.1.0부터 지원.
       pay_method : 'card',
       merchant_uid : 'merchant_' + new Date().getTime(),
       name : '<%=title%>',
       amount : <%=totalMoney%>,
       buyer_email : '<%=email%>',
       buyer_name : '<%=name%>',
       buyer_tel : '<%=phone%>',
       buyer_addr : '<%=addr%>',
       buyer_postcode : '<%=postcode%>',
         m_redirect_url : 'http://localhost:8083/sample/'
      }, function(rsp) {
         $.ajax({
            url : "cardPay",
            data : $("#cartOrder").serialize(),
            success : function(data) {

					var msg = '결제가 완료되었습니다.';
					msg += '고유ID : ' + rsp.imp_uid;
					msg += '상점 거래ID : ' + rsp.merchant_uid;
					msg += '결제 금액 : ' + rsp.paid_amount;
					msg += '카드 승인번호 : ' + rsp.apply_num;
					alert(msg);
					location.href="#"; //여기에 결제 완료 후 이동될 결제내역? 같은 곳 
				},
				error : function(data) {
					var msg = '결제에 실패하였습니다.';
					msg += '에러내용 : ' + rsp.error_msg;
					alert(msg);
				}
			});
		})
   })
}else{
   $(document).on('click', '#kakaopay', function() {
      var IMP = window.IMP; // 생략가능
      IMP.init('imp01815205'); // 'iamport' 대신 부여받은 "가맹점 식별코드"를 사용
      IMP.request_pay({
          pg : 'kakaopay', // version 1.1.0부터 지원.
          pay_method : 'card',
          merchant_uid : 'merchant_' + new Date().getTime(),
          name : '<%=title%>',
          amount : <%=totalMoney%>,
          buyer_email : '<%=email%>',
          buyer_name : '<%=name%>',
          buyer_tel : '<%=phone%>',
          buyer_addr : '<%=addr%>',
          buyer_postcode : '<%=postcode%>',
            m_redirect_url : 'http://localhost:8083/sample/'
         }, function(rsp) {
            $.ajax({
               url : "cardPayment",
               data : $("#cartOrder").serialize(),
               success : function(data) {

                  var msg = '결제가 완료되었습니다.';
                  msg += '고유ID : ' + rsp.imp_uid;
                  msg += '상점 거래ID : ' + rsp.merchant_uid;
                  msg += '결제 금액 : ' + rsp.paid_amount;
                  msg += '카드 승인번호 : ' + rsp.apply_num;
                  alert(msg);
                  location.href="#"; //여기에 결제 완료 후 이동될 결제내역? 같은 곳 
               },
               error : function(data) {
                  var msg = '결제에 실패하였습니다.';
                  msg += '에러내용 : ' + rsp.error_msg;
                  alert(msg);
               }
               
            });
            
         })

      })
}
</script>

<section class="cartOrder">
 <div class="container mb-4">
    <div class="row">
        <div class="col-12">
            <div class="table-responsive"> 
                <h1 align="center">ORDER FORM</h1>
                
                <table class="table table-striped">
					<thead>
						<tr>
							<td scope="col" class="text-center">사진</td>
							<td scope="col" class="text-center">제품</td>
							<td scope="col" class="text-center">수량</td>
							<td scope="col" class="text-center">가격</td>
						</tr>
					</thead>
			<c:choose>
			<c:when test="${boo eq 0}">
			<c:forEach var="dto" items="${cartList}">
		
				<tr>
					<td class="text-center"><img src="${dto.imgpath }" style="width: 100px; height: 100px;"></td>
					<td class="text-center">${dto.title }</td>
					<td class="text-center">${dto.amount }</td>
					<td class="text-center"><fmt:formatNumber value="${dto.price }" pattern="##,###" />원</td>
				</tr>
			</c:forEach>
			</c:when>
			<c:otherwise>
				<!-- 여기에 바로구매 상품정보 넘겨야함. -->
				<tr>
					<td><img src="${productInfo.imgpath }"
						style="width: 100px; height: 100px;"></td>
					<td>${productInfo.title }</td>
					<td>${amount }</td>
					<td><fmt:formatNumber value="${productInfo.price }" pattern="##,###" />원</td>
				</tr>
			</c:otherwise>
			</c:choose>
			<tr>
				<th colspan="2">상품금액</th>
				<td colspan="2"><fmt:formatNumber value="${totalPrice }" pattern="##,###" />원</td>
			</tr>
			<tr>
				<th colspan="2">택배비</th>
				<td colspan="2"><fmt:formatNumber value="${fee }" pattern="##,###" />원</td>
			</tr>
			<tr>
				<th colspan="2">총금액</th>
				<td colspan="2"><fmt:formatNumber value="${totalMoney }" pattern="##,###" />원</td>
			</tr>
	
		</table>
			</div>
	 </div>
   </div>
</div> 	
	<form id="cartOrder">
 		<div align="center">
			<h3>주문자 정보</h3>
 		<table width="56%">
			<tr>
				<td class="bb">이름</td>
				<td colspan="2"><input class="form-control_orderName"  type="text" id="orderName" name="name" value="${memberInfo.userName }"></td>
			</tr>
			<tr>
		        <td>전화번호</td>
		        <td colspan="2"><input class="form-control_orderPhone" type="text" id="orderPhone" name="phone"  value="${memberInfo.userPhone }"></td>
	    	</tr> 
			<tr>
				<td>우편번호</td>
				<td colspan="2"><input  class="form-control_orderPostCode" type="text" id="orderPostCode" name="postCode" value="${memberInfo.userPostCode }"></td>
			</tr>
			<tr>
				<td>주소</td>
				<td colspan="2"><input class="form-control_orderAddr" type="text" id="orderAddr" name="addr"value="${memberInfo.userAddr }"></td>
			</tr>
		</table>
			<label> 
				<input type="checkbox" onclick="copydata()">"위 정보와 같음"
			</label>
			<h3>배송정보</h3>
			<table  width="56%">
				<tr>
					<td>이름</td>
					<td colspan="2"><input class="form-control_rcName"  type="text" name="userName"
						id="rcName"></td>
				</tr>
				 <tr>
          <td>전화번호</td>
          <td colspan="2"><input class="form-control_rcPhone"  type="text" name="userPhone" id="rcPhone"></td>
        </tr>
				<tr>
					<td>우편번호</td>
					<td colspan="2"><input class="form-control_rcPostCode"  type="text" name="userPostCode" id="postcode"></td>
				</tr>		
				<tr>
					<td></td>
					<td><input class="form-control" style="width:100%"  type="button" onclick="DaumPostcode()"
						value="우편번호 검색"></td>
						 
						
				</tr>
				<tr>
					<td>주소</td>
					<td colspan="2"><input class="form-control_rcAddr"  type="text" 
						name="userAddr" id="address"></td>
				</tr>
				<tr>
					<td>주문 메세지</td>
					<td colspan="2"><input class="form-control" type="text" name="message"></td>
				</tr>
					<tr>
						<td><input type="hidden" name="userId" value="${userId }"></td>
						<td>	<input type="hidden" name="cartList" value="${cartList }"></td>
						<td>	<input type="hidden" name="totalPrice" value="${totalMoney }">
							<button class="btn_red" style="width:220px; font-size:15px; font-weight:bold; margin-top:20px"  id="kakaopay" type="button">카카오페이</button>
						</td>
					</tr>
				</table> 
 		</div>	
</form>
</section>
<jsp:include page="../include/footer.jsp" />
