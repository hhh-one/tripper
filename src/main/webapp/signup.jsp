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

<link rel="stylesheet" href="lib/signup.css">
<title>TRIPPER: 회원가입</title>
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
        <div class="signup_container">
          <div class="signup_wrapper">
            <form action="#" method="post">
          
              <div class="input_area">
                <div class="signup_id">
                  <h4>아이디</h4>
                  <span class="box">
                    <input type="text" name="id" autofocus required placeholder="아이디">
                  </span>
                </div>
                <div class="signup_pw">
                  <h4>비밀번호</h4>
                  <span class="box">
                    <input type="password" name="passwd" autofocus required placeholder="비밀번호">
                  </span>
                </div>
                <div class="signup_pw_check">
                  <h4>비밀번호 재확인</h4>
                  <span class="box">
                    <input type="password" name="passwd" autofocus required placeholder="비밀번호">
                  </span>
                </div>
                <div class="signup_name">
                  <h4>이름</h4>
                  <span class="box">
                    <input type="text" name="username" autofocus required placeholder="이름">
                  </span>
                </div>
                <div class="signup_mobile">
                  <h4>전화번호</h4>
                  <span class="box">
                    <input type="text" name="mobile" autofocus required placeholder="전화번호 입력">
                  </span>
                </div>
                <div class="signup_email">
                  <h4>이메일</h4>
                  <span class="box">
                    <input type="text" name="email" autofocus required placeholder="이메일 입력">
                  </span>
                </div>
              </div>
              
              <br>
              
              <div class=submit_btn>
                <input id="submit" type="submit" name="submit" value="회원가입">
              </div>
              
              </form>
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