<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.*, tripper.domain.*"%>
<%@ taglib tagdir="/WEB-INF/tags" prefix="mytag" %>
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
<script defer src="lib/placeList.js"></script>
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
            <li><a href="http://localhost:8090/hyewon_free/PlaceServlet?cmd=place&place=seoul">PLACE</a></li>
            <li><a href="http://localhost:8090/hyewon_free/UserServlet?cmd=course">MY COURSE</a></li>
          </ul>
        </div>
      </div>
    </header>
  
    <section>
      <div class="wrapper">
        <div class="zone_container">
          <div class="list_zone">
            <div class="swiper-container" id="zoneArr">
              <div class="swiper-wrapper">
                <div class="swiper-slide" id="zone1">
                  <a type="button" href="http://localhost:8090/hyewon_free/PlaceServlet?cmd=place&place=seoul">서울</a>
                </div>
                <div class="swiper-slide" id="zone2">
                  <a type="button" href="http://localhost:8090/hyewon_free/PlaceServlet?cmd=place&place=busan">부산</a>
                </div>
                <div class="swiper-slide" id="zone3">
                  <a type="button">대구</a>
                </div>
                <div class="swiper-slide" id="zone4">
                  <a type="button">인천</a>
                </div>
                <div class="swiper-slide" id="zone5">
                  <a type="button">광주</a>
                </div>
                <div class="swiper-slide" id="zone6">
                  <a type="button">대전</a>
                </div>
                <div class="swiper-slide" id="zone7">
                  <a type="button">울산</a>
                </div>
                <div class="swiper-slide" id="zone8">
                  <a type="button">세종</a>
                </div>
                <div class="swiper-slide" id="zone9">
                  <a type="button">경기</a>
                </div>
                <div class="swiper-slide" id="zone10">
                  <a type="button">강원</a>
                </div>
                <div class="swiper-slide" id="zone11">
                  <a type="button">충북</a>
                </div>
                <div class="swiper-slide" id="zone12">
                  <a type="button">충남</a>
                </div>
                <div class="swiper-slide" id="zone13">
                  <a type="button">전북</a>
                </div>
                <div class="swiper-slide" id="zone14">
                  <a type="button">전남</a>
                </div>
                <div class="swiper-slide" id="zone15">
                  <a type="button">경북</a>
                </div>
                <div class="swiper-slide" id="zone16">
                  <a type="button">경남</a>
                </div>
                <div class="swiper-slide" id="zone17">
                  <a type="button">제주</a>
                </div>
              </div>
            </div>
            <div class="zone_box">
              <ul class="zone_list">
              	<%
              		if (request.getAttribute("where").equals("seoul")) {
              			List<SeoulVO> seoulList = (List<SeoulVO>)request.getAttribute("Places");
              			for (SeoulVO vo : seoulList) {
              	%>
              	<li>
                  <a href="#">
                    <div class="place-card">
                      <img src="<%=vo.getPicture() %>" alt="<%=vo.getPlace() %>" class="place-image">
                      <p class="place-name"><%=vo.getPlace() %></p>
                    </div>
                  </a>
                </li>
              	<%
              			}
              		}
              		else if (request.getAttribute("where").equals("busan")) {
              			List<BusanVO> busanList = (List<BusanVO>)request.getAttribute("Places");
              			for (BusanVO vo : busanList) {
              	%>
              	<li>
                  <a href="#">
                    <div class="place-card">
                      <img src="<%=vo.getPicture() %>" alt="<%=vo.getPlace() %>" class="place-image">
                      <p class="place-name"><%=vo.getPlace() %></p>
                    </div>
                  </a>
                </li>
                <%
                		}
              		}
                %>
              </ul>
            </div>
          </div>
        </div>
      </div>
    </section>
    <section id="my-place-section">
      <div class="set-place-container">
        <div class="place-list">
          <ul class="places">
            <li id="first-place">1</li>
            <li id="second-place">2</li>
            <li id="third-place">3</li>
          </ul>
        </div>
        <div class="access-place">
          <div class="set-place-btn">
            <p>마이 코스 지정하기<i class="fas fa-caret-up"></i></p>
          </div>
          <div class="cancel-place-btn">
            <i class="far fa-times-circle"></i>
          </div>
        </div>
      </div>
    </section>
    <footer>
      <div class="footer_container">
          <div class="footer_content">
          <b>NAME: </b><mytag:print></mytag:print><br>
          <b>TEL: </b>010-6277-2844<br>
          <b>EMAIL: </b>904lhw@kpu.ac.kr
        </div>
      </div>
    </footer>
	</div>
</body>
</html>