<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<link rel="stylesheet" href="https://unpkg.com/swiper/css/swiper.min.css">
<!-- Swiper -->
  <div class="swiper-container" style="height: 55%;z-index: -1;">
    <div class="swiper-wrapper">
      <div class="swiper-slide">
      	<img src="resources/img/main1.jpg">
      </div>
      <div class="swiper-slide">
      	<img src="resources/img/main2.jpg">
      </div>
      <div class="swiper-slide">
      	<img src="resources/img/main3.jpg">
      </div>
      <div class="swiper-slide">
      	<img src="resources/img/main4.jpg">
      </div>
      <div class="swiper-slide">
      	<img src="resources/img/main5.jpg">
      </div>
    </div>
    <!-- Add Pagination -->
    <div class="swiper-pagination"></div>
    <!-- Add Arrows -->
    <div class="swiper-button-next"></div>
    <div class="swiper-button-prev"></div>
  </div>
  <!-- Swiper JS -->
  <script src="https://unpkg.com/swiper/js/swiper.min.js"></script>

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
    	  delay: 4000,
      },
    });
  </script>