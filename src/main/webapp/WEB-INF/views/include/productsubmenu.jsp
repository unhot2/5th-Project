<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<div align="center">
   <table>
      <tr>
         <c:choose>
            <c:when test="${subcategory == '가디건'}">
               <td>
                  <h2>
                     <a href="productsubList?subcategory=가디건"><span>Cardigan</span></a>&nbsp;&nbsp;&nbsp;&nbsp;
                  </h2>
               </td>
               <td>
                  <h2>
                     <a href="productsubList?subcategory=자켓"><span>Jacket</span></a>&nbsp;&nbsp;&nbsp;&nbsp;
                  </h2>
               </td>
               <td>
                  <h2>
                     <a href="productsubList?subcategory=코트"><span>Coat</span></a>&nbsp;&nbsp;&nbsp;&nbsp;
                  </h2>
               </td>
               <td>
                  <h2>
                     <a href="productsubList?subcategory=점퍼"><span>Jumper</span></a>&nbsp;&nbsp;&nbsp;&nbsp;
                  </h2>
               </td>
            </c:when>
            <c:when test="${subcategory == '자켓'}">
               <td>
                  <h2>
                     <a href="productsubList?subcategory=가디건"><span>Cardigan</span></a>&nbsp;&nbsp;&nbsp;&nbsp;
                  </h2>
               </td>
               <td>
                  <h2>
                     <a href="productsubList?subcategory=자켓"><span>Jacket</span></a>&nbsp;&nbsp;&nbsp;&nbsp;
                  </h2>
               </td>
               <td>
                  <h2>
                     <a href="productsubList?subcategory=코트"><span>Coat</span></a>&nbsp;&nbsp;&nbsp;&nbsp;
                  </h2>
               </td>
               <td>
                  <h2>
                     <a href="productsubList?subcategory=점퍼"><span>Jumper</span></a>&nbsp;&nbsp;&nbsp;&nbsp;
                  </h2>
               </td>
            </c:when><c:when test="${subcategory == '코트'}">
                  <td>
                  <h2>
                     <a href="productsubList?subcategory=가디건"><span>Cardigan</span></a>&nbsp;&nbsp;&nbsp;&nbsp;
                  </h2>
               </td>
               <td>
                  <h2>
                     <a href="productsubList?subcategory=자켓"><span>Jacket</span></a>&nbsp;&nbsp;&nbsp;&nbsp;
                  </h2>
               </td>
               <td>
                  <h2>
                     <a href="productsubList?subcategory=코트"><span>Coat</span></a>&nbsp;&nbsp;&nbsp;&nbsp;
                  </h2>
               </td>
               <td>
                  <h2>
                     <a href="productsubList?subcategory=점퍼"><span>Jumper</span></a>&nbsp;&nbsp;&nbsp;&nbsp;
                  </h2>
               </td>
            </c:when><c:when test="${subcategory == '점퍼'}">
               <td>
                  <h2>
                     <a href="productsubList?subcategory=가디건"><span>Cardigan</span></a>&nbsp;&nbsp;&nbsp;&nbsp;
                  </h2>
               </td>
               <td>
                  <h2>
                     <a href="productsubList?subcategory=자켓"><span>Jacket</span></a>&nbsp;&nbsp;&nbsp;&nbsp;
                  </h2>
               </td>
               <td>
                  <h2>
                     <a href="productsubList?subcategory=코트"><span>Coat</span></a>&nbsp;&nbsp;&nbsp;&nbsp;
                  </h2>
               </td>
               <td>
                  <h2>
                     <a href="productsubList?subcategory=점퍼"><span>Jumper</span></a>&nbsp;&nbsp;&nbsp;&nbsp;
                  </h2>
               </td>
            </c:when>
            <c:when test="${subcategory == '블라우스'}">
               <td>
                  <h2>
                     <a href="productsubList?subcategory=블라우스"><span>blouse</span></a>&nbsp;&nbsp;&nbsp;&nbsp;
                  </h2>
               </td>
               <td>
                  <h2>
                     <a href="productsubList?subcategory=티셔츠"><span>T-shirt</span></a>&nbsp;&nbsp;&nbsp;&nbsp;
                  </h2>
               </td>
               <td>
                  <h2>
                     <a href="productsubList?subcategory=니트"><span>knit</span></a>&nbsp;&nbsp;&nbsp;&nbsp;
                  </h2>
               </td>
               <td>
                  <h2>
                     <a href="productsubList?subcategory=반팔"><span>Short-sleeve</span></a>&nbsp;&nbsp;&nbsp;&nbsp;
                  </h2>
               </td>
            </c:when>
            <c:when test="${subcategory == '티셔츠'}">
               <td>
                  <h2>
                     <a href="productsubList?subcategory=블라우스"><span>blouse</span></a>&nbsp;&nbsp;&nbsp;&nbsp;
                  </h2>
               </td>
               <td>
                  <h2>
                     <a href="productsubList?subcategory=티셔츠"><span>T-shirt</span></a>&nbsp;&nbsp;&nbsp;&nbsp;
                  </h2>
               </td>
               <td>
                  <h2>
                     <a href="productsubList?subcategory=니트"><span>knit</span></a>&nbsp;&nbsp;&nbsp;&nbsp;
                  </h2>
               </td>
               <td>
                  <h2>
                     <a href="productsubList?subcategory=반팔"><span>Short-sleeve</span></a>&nbsp;&nbsp;&nbsp;&nbsp;
                  </h2>
               </td>
            </c:when>
            <c:when test="${subcategory == '니트'}">
               <td>
                  <h2>
                     <a href="productsubList?subcategory=블라우스"><span>blouse</span></a>&nbsp;&nbsp;&nbsp;&nbsp;
                  </h2>
               </td>
               <td>
                  <h2>
                     <a href="productsubList?subcategory=티셔츠"><span>T-shirt</span></a>&nbsp;&nbsp;&nbsp;&nbsp;
                  </h2>
               </td>
               <td>
                  <h2>
                     <a href="productsubList?subcategory=니트"><span>knit</span></a>&nbsp;&nbsp;&nbsp;&nbsp;
                  </h2>
               </td>
               <td>
                  <h2>
                     <a href="productsubList?subcategory=반팔"><span>Short-sleeve</span></a>&nbsp;&nbsp;&nbsp;&nbsp;
                  </h2>
               </td>
            </c:when>
            <c:when test="${subcategory == '반팔'}">
               <td>
                  <h2>
                     <a href="productsubList?subcategory=블라우스"><span>blouse</span></a>&nbsp;&nbsp;&nbsp;&nbsp;
                  </h2>
               </td>
               <td>
                  <h2>
                     <a href="productsubList?subcategory=티셔츠"><span>T-shirt</span></a>&nbsp;&nbsp;&nbsp;&nbsp;
                  </h2>
               </td>
               <td>
                  <h2>
                     <a href="productsubList?subcategory=니트"><span>knit</span></a>&nbsp;&nbsp;&nbsp;&nbsp;
                  </h2>
               </td>
               <td>
                  <h2>
                     <a href="productsubList?subcategory=반팔"><span>Short-sleeve</span></a>&nbsp;&nbsp;&nbsp;&nbsp;
                  </h2>
               </td>
            </c:when>
            <c:when test="${subcategory == '점프슈트'}">
              <td>
                  <h2>
                     <a href="productsubList?subcategory=점프슈트"><span>Jumping-suit</span></a>&nbsp;&nbsp;&nbsp;&nbsp;
                  </h2>
               </td>
               <td>
                  <h2>
                     <a href="productsubList?subcategory=와이드팬츠"><span>wide-pants</span></a>&nbsp;&nbsp;&nbsp;&nbsp;
                  </h2>
               </td>
               <td>
                  <h2>
                     <a href="productsubList?subcategory=스커트"><span>skirt</span></a>&nbsp;&nbsp;&nbsp;&nbsp;
                  </h2>
               </td>
               <td>
                  <h2>
                     <a href="productsubList?subcategory=면바지"><span>Cotton-Pants</span></a>&nbsp;&nbsp;&nbsp;&nbsp;
                  </h2>
               </td>
            </c:when>
            <c:when test="${subcategory == '와이드팬츠'}">
              <td>
                  <h2>
                     <a href="productsubList?subcategory=점프슈트"><span>Jumping-suit</span></a>&nbsp;&nbsp;&nbsp;&nbsp;
                  </h2>
               </td>
               <td>
                  <h2>
                     <a href="productsubList?subcategory=와이드팬츠"><span>wide-pants</span></a>&nbsp;&nbsp;&nbsp;&nbsp;
                  </h2>
               </td>
               <td>
                  <h2>
                     <a href="productsubList?subcategory=스커트"><span>skirt</span></a>&nbsp;&nbsp;&nbsp;&nbsp;
                  </h2>
               </td>
               <td>
                  <h2>
                     <a href="productsubList?subcategory=면바지"><span>Cotton-Pants</span></a>&nbsp;&nbsp;&nbsp;&nbsp;
                  </h2>
               </td>
            </c:when>
            <c:when test="${subcategory == '스커트'}">
              <td>
                  <h2>
                     <a href="productsubList?subcategory=점프슈트"><span>Jumping-suit</span></a>&nbsp;&nbsp;&nbsp;&nbsp;
                  </h2>
               </td>
               <td>
                  <h2>
                     <a href="productsubList?subcategory=와이드팬츠"><span>wide-pants</span></a>&nbsp;&nbsp;&nbsp;&nbsp;
                  </h2>
               </td>
               <td>
                  <h2>
                     <a href="productsubList?subcategory=스커트"><span>skirt</span></a>&nbsp;&nbsp;&nbsp;&nbsp;
                  </h2>
               </td>
               <td>
                  <h2>
                     <a href="productsubList?subcategory=면바지"><span>Cotton-Pants</span></a>&nbsp;&nbsp;&nbsp;&nbsp;
                  </h2>
               </td>
            </c:when>
            <c:when test="${subcategory == '면바지'}">
                  <td>
                  <h2>
                     <a href="productsubList?subcategory=점프슈트"><span>Jumping-suit</span></a>&nbsp;&nbsp;&nbsp;&nbsp;
                  </h2>
               </td>
               <td>
                  <h2>
                     <a href="productsubList?subcategory=와이드팬츠"><span>wide-pants</span></a>&nbsp;&nbsp;&nbsp;&nbsp;
                  </h2>
               </td>
               <td>
                  <h2>
                     <a href="productsubList?subcategory=스커트"><span>skirt</span></a>&nbsp;&nbsp;&nbsp;&nbsp;
                  </h2>
               </td>
               <td>
                  <h2>
                     <a href="productsubList?subcategory=면바지"><span>Cotton-Pants</span></a>&nbsp;&nbsp;&nbsp;&nbsp;
                  </h2>
               </td>
            </c:when>
            <c:when test="${subcategory == '스카프'}">
               <td>
                  <h2>
                     <a href="productsubList?subcategory=스카프"><span>Scarf</span></a>&nbsp;&nbsp;&nbsp;&nbsp;
                  </h2>
               </td>
               <td>
                  <h2>
                     <a href="productsubList?subcategory=헤어핀"><span>Hairpin</span></a>&nbsp;&nbsp;&nbsp;&nbsp;
                  </h2>
               </td>
               <td>
                  <h2>
                     <a href="productsubList?subcategory=안경"><span>Glasses</span></a>&nbsp;&nbsp;&nbsp;&nbsp;
                  </h2>
               </td>
               <td>
                  <h2>
                     <a href="productsubList?subcategory=벨트"><span>Belt</span></a>&nbsp;&nbsp;&nbsp;&nbsp;
                  </h2>
               </td>
               <td>
                  <h2>
                     <a href="productsubList?subcategory=가방"><span>Bag</span></a>&nbsp;&nbsp;&nbsp;&nbsp;
                  </h2>
               </td>
               <td>
                  <h2>
                     <a href="productsubList?subcategory=신발"><span>Shoes</span></a>&nbsp;&nbsp;&nbsp;&nbsp;
                  </h2>
               </td>
               <td>
                  <h2>
                     <a href="productsubList?subcategory=기타"><span>Guitar</span></a>&nbsp;&nbsp;&nbsp;&nbsp;
                  </h2>
               </td>
            </c:when>
            <c:when test="${subcategory == '헤어핀'}">
               <td>
                  <h2>
                     <a href="productsubList?subcategory=스카프"><span>Scarf</span></a>&nbsp;&nbsp;&nbsp;&nbsp;
                  </h2>
               </td>
               <td>
                  <h2>
                     <a href="productsubList?subcategory=헤어핀"><span>Hairpin</span></a>&nbsp;&nbsp;&nbsp;&nbsp;
                  </h2>
               </td>
               <td>
                  <h2>
                     <a href="productsubList?subcategory=안경"><span>Glasses</span></a>&nbsp;&nbsp;&nbsp;&nbsp;
                  </h2>
               </td>
               <td>
                  <h2>
                     <a href="productsubList?subcategory=벨트"><span>Belt</span></a>&nbsp;&nbsp;&nbsp;&nbsp;
                  </h2>
               </td>
               <td>
                  <h2>
                     <a href="productsubList?subcategory=가방"><span>Bag</span></a>&nbsp;&nbsp;&nbsp;&nbsp;
                  </h2>
               </td>
               <td>
                  <h2>
                     <a href="productsubList?subcategory=신발"><span>Shoes</span></a>&nbsp;&nbsp;&nbsp;&nbsp;
                  </h2>
               </td>
               <td>
                  <h2>
                     <a href="productsubList?subcategory=기타"><span>Guitar</span></a>&nbsp;&nbsp;&nbsp;&nbsp;
                  </h2>
               </td>
            </c:when>
            <c:when test="${subcategory == '안경'}">
               <td>
                  <h2>
                     <a href="productsubList?subcategory=스카프"><span>Scarf</span></a>&nbsp;&nbsp;&nbsp;&nbsp;
                  </h2>
               </td>
               <td>
                  <h2>
                     <a href="productsubList?subcategory=헤어핀"><span>Hairpin</span></a>&nbsp;&nbsp;&nbsp;&nbsp;
                  </h2>
               </td>
               <td>
                  <h2>
                     <a href="productsubList?subcategory=안경"><span>Glasses</span></a>&nbsp;&nbsp;&nbsp;&nbsp;
                  </h2>
               </td>
               <td>
                  <h2>
                     <a href="productsubList?subcategory=벨트"><span>Belt</span></a>&nbsp;&nbsp;&nbsp;&nbsp;
                  </h2>
               </td>
               <td>
                  <h2>
                     <a href="productsubList?subcategory=가방"><span>Bag</span></a>&nbsp;&nbsp;&nbsp;&nbsp;
                  </h2>
               </td>
               <td>
                  <h2>
                     <a href="productsubList?subcategory=신발"><span>Shoes</span></a>&nbsp;&nbsp;&nbsp;&nbsp;
                  </h2>
               </td>
               <td>
                  <h2>
                     <a href="productsubList?subcategory=기타"><span>Guitar</span></a>&nbsp;&nbsp;&nbsp;&nbsp;
                  </h2>
               </td>
            </c:when>
            <c:when test="${subcategory == '벨트'}">
               <td>
                  <h2>
                     <a href="productsubList?subcategory=스카프"><span>Scarf</span></a>&nbsp;&nbsp;&nbsp;&nbsp;
                  </h2>
               </td>
               <td>
                  <h2>
                     <a href="productsubList?subcategory=헤어핀"><span>Hairpin</span></a>&nbsp;&nbsp;&nbsp;&nbsp;
                  </h2>
               </td>
               <td>
                  <h2>
                     <a href="productsubList?subcategory=안경"><span>Glasses</span></a>&nbsp;&nbsp;&nbsp;&nbsp;
                  </h2>
               </td>
               <td>
                  <h2>
                     <a href="productsubList?subcategory=벨트"><span>Belt</span></a>&nbsp;&nbsp;&nbsp;&nbsp;
                  </h2>
               </td>
               <td>
                  <h2>
                     <a href="productsubList?subcategory=가방"><span>Bag</span></a>&nbsp;&nbsp;&nbsp;&nbsp;
                  </h2>
               </td>
               <td>
                  <h2>
                     <a href="productsubList?subcategory=신발"><span>Shoes</span></a>&nbsp;&nbsp;&nbsp;&nbsp;
                  </h2>
               </td>
               <td>
                  <h2>
                     <a href="productsubList?subcategory=기타"><span>Guitar</span></a>&nbsp;&nbsp;&nbsp;&nbsp;
                  </h2>
               </td>
            </c:when>
            <c:when test="${subcategory == '가방'}">
               <td>
                  <h2>
                     <a href="productsubList?subcategory=스카프"><span>Scarf</span></a>&nbsp;&nbsp;&nbsp;&nbsp;
                  </h2>
               </td>
               <td>
                  <h2>
                     <a href="productsubList?subcategory=헤어핀"><span>Hairpin</span></a>&nbsp;&nbsp;&nbsp;&nbsp;
                  </h2>
               </td>
               <td>
                  <h2>
                     <a href="productsubList?subcategory=안경"><span>Glasses</span></a>&nbsp;&nbsp;&nbsp;&nbsp;
                  </h2>
               </td>
               <td>
                  <h2>
                     <a href="productsubList?subcategory=벨트"><span>Belt</span></a>&nbsp;&nbsp;&nbsp;&nbsp;
                  </h2>
               </td>
               <td>
                  <h2>
                     <a href="productsubList?subcategory=가방"><span>Bag</span></a>&nbsp;&nbsp;&nbsp;&nbsp;
                  </h2>
               </td>
               <td>
                  <h2>
                     <a href="productsubList?subcategory=신발"><span>Shoes</span></a>&nbsp;&nbsp;&nbsp;&nbsp;
                  </h2>
               </td>
               <td>
                  <h2>
                     <a href="productsubList?subcategory=기타"><span>Guitar</span></a>&nbsp;&nbsp;&nbsp;&nbsp;
                  </h2>
               </td>
            </c:when>
            <c:when test="${subcategory == '신발'}">
               <td>
                  <h2>
                     <a href="productsubList?subcategory=스카프"><span>Scarf</span></a>&nbsp;&nbsp;&nbsp;&nbsp;
                  </h2>
               </td>
               <td>
                  <h2>
                     <a href="productsubList?subcategory=헤어핀"><span>Hairpin</span></a>&nbsp;&nbsp;&nbsp;&nbsp;
                  </h2>
               </td>
               <td>
                  <h2>
                     <a href="productsubList?subcategory=안경"><span>Glasses</span></a>&nbsp;&nbsp;&nbsp;&nbsp;
                  </h2>
               </td>
               <td>
                  <h2>
                     <a href="productsubList?subcategory=벨트"><span>Belt</span></a>&nbsp;&nbsp;&nbsp;&nbsp;
                  </h2>
               </td>
               <td>
                  <h2>
                     <a href="productsubList?subcategory=가방"><span>Bag</span></a>&nbsp;&nbsp;&nbsp;&nbsp;
                  </h2>
               </td>
               <td>
                  <h2>
                     <a href="productsubList?subcategory=신발"><span>Shoes</span></a>&nbsp;&nbsp;&nbsp;&nbsp;
                  </h2>
               </td>
               <td>
                  <h2>
                     <a href="productsubList?subcategory=기타"><span>Guitar</span></a>&nbsp;&nbsp;&nbsp;&nbsp;
                  </h2>
               </td>
            </c:when>
            <c:when test="${subcategory == '기타'}">
               <td>
                  <h2>
                     <a href="productsubList?subcategory=스카프"><span>Scarf</span></a>&nbsp;&nbsp;&nbsp;&nbsp;
                  </h2>
               </td>
               <td>
                  <h2>
                     <a href="productsubList?subcategory=헤어핀"><span>Hairpin</span></a>&nbsp;&nbsp;&nbsp;&nbsp;
                  </h2>
               </td>
               <td>
                  <h2>
                     <a href="productsubList?subcategory=안경"><span>Glasses</span></a>&nbsp;&nbsp;&nbsp;&nbsp;
                  </h2>
               </td>
               <td>
                  <h2>
                     <a href="productsubList?subcategory=벨트"><span>Belt</span></a>&nbsp;&nbsp;&nbsp;&nbsp;
                  </h2>
               </td>
               <td>
                  <h2>
                     <a href="productsubList?subcategory=가방"><span>Bag</span></a>&nbsp;&nbsp;&nbsp;&nbsp;
                  </h2>
               </td>
               <td>
                  <h2>
                     <a href="productsubList?subcategory=신발"><span>Shoes</span></a>&nbsp;&nbsp;&nbsp;&nbsp;
                  </h2>
               </td>
               <td>
                  <h2>
                     <a href="productsubList?subcategory=기타"><span>Guitar</span></a>&nbsp;&nbsp;&nbsp;&nbsp;
                  </h2>
               </td>
               
            </c:when>
         </c:choose>
      </tr>
   </table>
</div>

</body>
</html>