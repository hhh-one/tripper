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

<link rel="stylesheet" href="lib/home.css">
<title>TRIPPER</title>
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
        <div id="slideShow">
          <ul class="slides">
            <li><img src="https://www.10wallpaper.com/wallpaper/1366x768/1405/Korea_Seoul_city_scenery_Photography_Wallpaper_23_1366x768.jpg" alt="청계천"></li>
            <li><img src="https://t1.daumcdn.net/cfile/tistory/224F5C3E52EEED981A" alt="광안리"></li>
            <li><img src="https://t1.daumcdn.net/cfile/tistory/227688475893FF2D32" alt="해운대"></li>
          </ul>
          <p class="controller">
            <span class="prev"><i class="fas fa-angle-left"></i></span>
            <span class="next"><i class="fas fa-angle-right"></i></span>
          </p>
        </div>
        <script src="lib/slideShow.js"></script>
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