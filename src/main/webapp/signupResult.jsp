<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="tripper.domain.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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

<link rel="stylesheet" href="lib/signupResult.css">
<title>TRIPPER: 회원가입</title>
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
        </div>
      </div>
    </header>
  
    <section>
      <div class="wrapper">
      	<div class="signup_result_container">
      		<div class="signup_result_inner">
      			<div class="success_signup">
      				<i class="far fa-check-circle check_icon"></i>
      				<h3>회원가입이 <strong>완료</strong>되었습니다.</h3>
      			</div>
      			<div class="login_info">
      				<h5 class="text_info">아이디 :	<c:out value="${userInfo.id}"></c:out></h5>
              		<h5 class="text_info">이름 :		<c:out value="${userInfo.username}"></c:out></h5>
      				<h5 class="text_info">전화번호 :	<c:out value="${userInfo.mobile}"></c:out></h5>
      				<h5 class="text_info">이메일 :	<c:out value="${userInfo.email}"></c:out></h5>
      			</div>
      			<div class="btn_home_login">
      				<button class="home_btn" onclick="location.href='http://localhost:8090/hyewon_free/UserServlet?cmd=home'">홈으로</button>
      				<button class="login_btn" onclick="location.href='http://localhost:8090/hyewon_free/UserServlet?cmd=login'">로그인</button>
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