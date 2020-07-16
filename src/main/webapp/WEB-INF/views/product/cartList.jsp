<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet" integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN" crossorigin="anonymous">
<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<link rel="stylesheet" href="resources/css/cartList.css">
<!DOCTYPE html>

<jsp:include page="../include/header.jsp" />
<section class="cartList">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

    <div align="center">
        <h3>shopping cart</h3>
     </div>

<div class="container mb-4">
    <div class="row">
        <div class="col-12">
            <div class="table-responsive">
                <table class="table table-striped">
                    <thead>
                        <tr>
		                    <th scope="col" class="thumb">Product</th>
		                    <th scope="col" class="product">Name</th>
		                    <th scope="col" class="quantity">Quantity</th>
		                    <th scope="col" class="price">Price</th>
		                    <th scope="col" class="button">Select</th>
                        </tr>
                    </thead>
                      <c:forEach var="cartList" items="${cartList }">
                        <tr>
                            <td><img src="${cartList.imgpath }" id="cartImg"></td>
                            <td>${cartList.title}</td>
                            <td><button class="button1" type="button" onclick="cntDown('${cartList.cartId}')">-</button>
                            		<input class="form-control" type="text" value="${cartList.amount}" />
                            		<input type="hidden" name="product_id" value="${cartList.product_id}">
                           		<button class="button2"  type="button" onclick="cntUp('${cartList.cartId}')">+</button>    
                            </td>
                            <td class="text-right"><fmt:formatNumber value="${cartList.price}" pattern="##,###" />원</td>
                           <td class="text-right"><button class="btn btn-sm btn-danger" onclick="location.href='cartDelete?cartId=${cartList.cartId}'"><i class="fa fa-trash"></i></button></td>
                        </tr>
                     	</c:forEach>
                     	<tr>
				<th colspan="3">상품금액</th>
				<td colspan="3"><fmt:formatNumber value="${totalPrice }" pattern="##,###" />원</td>
			</tr>
			<tr>
				<th colspan="3">택배비</th>
				<td colspan="3"><fmt:formatNumber value="${fee }" pattern="##,###" />원</td>
			</tr>
			<tr>
				<th colspan="3">총금액</th>
				<td colspan="3"><fmt:formatNumber value="${totalMoney }" pattern="##,###" />원</td>
			</tr>
                     	
                </table>
            </div>
        </div>
            <span class="button-left">
                <a  onclick="location.href='index'"><span class="btn01">메인으로</span></a>
                <a href="#none" onclick="location.href='index'"><span class="btn01">쇼핑 계속하기</span></a>
                <a href="#none" onclick="location.href='cartDeleteAll?userId=${userId}'"><span class="btn01">전체 비우기</span></a>
            </span>
                
                <div class="col-sm-12 col-md-6 text-right">
                     <button class="btn_pay"  onclick="location.href='cartOrder'">결제</button> 
                </div> 
    </div>
</div>
</section>
<jsp:include page="../include/footer.jsp" />