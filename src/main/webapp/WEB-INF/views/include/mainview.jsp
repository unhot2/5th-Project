<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!-- Swiper -->
  <div class="swiper-container">
    <div class="swiper-wrapper">
      <div class="swiper-slide">
      	<img src="resources/img/etc/swiper1.jpg">
      </div>
      <div class="swiper-slide">
      	<img src="resources/img/etc/swiper2.jpg">
      </div>
      <div class="swiper-slide">
      	<img src="resources/img/etc/swiper3.jpg">
      </div>
      <div class="swiper-slide">
      	<img src="resources/img/etc/swiper4.jpg">
      </div>
      <div class="swiper-slide">
      	<img src="resources/img/etc/swiper5.jpg">
      </div>
    </div>
    <!-- Add Pagination -->
    <div class="swiper-pagination"></div>
    <!-- Add Arrows -->
    <div class="swiper-button-next"></div>
    <div class="swiper-button-prev"></div>
  </div>

  <!-- Initialize Swiper -->
  <script>
    var swiper = new Swiper('.swiper-container', {
      slidesPerView: 1,
      spaceBetween: 30,
      loop: true,
      pagination: {
        el: '.swiper-pagination',
        clickable: true,
      },
      navigation: {
        nextEl: '.swiper-button-next',
        prevEl: '.swiper-button-prev',
      },
      autoplay:{
    	  delay: 5000,
      },
    });
  </script>