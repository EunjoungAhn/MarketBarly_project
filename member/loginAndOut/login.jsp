<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="UTF-8">
<head>
  <meta charset="UTF-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">

  <title>Market Barly Bootstrap Template - Index</title>
  <meta content="" name="description">
  <meta content="" name="keywords">

  <!-- Favicons -->
  <link href="../../assets/img/favicon.png" rel="icon">
  <link href="../../assets/img/apple-touch-icon.png" rel="apple-touch-icon">

  <!-- Google Fonts -->
  <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Roboto:300,300i,400,400i,500,500i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i" rel="stylesheet">

  <!-- Vendor CSS Files -->
  <link href="../../assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <link href="../../assets/vendor/icofont/icofont.min.css" rel="stylesheet">
  <link href="../../assets/vendor/boxicons/css/boxicons.min.css" rel="stylesheet">
  <link href="../../assets/vendor/owl.carousel/assets/owl.carousel.min.css" rel="stylesheet">
<!--   <link href="assets/vendor/venobox/venobox.css" rel="stylesheet"> ------------------------------------------------------------무언가가 작동안하면 주석을 풀어야함---------->
  <link href="../../assets/vendor/aos/aos.css" rel="stylesheet">

  <!-- Template Main CSS File -->
  <link href="../../assets/css/style.css" rel="stylesheet">

  <!-- =======================================================
  * Template Name: BizLand - v1.1.0
  * Template URL: https://bootstrapmade.com/bizland-bootstrap-business-template/
  * Author: BootstrapMade.com
  * License: https://bootstrapmade.com/license/
  ======================================================== -->
  
   <!-- 버튼을 위한 css link  -->
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">

</head>
<body>
 <!-- ======= Header ======= -->
 	<header id="header" class="fixed-top">
		<div class="container d-flex align-items-center">
			<h1 class="logo mr-auto">
				<a href="../../index.jsp">Market Barly<span>.</span></a>
			</h1>
			<!-- Uncomment below if you prefer to use an image logo -->
			<!-- <a href="index.html" class="logo mr-auto"><img src="assets/img/logo.png" alt=""></a>-->

			<nav class="nav-menu d-none d-lg-block">
			
		<ul>
         <li class="drop-down"><a href="">전체 카테고리</a>
            <ul>
              <li><a href="../../vegetable.jsp">채소 과일(견과류,쌀)</a></li>
              <li><a href="../../fish.jsp">수산물</a></li>
              <li><a href="../../meat.jsp">정육</a></li>
              <li><a href="../../seasoning.jsp">양념</a></li>
            </ul>
          </li>
        
          <li class="active"><a href="../../index.jsp">Home</a></li>
          <li><a href="../../newproduct.jsp">신상품</a></li>
          <li><a href="../../shopping.jsp">알뜰쇼핑</a></li>
          <li><a href="../../basket.jsp">장바구니</a></li>
		  <li class="search"><input type="text" placeholder="상품명을 입력해주세요."></li>
		  <li><div class="button"><button>검색</button></div><li>
        </ul>
		</form>
		</li>
		</div>
	</header>
  <header>
   <%if(session.getAttribute("sessionId") == null){ %>
  <!-- ======= Top Bar ======= -->
  <div id="topbar" class="d-none d-lg-flex align-items-center fixed-top">
    <div class="container d-flex">
      <div class="contact-info mr-auto">
        <!-- <i class="icofont-envelope"></i> <a href="mailto:contact@example.com">contact@example.com</a>
        <i class="icofont-phone"></i> +1 5589 55488 55-->
      </div> 
      
      <div class="social-links">
         
         <a href="../userControl/signUp.jsp">회원가입</a>
         <a href="../loginAndOut/login.jsp">로그인</a>
         <a href="../../boardform.jsp">공지사항</a>
         <!-- <a href="#" class="facebook"><i class="icofont-facebook"></i></a>
         <a href="#" class="instagram"><i class="icofont-instagram"></i></a>
         <a href="#" class="skype"><i class="icofont-skype"></i></a>
         <a href="#" class="linkedin"><i class="icofont-linkedin"></i></i></a> -->
      </div>
    </div>
  </div>
<%}else if(session.getAttribute("sessionId") != null){ %>
<div id="topbar" class="d-none d-lg-flex align-items-center fixed-top">
    <div class="container d-flex">
      <div class="contact-info mr-auto">
        <!-- <i class="icofont-envelope"></i> <a href="mailto:contact@example.com">contact@example.com</a>
        <i class="icofont-phone"></i> +1 5589 55488 55-->
      </div> 
      
      <div class="social-links">
         
         <a href="../userControl/userUpdate.jsp"><%=session.getAttribute("sessionId") %>님을 환영합니다.</a>
         <a href="../../boardform.jsp">공지사항</a>
         <a href="../loginAndOut/logout.jsp">로그아웃 </a>
         <!-- <a href="#" class="facebook"><i class="icofont-facebook"></i></a>
         <a href="#" class="instagram"><i class="icofont-instagram"></i></a>
         <a href="#" class="skype"><i class="icofont-skype"></i></a>
         <a href="#" class="linkedin"><i class="icofont-linkedin"></i></i></a> -->
      </div>
    </div>
  </div>
<%}else%>

<!-- 카카오 id로 로그인 하면 보여지는 버튼들 -->
<%if(session.getAttribute("kakao_sessionToken") != null){ %>
<div id="topbar" class="d-none d-lg-flex align-items-center fixed-top">
    <div class="container d-flex">
      <div class="contact-info mr-auto">
        <!-- <i class="icofont-envelope"></i> <a href="mailto:contact@example.com">contact@example.com</a>
        <i class="icofont-phone"></i> +1 5589 55488 55-->
      </div> 
      
      <div class="social-links">
         
         <a href="../userControl/signUp.jsp">카카오로 로그인하여 사용하시는 이용자는 '회원가입'을 해야합니다.</a>
         <a href="../../boardform.jsp">공지사항</a>
         <a href="../loginAndOut/kakaoLogout.jsp">로그아웃 </a>
         <!-- <a href="#" class="facebook"><i class="icofont-facebook"></i></a>
         <a href="#" class="instagram"><i class="icofont-instagram"></i></a>
         <a href="#" class="skype"><i class="icofont-skype"></i></a>
         <a href="#" class="linkedin"><i class="icofont-linkedin"></i></i></a> -->
      </div>
    </div>
  </div>
<%}else if(session.getAttribute("kakao_sessionToken") != null){ %>
<div id="topbar" class="d-none d-lg-flex align-items-center fixed-top">
    <div class="container d-flex">
      <div class="contact-info mr-auto">
        <!-- <i class="icofont-envelope"></i> <a href="mailto:contact@example.com">contact@example.com</a>
        <i class="icofont-phone"></i> +1 5589 55488 55-->
      </div> 
      
      <div class="social-links">
         
         <a href="../../boardform.jsp">공지사항</a>
         <!-- <a href="#" class="facebook"><i class="icofont-facebook"></i></a>
         <a href="#" class="instagram"><i class="icofont-instagram"></i></a>
         <a href="#" class="skype"><i class="icofont-skype"></i></a>
         <a href="#" class="linkedin"><i class="icofont-linkedin"></i></i></a> -->
      </div>
    </div>
  </div>
<%}else%>
  </header><!-- End Header -->
  <main id="main" data-aos="fade-up">

    <!-- ======= Breadcrumbs Section ======= -->
    <section class="breadcrumbs">
      <div class="container">

        <div class="d-flex justify-content-between align-items-center">
          <h2>로그인</h2>
          <ol>
            <li><a href="../../index.jsp">Home</a></li>
           <!--  <li><a href="portfolio.html">Portfolio</a></li>  -->
            <li>Login</li>
          </ol>
        </div>

      </div>
    </section><!-- Breadcrumbs Section -->

    <!-- ======= 로그인 Section ======= -->
    <section class="login-details">
      <div class="container">

        <div class="portfolio-details-container">

          <div class="row" data-aos="fade-up" data-aos-delay="100">

          <div class="col-lg-6">
            
            <form action="loginOK.jsp" method="post" role="form">
              <div class="form-row">
             </div>
              
                <div class="col form-group">
                  <input type="text" name="id_user" class="form-control" id="id_user" placeholder="아이디를 입력해주세요" data-rule="minlen:4" />
                </div>
                
                 <div class="col form-group">
                  <input type="password" name="pw_user" class="form-control" id="pw_user" placeholder="비밀번를 입력해주세요" data-rule="minlen:4" />
                  <span id="idpwCk"></span>
                  </div>
                  <div class="col form-group">
                      <a href="../sendMail/findId.jsp"><span class="badge badge-light">아이디 찾기</span></a>
                      <a href="../sendMail/findPw.jsp"><span class="badge badge-light">비밀번호 찾기</span></a>
                </div>

              <div class="text-center">
              <button class="btn btn-primary btn-lg" type="submit">로그인</button>
              <a href="../userControl/signUp.jsp"><span class="btn btn-outline-primary btn-lg">회원가입</span></a>
              <br><br>
			  <h6>*게스트로 이용시만 카카오 로그인을 추천합니다.</h6>
<!-- 카카오톡 아이디 연동해서 로그인 -->
<script src = "//developers.kakao.com/sdk/js/kakao.min.js"></script>
<a id="kakao-login-btn"></a>
<a href="http://developers.kakao.com/logout"></a>
<script type='text/javascript'>
 //bd21082a499aaa79b4c08e01935a8a70
Kakao.init('2629caa8af0ff5652c5059fcfdac8eda'); //아까 카카오개발자홈페이지에서 발급받은 자바스크립트 키를 입력함
 //2629caa8af0ff5652c5059fcfdac8eda
//카카오 로그인 버튼을 생성합니다. 
 
Kakao.Auth.createLoginButton({ 
    container: '#kakao-login-btn', 
    success: function(authObj) { 
           Kakao.API.request({
 
               url: '/v2/user/me',
 
               success: function(res) {
 
                     //console.log(res.id);//<---- 콘솔 로그에 id 정보 출력(id는 res안에 있기 때문에  res.id 로 불러온다)
 
                     //console.log(res.kaccount_email);//<---- 콘솔 로그에 email 정보 출력 (어딨는지 알겠죠?)
 
                     //console.log(res.properties['nickname']);//<---- 콘솔 로그에 닉네임 출력(properties에 있는 nickname 접근 
          //var kakaonickname = res.properties.nickname//으로도 접근 가능 
          			 //console.log(kakaonickname)           
          
                     console.log(authObj.access_token);//<---- 콘솔 로그에 토큰값 출력
          
          //var kakao_id = res.id;    //카카오톡 닉네임을 변수에 저장
          //var kakao_email = res.kaccount_email;    //카카오톡 이메일을 변수에 저장함
         
          var kakao_token = authObj.access_token;
 
          //window.location.replace("http://" + window.location.hostname + ( (location.port==""||location.port==undefined)?"":":" + location.port) + "/MarketBarly/index.jsp?kakao_id="+kakao_id+"&kakao_email="+kakao_email);
          //window.location.replace("http://" + window.location.hostname + ( (location.port==""||location.port==undefined)?"":":" + location.port) + "/MarketBarly/index.jsp?kakao_id="+kakao_id+"&kakaonickname="+kakaonickname);
          //id만 url에서 확인
          //window.location.replace("http://" + window.location.hostname + ( (location.port==""||location.port==undefined)?"":":" + location.port) + "/MarketBarly/kakaoLogin.jsp?kakao_id="+kakao_id);
          ///token만 url에서 확인
          window.location.replace("http://" + window.location.hostname + ( (location.port==""||location.port==undefined)?"":":" + location.port) + "/MarketBarly/member/loginAndOut/kakaoLogin.jsp?kakao_token="+kakao_token);
      
                   }
                 })
               },
               fail: function(error) {
                 alert(JSON.stringify(error));
               }
             });
</script>
				  
              </div>
            </form>

          </div><!-- end col-lg-6 -->

        </div>
        
      </div><!-- end portfolio-details-container -->
    </section><!-- End Portfolio Details Section -->

  </main><!-- End #main -->
  <!-- ======= Footer ======= -->
 <jsp:include page="../../footer.jsp"></jsp:include> 
 
   <!-- Vendor JS Files -->
  <script src="../../assets/vendor/jquery/jquery.min.js"></script>
  <script src="../../assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
  <script src="../../assets/vendor/jquery.easing/jquery.easing.min.js"></script>
  <script src="../../assets/vendor/php-email-form/validate.js"></script>
  <script src="../../assets/vendor/waypoints/jquery.waypoints.min.js"></script>
  <script src="../../assets/vendor/counterup/counterup.min.js"></script>
  <script src="../../assets/vendor/owl.carousel/owl.carousel.min.js"></script>
  <script src="../../assets/vendor/isotope-layout/isotope.pkgd.min.js"></script>
<!--   <script src="assets/vendor/venobox/venobox.min.js"></script> ----------------------------------------------------------------무언가가 작동안하면 주석을 풀어야함-------------->
  <script src="../../assets/vendor/aos/aos.js"></script>

  <!-- Template Main JS File -->
  <script src="../../assets/js/main.js"></script>
  
<!-- 배송지역검색 외부 api 신규 버전 -->
<script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>

<!-- 유효성 검사를 위한 제이쿼리  -->
<script src="http://code.jquery.com/jquery-latest.min.js"></script>

  <!-- 주소 검색 및 팝업 js -->
<script src="../js/popUp.js"></script>

  <!-- null 검사를 및 주소 검색 js -->
<script src="../js/nullCheck.js"></script>

<!-- ajax를 위한 제이쿼리  -->
<script src="https://code.jquery.com/jquery-3.5.1.min.js" integrity="sha256-9/aliU8dGd2tb6OSsuzixeV4y/faTqgFtohetphbbj0=" crossorigin="anonymous"></script>
<!-- 체크박스 js -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
 
</body>

</html>