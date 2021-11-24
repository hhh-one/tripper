<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="description" content="국내여행 추천 웹사이트">
<meta name="keywords" content="여행, 국내여행, 국내여행코스, 여행코스">
<meta name="author" content="HyeWon Lee">
<meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    
<meta property="og:type" content="website">
<meta property="og:title" content="국내여행 추천 웹사이트">
<meta property="og:description" content="국내여행지나 코스를 소개하고 추천하는 사이트입니다.">
<meta property="og:site_name" content="TRIPPER" />

<link rel="icon" href="lib/trip.png">
<link rel="apple-touch-icon" href="lib/trip.png">
<link rel="short icon" type="image/x-icon" href="lib/trip.png">

<link rel="stylesheet" href="lib/place.css">
<title>TRIPPER - place</title>
<script src="https://kit.fontawesome.com/29f46c9ddd.js" crossorigin="anonymous"></script>
</head>
<body>
	<div class="root-wrapper">
    <header>
      <div class="wrapper">
        <div class="header_container">
          <div class="logo">
            <img src="lib/trip.png" alt="logo_icon">
            <h1><a href="http://localhost:8090/hyewon_free/UserServlet?cmd=home" class="logo_name">TRIPPER</a></h1>
          </div>
          <ul class="user_container">
            <li class="search">
              <form action="#">
                <input type="search" placeholder="Search">
                <button class="btn"><i class="fas fa-search"></i></button>
              </form>
            </li>
            <li class="my_page">
              <button class="btn" onclick="location.href='http://localhost:8090/hyewon_free/UserServlet?cmd=login'"><i class="far fa-user-circle profile"></i></button>
            </li>
          </ul>
        </div>
  
        <div class="menu_container">
          <ul class="menu">
            <li id="home_menu"><a href="http://localhost:8090/hyewon_free/UserServlet?cmd=home">HOME</a></li>
            <li><a href="http://localhost:8090/hyewon_free/UserServlet?cmd=place">PLACE</a></li>
            <li><a href="http://localhost:8090/hyewon_free/UserServlet?cmd=course">COURSE</a></li>
          </ul>
        </div>
      </div>
    </header>
  
    <section>
      <div class="wrapper">
        <div class="zone_container">
          <div class="list_zone">
            <div class="swiper-container2 type0" id="zoneArr">
              <div class="swiper-wrapper">
                <div class="swiper-slide" id="zone1">
                  <button type="button">서울</button>
                </div>
                <div class="swiper-slide" id="zone2">
                  <button type="button">부산</button>
                </div>
                <div class="swiper-slide" id="zone3">
                  <button type="button">대구</button>
                </div>
                <div class="swiper-slide" id="zone4">
                  <button type="button">인천</button>
                </div>
                <div class="swiper-slide" id="zone5">
                  <button type="button">광주</button>
                </div>
                <div class="swiper-slide" id="zone6">
                  <button type="button">대전</button>
                </div>
                <div class="swiper-slide" id="zone7">
                  <button type="button">울산</button>
                </div>
                <div class="swiper-slide" id="zone8">
                  <button type="button">세종</button>
                </div>
                <div class="swiper-slide" id="zone9">
                  <button type="button">경기</button>
                </div>
                <div class="swiper-slide" id="zone10">
                  <button type="button">강원</button>
                </div>
                <div class="swiper-slide" id="zone11">
                  <button type="button">충북</button>
                </div>
                <div class="swiper-slide" id="zone12">
                  <button type="button">충남</button>
                </div>
                <div class="swiper-slide" id="zone13">
                  <button type="button">전북</button>
                </div>
                <div class="swiper-slide" id="zone14">
                  <button type="button">전남</button>
                </div>
                <div class="swiper-slide" id="zone15">
                  <button type="button">경북</button>
                </div>
                <div class="swiper-slide" id="zone16">
                  <button type="button">경남</button>
                </div>
                <div class="swiper-slide" id="zone17">
                  <button type="button">제주</button>
                </div>
              </div>
            </div>
            <div class="zone_box">
  
            </div>
          </div>
        </div>
      </div>
    </section>
  
    <footer>
      <div class="footer_container">
          <div class="footer_content">
          <b>NAME: </b>이혜원<br>
          <b>TEL: </b>010-6277-2844<br>
          <b>EMAIL: </b>904lhw@kpu.ac.kr
        </div>
      </div>
    </footer>
	</div>
</body>
</html>