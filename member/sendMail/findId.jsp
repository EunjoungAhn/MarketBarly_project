<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="UTF-8">
<head>
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
         <a href="#">공지사항</a>
         <a href="../loginAndOut/kakaoLogout.jsp">로그아웃 </a>
         <!-- <a href="#" class="facebook"><i class="icofont-facebook"></i></a>
         <a href="#" class="instagram"><i class="icofont-instagram"></i></a>
         <a href="#" class="skype"><i class="icofont-skype"></i></a>
         <a href="#" class="linkedin"><i class="icofont-linkedin"></i></i></a> -->
      </div>
    </div>
  </div>
<%}else if(session.getAttribute("kakao_sessionId") != null){ %>
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
          <h2>아이디 찾기</h2>
          <ol>
            <li><a href="../../index.jsp">Home</a></li>
           <!--  <li><a href="portfolio.html">Portfolio</a></li>  -->
            <li>Find Id</li>
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
            
            <form action="idSendMail.jsp" role="form">
              <div class="form-row">
             </div>
              
              
                <div class="col form-group">
                  <input type="text" name="name_user" class="form-control" id="name_user" placeholder="고객님의 이름을 입력해주세요" data-rule="minlen:4" />
                  <div class="validate"></div>
                </div>
                
                 <div class="col form-group">
                  <input type="text" name="email_user" class="form-control" id="email_user" placeholder="가입시 등록하신 이메일을 입력해주세요" data-rule="minlen:4" />
                  <div class="validate"></div>
                </div>
                

              <!--  메시지 입력란          
              <div class="form-group">
                <textarea class="form-control" name="message" rows="5" data-rule="required" data-msg="Please write something for us" placeholder="Message"></textarea>
                <div class="validate"></div>
              </div> -->
              
          
              <div class="text-center">
              <button class="btn btn-primary btn-lg" type="submit">확인</button>
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