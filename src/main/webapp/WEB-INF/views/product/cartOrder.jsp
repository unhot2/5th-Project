<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
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
<script type="text/javascript"
	src="https://cdn.iamport.kr/js/iamport.payment-1.1.5.js"></script>
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
				$("#cartOrder").attr('action', 'cardPay')
				$("#cartOrder").submit()
			})

		})
	} else {
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
				$("#cartOrder").attr('action', 'cardPayment')
				$("#cartOrder").submit()
			})
		})
	}
</script>
<section class="cartOrder">
	<div align="center">
		<h2>주문/결제</h2>
		<table border="1">
			<caption>주문리스트</caption>
			<tr>
				<td>사진</td>
				<td>제품</td>
				<td>수량</td>
				<td>가격</td>
			</tr>
			<c:choose>
				<c:when test="${boo eq 0}">
					<c:forEach var="dto" items="${cartList}">
						<tr>
							<td><img src="${dto.imgpath }"
								style="width: 100px; height: 100px;"></td>
							<td>${dto.title }</td>
							<td>${dto.amount }</td>
							<td><fmt:formatNumber value="${dto.price }" pattern="##,###" />원</td>
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
						<td><fmt:formatNumber value="${productInfo.price }"
								pattern="##,###" />원</td>
					</tr>
				</c:otherwise>
			</c:choose>
			<tr>
				<th>상품금액</th>
				<td colspan="2"><fmt:formatNumber value="${totalMoney }"
						pattern="##,###" />원</td>
			</tr>
			<tr>
				<th>택배비</th>
				<td colspan="2"><fmt:formatNumber value="${fee }"
						pattern="##,###" />원</td>
			</tr>
			<tr>
				<th>총금액</th>
				<td colspan="2"><fmt:formatNumber value="${totalPrice }"
						pattern="##,###" />원</td>
			</tr>
		</table>
		<form id="cartOrder">
			<table border="1">
				<caption>주문자 정보</caption>
				<tr>
					<td>이름</td>
					<td><input type="text" class="orderName" name="name"
						value="${memberInfo.userName }"></td>
				</tr>
				<tr>

					<td>전화번호</td>
					<td><input type="text" class="orderPhone" name="phone"
						value="${memberInfo.userPhone }"></td>
				</tr>
				<tr>
					<td>우편번호</td>
					<td><input type="text" class="orderPostCode" name="postCode"
						value="${memberInfo.userPostCode }"></td>
				</tr>
				<tr>
					<td>주소</td>
					<td><input type="text" class="orderAddr" name="addr"
						value="${memberInfo.userAddr }"></td>
				</tr>
			</table>

			<h3>배송정보</h3>
			<label> <input type="checkbox" onclick="copydata()">"위
				정보와 같음"
			</label>
			<hr>
			<table border="1">
				<tr>
					<td>이름</td>
					<td colspan="2"><input type="text" name="userName"
						class="rcName"></td>
				</tr>
				<tr>
					<td>전화번호</td>
					<td><input type="text" name="userPhone" class="rcPhone"></td>
				</tr>
				<tr>
					<td>우편번호</td>
					<td><input type="text" name="userPostCode" id="postcode"
						class="rcPostCode"></td>
					<td><input type="button" onclick="DaumPostcode()"
						value="우편번호 검색"></td>
				</tr>
				<tr>
					<td>주소</td>
					<td colspan="2"><input type="text" id="address"
						name="userAddr" class="rcAddr"></td>
				</tr>
				<tr>
					<td>주문 메세지</td>
					<td colspan="2"><input type="text" name="message"></td>
				</tr>
				<tr>
					<c:choose>
						<c:when test="${boo eq 0 }">
							<td><input type="hidden" name="userId" value="${userId }">
								<input type="hidden" name="totalPrice" value="${totalPrice }">
								<button id="kakaopay" type="button">카카오페이</button></td>
						</c:when>
						<c:otherwise>
							<td><input type="hidden" name="userId" value="${userId }">
								<input type="hidden" name="amount" value="${amount }">
								<input type="hidden" name="title" value="${productInfo.title }">
								<input type="hidden" name="imgpath" value="${productInfo.imgpath }">
								<input type="hidden" name="price" value="${productInfo.price }">
								<input type="hidden" name="totalPrice" value="${totalMoney }">
								<button id="kakaopay" type="button">카카오페이</button></td>
						</c:otherwise>
					</c:choose>
				</tr>
			</table>
		</form>
	</div>
</section>
<jsp:include page="../include/footer.jsp" />
