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
         
         <a href="member/userControl/userUpdate.jsp"><%=session.getAttribute("sessionId") %>님을 환영합니다.</a>
         <a href="../../boardform.jsp">공지사항</a>
         <a href="member/loginAndOut/logout.jsp">로그아웃 </a>
         <!-- <a href="#" class="facebook"><i class="icofont-facebook"></i></a>
         <a href="#" class="instagram"><i class="icofont-instagram"></i></a>
         <a href="#" class="skype"><i class="icofont-skype"></i></a>
         <a href="#" class="linkedin"><i class="icofont-linkedin"></i></i></a> -->
      </div>
    </div>
  </div>
<%}else{%>

<!-- 카카오 id로 로그인 하면 보여지는 버튼들 -->
<%if(session.getAttribute("kakao_sessionToken") != null){ %>
<div id="topbar" class="d-none d-lg-flex align-items-center fixed-top">
    <div class="container d-flex">
      <div class="contact-info mr-auto">
        <!-- <i class="icofont-envelope"></i> <a href="mailto:contact@example.com">contact@example.com</a>
        <i class="icofont-phone"></i> +1 5589 55488 55-->
      </div> 
      
      <div class="social-links">
         
         <a href="member/userControl/signUp.jsp">카카오로 로그인하여 사용하시는 이용자는 '회원가입'을 해야합니다.</a>
         <a href="../../boardform.jsp">공지사항</a>
         <a href="member/loginAndOut/kakaoLogout.jsp">로그아웃 </a>
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
	<%}%>
<%}%>
	</header>
	<!-- End Header -->
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
	
	<main id="main" data-aos="fade-up">

		<!-- ======= Breadcrumbs Section ======= -->
		<section class="breadcrumbs">
			<div class="container">

				<div class="d-flex justify-content-between align-items-center">
					<h2>회원가입</h2>
					<ol>
						<li><a href="../../index.jsp">Home</a></li>
						<!--  <li><a href="portfolio.html">Portfolio</a></li>  -->
						<li>Sing Up</li>
					</ol>
				</div>

			</div>
		</section>
		<!-- Breadcrumbs Section -->

		<!-- ======= 로그인 Section ======= -->
		<section class="signUp-details">
			<div class="container">

				<div class="portfolio-details-container">

					<div class="row" data-aos="fade-up" data-aos-delay="100">

						<div class="col-lg-6">

							<form action="signUpOk.jsp" name="signUp" onsubmit="return formCheck()">
								<div class="form-row"></div>

							   <!-- 아이디  -->
								<div class="col form-group">
									<span class="badge badge-primary">아이디</span> 
									<input type="text" name="id_user" id="id_user"
									class="form-control id" value="" maxlength="16"
									placeholder="6자 이상의 영문 혹은 영문과 숫자를 조합" /> 
									<span id="idNok">아이디는 영어와 숫자만 가능합니다.</span>
								</div>

								<!-- 비빌번호  -->
								<div class="col form-group">
									<span class="badge badge-primary">비밀번호</span> <input
										type="password" name="pw_user" class="form-control pw"
										id="pw_user" placeholder="비밀번를 입력해주세요" data-rule="minlen:4" />
									<span>8~15자리의 영문, 숫자, 특수문자의 입력만 가능합니다.</span> <span id="pwCh"
										style="display: none; color: #d92742; font-weight: bold;">한글
										또는 공백을 넣으실 수 없습니다.</span>
								</div>

								<!-- 비밀번호 확인  -->
								<div class="col form-group">
									<span class="badge badge-primary">비밀번호 확인</span> <input
										type="password" class="form-control pw" id="pw_user2"
										placeholder="비밀번호를 한번 더 입력해주세요" data-rule="minlen:4" /> 
									<span id="pwOk" style="display: none; color: blue;">비밀번호가 일치합니다.
									</span> 
									<span id="pwNok" style="display: none; color: #d92742; font-weight: bold;">
									비밀번호가 일치하지 않습니다.</span>
								</div>

								<!-- 이름 -->
								<div class="col form-group">
									<span class="badge badge-primary">이름</span> <input type="text"
										name="name_user" class="form-control name" id="name_user"
										placeholder="이름을 입력해주세요" data-rule="minlen:4" />
									<span id="nameNok" style="display: none; color: #d92742;
									 font-weight: bold;">한글 또는 영문으로만 작성해주세요.(혼용x)</span>
								</div>

								<!-- 이메일 -->
								<div class="col form-group">
									<span class="badge badge-primary">이메일</span> <input type="text"
										name="email_user" class="form-control email" id="email_user"
										placeholder="이메일을 입력해주세요" data-rule="minlen:4" />
									<button id="emailConfirm" type="button"
										class="btn btn-outline-primary">이메일 인증</button>
									<span id="emailNok"
										style="display: none; color: #d92742; font-weight: bold;">이메일
										형식이 올바르지 않습니다.</span><br><br>

								 <div id="userEmailCodeDiv" style='display: none'> 
									<span class="badge badge-primary">인증코드</span>
										<input id="userEmailCode">
										<button id="userEmailCodeButton" class="btn btn-primary"
										type="button" value="">확인</button>
								 </div> 
								 
								</div>
									<span id="emailCodeCheck"></span>

								<!-- 휴대폰  -->
								<div class="col form-group">
									<span class="badge badge-primary">휴대폰</span> <input type="text"
										name="tel_user" class="form-control tel" id="tel_user"
										placeholder="숫자만 입력해주세요" data-rule="minlen:4" />
									<span id="telNok"
										style="display: none; color: #d92742; font-weight: bold;">번호를 잘못 입력하셨습니다.</span>
								</div>

								<!-- 주소  -->
								<div class="col form-group">
									<input type="button" onclick="searchAddress()" value="주소 찾기"
										class="btn btn-primary btn-lg" id="duplicateCheck"><br> <input
										type="text" name="user_postcode" id="user_postcode"
										placeholder="우편번호" class="form-control" readonly> <input
										type="text" name="user_address" id="user_address"
										placeholder="주소" class="form-control" readonly><br> <input
										type="text" name="user_detailAddress" id="user_detailAddress"
										placeholder="상세주소" class="form-control"> <input
										type="text" name="user_extraAddress" id="user_extraAddress"
										placeholder="참고항목" class="form-control">
								</div>

								<!-- 생년월일  -->
								<div class="col form-group">
									<span class="badge badge-primary">생년월일</span>
										<input type="text" class="birth" name="birth_year" id="birth_year" pattern="[0-9]*" size=4 maxlength=4 placeholder="YYYY">
										<input type="text" class="birth" name="birth_month" id="birth_month" pattern="[0-9]*" size=2 maxlength=2 placeholder="MM">
										<input type="text" class="birth" name="birth_day" id="birth_day" pattern="[0-9]*" size=2 maxlength=2 placeholder="DD">
										<span id="birthNok"></span>
									</div>
								
									<!-- 이용약관  -->
								<div class="col form-group">
									<span class="badge badge-primary">이용약관</span>
									<div class="custom-control custom-checkbox sumbit">
										<input type="checkbox" class="custom-control-input customCheck"
											id="customCheck" name="customCheck" value="true"> <label
											class="custom-control-label" for="customCheck">동의하지
											않으면 회원가입이 불가능 합니다.<br>*배송을 위한 정보 확인외에는 사용되지 않습니다.</label>
											<br><br>
									<button id="userEmailOK" class="btn btn-primary btn-lg"
									
									 type="submit">가입하기</button>
									</div>
								</div> 
								
								</form>
		
							</div>
						</div>
						<!-- end col-lg-6 -->

					</div>

				</div>
				<!-- end portfolio-details-container -->
		</section>
		<!-- End Portfolio Details Section -->

	</main>
	<!-- End #main -->
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
 
<script type="text/javascript">
//이메일 인증 메일 발송
$('#emailConfirm').click(function() {
	$.ajax({
		url: "../sendMail/emailConfirm.jsp",
		data: {
			email_user: $('#email_user').val(),
				},
				success: function(temPw) {
					temPw2 = temPw.trim("")//엔터를 지우는 코드
					console.log("--------------메일 인증 코드: " + temPw2)
					//인증 div 보이기
					$('#userEmailCodeDiv').css('display', 'inline-block');
					//인증코드 확인 안하고 가입하기 클릭시 alert
					$('#userEmailOK').mouseover(function() {
					alert("인증코드를 다시 확인해 주세요.");
					$('#userEmailCode').focus();
					})//userEmailOK mouseover 시
					//인증코드 비교 확인					
					$('#userEmailCodeButton').click(function() {
						userEmailCode = $('#userEmailCode').val();
						console.log("--------------회원가입 input 값: " + userEmailCode)
					if(temPw2 == userEmailCode){
						$('#emailCodeCheck').html('인증이 성공하였습니다.');
		                $('#emailCodeCheck').css("color","green");
						$('#tel_user').focus();
						$('#userEmailOK').off();
					}else{
						$('#emailCodeCheck').html('인증코드를 다시 확인해 주세요.');
		                $('#emailCodeCheck').css("color","red");
						$('#userEmailCode').focus();
						}//첫번째 if문의 else
					})//userEmailCodeButton 클릭 
			}//success
		})//ajax
	})//email_user에서 click될때
</script>
	
</body>

</html>