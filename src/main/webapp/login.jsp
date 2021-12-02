<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib tagdir="/WEB-INF/tags" prefix="mytag" %>
<!DOCTYPE html>
<html lang="ko">
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

    <link rel="stylesheet" href="lib/login.css">
  <title>TRIPPER: 로그인</title>
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
        <div class="login_container">
        <form class="login_form" action="http://localhost:8090/hyewon_free/UserServlet?cmd=login" method="post">
          <div class="login_inner">
            <!-- id, passwd -->
            <div class="id_passwd_wrapper">
              <div class="input_row" id="id_line">
                <div class="id_icon">
                  <i class="far fa-user"></i>
                </div>
                <input type="text" name="id" id="input_id" placeholder="아이디" title="ID">
              </div>
              <div class="input_row" id="pw_line">
                <div class="pw_icon">
                  <i class="fas fa-unlock-alt"></i>
                </div>
                <input type="password" name="passwd" id="input_pw" placeholder="비밀번호" title="PASSWORD">
              </div>
            </div>
            
            <!-- 아이디, 비밀번호 에러 메세지 -->
            <div class="login_error_wrapper">
              <%
              	String error_message = (String)request.getAttribute("loginError");
              	if (error_message == null) {
              		error_message = "";
              	}
              %>
              <%=error_message %>
            </div>
            
            <!-- 로그인 버튼 -->
            <div class="login_btn_wrapper">
              <button type="submit" class="login_btn">
                <span class="btn_text">로그인</span>
              </button>
            </div>
            
            <!-- 회원가입 -->
            <div class="signup">
              <a class="signup_btn" href="http://localhost:8090/hyewon_free/UserServlet?cmd=join">아직 회원이 아니라면? <strong>회원가입</strong></a>
            </div>
            
          </div>
        </form>
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