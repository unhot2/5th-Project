<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<jsp:include page="../include/header.jsp" />
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
      <c:forEach var="dto" items="${cartList}">
        <tr>
          <td><img src="${dto.imgpath }" style="width:100px; height:100px;"></td>
          <td>${dto.title }</td>
          <td>${dto.amount }</td>
          <td><fmt:formatNumber value="${dto.price }" pattern="##,###" />원</td>
        </tr>
      </c:forEach>
      <tr>
        <th>상품금액</th>
        <td colspan="2"><fmt:formatNumber value="${totalPrice }" pattern="##,###" />원</td>
      </tr>
      <tr>
        <th>택배비</th>
        <td colspan="2"><fmt:formatNumber value="${fee }" pattern="##,###" />원</td>
      </tr>
      <tr>
        <th>총금액</th>
        <td colspan="2"><fmt:formatNumber value="${totalMoney }" pattern="##,###" />원</td>
      </tr>
    </table>
    <table border="1">
      <caption>주문자 정보</caption>
      <tr>
        <td>이름</td>
        <td><input type="text" class="orderName" value="${memberInfo.userName }"></td>
      </tr>
      <!-- <tr>
        <td>전화번호</td>
        <td>${userPhone }</td>
      </tr> -->
      <tr>
        <td>우편번호</td>
        <td><input type="text" class="orderPostCode" value="${memberInfo.userPostCode }"></td>
      </tr>
      <tr>
        <td>주소</td>
        <td><input type="text" class="orderAddr" value="${memberInfo.userAddr }"></td>
      </tr>
    </table>
    <form action="">
      <h3>배송정보</h3>
      <label> <input type="checkbox" onclick="copydata()">"위 정보와 같음"
      </label>
      <hr>
      <table border="1">
        <tr>
          <td>이름</td>
          <td><input type="text" name="userName" class="rcName"></td>
        </tr>
        <!-- <tr>
          <td>전화번호</td>
          <td><input type="text" name="userPhone" value="" class=""></td>
        </tr>-->
        <tr>
          <td>우편번호</td>
          <td><input type="text" name="userPostCode" class="rcPostCode"></td>
        </tr>
        <tr>
          <td>주소</td>
          <td><input type="text" name="userAddr" class="rcAddr"></td>
        </tr>
        <tr>
          <td>주문 메세지</td>
          <td><input type="text" name="deliveryMsg"></td>
        </tr>
        <tr>
          <td>
            <button type="button">결제</button>
          </td>
        </tr>
      </table>
    </form>
  </div>
</section>
<jsp:include page="../include/footer.jsp" />
