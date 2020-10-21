/**
 * 
 */
//전송 전 null값 확인 후 전송
function formCheck() {
	//id null값 체크
	if(!document.signUp.id_user.value){
		//폼의 엘리먼트중 name이 'id_user'인 객체에 값이 입력되어 있지 않으면 실행
	     alert("아이디를 입력하세요"); //메시지 표시
	     document.signUp.id_user.focus();
	     return false; //문제가 발생시 formCheck()함수는 여기서 끝냄. 이벤트가 발생한 곳으로 복귀
	   }
	//pw null값 체크
	   if(!document.signUp.pw_user.value){
	     alert("비밀번호를 입력하세요");
	     document.signUp.pw_user.focus();
	   }
	 //pw확인 null값 체크
	   if(!document.signUp.pw_user2.value){
	     alert("비밀번호 확인을 입력하세요");  
	     document.signUp.pw_user2.focus();  
	     return false;    
	   }
	 //name null값 체크
	   if(!document.signUp.name_user.value){
	     alert("이름을 입력해주세요");  
	     document.signUp.name_user.focus();  
	     return false;    
	   }
	 //email null값 체크
	   if(!document.signUp.email_user.value){
	     alert("이메일을 입력해주세요");  
	     document.signUp.email_user.focus();  
	     return false;    
	   }
	   //tel null값 체크
	   if(!document.signUp.tel_user.value){
	     alert("휴대폰을 입력해주세요");  
	     document.signUp.tel_user.focus();  
	     return false;    
	   }
	   //주소1 null값 체크
	   if(!document.signUp.user_postcode.value){
	     alert("우편번호를 입력해주세요");  
	     document.signUp.user_postcode.focus();  
	     return false;   
	   }
	  //주소2 null값 체크
	   if(!document.signUp.user_address.value){
	     alert("주소를 입력해주세요");  
	     document.signUp.user_address.focus();  
	     return false;   
	   }
	   //주소3 null값 체크
	   if(!document.signUp.user_detailAddress.value){
	     alert("상세주소를 입력해주세요");  
	     document.signUp.user_detailAddress.focus();  
	     return false;   
	   }
	   //주소4 null값 체크
	   if(!document.signUp.user_extraAddress.value){
	     alert("참고항목을 입력해주세요");  
	     document.signUp.user_extraAddress.focus();  
	     return false;   
	   }
	   //birth_year null값 체크
	   if(!document.signUp.birth_year.value){
	     alert("년도를 입력해주세요");  
	     document.signUp.birth_year.focus();  
	     return false;   
	   }
	 //birth_month null값 체크
	   if(!document.signUp.birth_month.value){
	     alert("월을 입력해주세요");  
	     document.signUp.birth_month.focus();  
	     return false;   
	   }
	 //birth_day null값 체크
	   if(!document.signUp.birth_day.value){
	     alert("날을 입력해주세요");  
	     document.signUp.birth_day.focus();  
	     return false;
	   }
    //userEmailCode null값 체크
	   if(!document.signUp.userEmailCode.value){
	     alert("인증코드를 다시 확인해주세요");  
	     document.signUp.userEmailCode.focus();  
	     return false;
	   }
}

//아이디 유효검사
$('.id').keyup(function() {
	var id = $("#id_user").val();
	var idExp = /^[a-z0-9_]{6,20}$/; //아아디 길이 6~20사이 정규식
	var hangulcheck = /[ㄱ-ㅎ|ㅏ-ㅣ|가-힣]/;//한글 정규식
	var special = /[~`!>@?/<#"'\$;:\]%\.\^,&\[*()_\+\-=|\\{}]/ig; // 특수문자
	//아이디 길이 확인 
    if(id.length < 6){
        $('#idNok').html('아이디 길이가 짧습니다.(최소 4자이상)');
        $('#idNok').css("color","orange");
        	if (hangulcheck.test(id)) {
        		$('#idNok').html('한글을 입력하셨습니다.');
                $('#idNok').css("color","red");
			}else if(special.test(id)){
				$('#idNok').html('특수 문자를 입력하셨습니다.');
                $('#idNok').css("color","red");
			}
      //아이디 공백 확인
        if(id == ""){
            $('#idNok').html('사용할 아이디를 입력해주세요.');
            $('#idNok').css("color","orange");
          }
   //아이디 유효성 검사
    }else if (!idExp.test(id)) {
        $('#idNok').html('아이디 입력이 잘못 되었습니다.');
        $('#idNok').css("color","red");
    }
    /* else{
    	$('#idNok').html('중복체크해주세요.');
    	$('#idNok').css("color","green");
    }*/
});

//비밀번호 유효검사
$('.pw').keyup(function () {
     var pw1 = $("#pw_user").val();
     var pw2 = $("#pw_user2").val();
     var hangulcheck = /[ㄱ-ㅎ|ㅏ-ㅣ|가-힣]/;//한글 정규식
     var pwEmpty = /\s/g;//공백 정규식
 	 //비밀번호 확인 검사
     if ( pw1 != '' && pw2 == '' ) {
         null;
     } else if (pw1 != "" || pw2 != "") {
       if (pw1 == pw2) {
           $("#pwOk").css('display', 'inline-block');
           $("#pwNok").css('display', 'none');
       } else {
           $("#pwOk").css('display', 'none');
           $("#pwNok").css('display', 'inline-block');
       }
     
     }
     //공백 검사
     if (pw1 == pwEmpty || pw2 == pwEmpty){
          $("#pwCh").css('display', 'inline-block');
       } else {
          $("#pwCh").css('display', 'none');
       }
     //한글 검사
     if (hangulcheck.test(pw1)) {
    	  $("#pwCh").css('display', 'inline-block');
	}else{
		 $("#pwCh").css('display', 'none');
	}
 });

//이름 유효검사
$('.name').keyup(function() {
	var name = $("#name_user").val();
	//한글 또는 영문 사용하기(아직 혼용 안되게 해결 못함)
	var nameExp = /^[a-zA-Z]{2,10}|[가-힣]{2,4}$/; //한,영 정규식
	if (!nameExp.test(name)) {
        $("#nameNok").css('display', 'inline-block');
	}else{
		$("#nameNok").css('display', 'none');
	}
});

//이메일 유효검사
$('.email').keyup(function() {
	var email = $("#email_user").val();
	var emailExp = /^[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*\.[a-zA-Z]{2,3}$/i; //이메일 정규식
	if (!emailExp.test(email)) {
        $("#emailNok").css('display', 'inline-block');
	}else{
		$("#emailNok").css('display', 'none');
	}
});

//휴대폰 유효검사
$('.tel').keyup(function() {
	var tel = $("#tel_user").val();
	//var regExp = /^01([0|1|6|7|8|9]?)-?([0-9]{3,4})-?([0-9]{4})$/; //휴대폰 번호 체크 정규식
 	//var regExp = /^\d{3}-\d{3,4}-\d{4}$/; //휴대폰 정규식
	var telExp = /^\d{3}\d{3,4}\d{4}$/; // '-' 없는 휴대폰 정규식
	if (!telExp.test(tel)) {
        $("#telNok").css('display', 'inline-block');
	}else{
		$("#telNok").css('display', 'none');
	}
});

//생년월일 유효검사
$('.birth').keyup(function() {
	var birth_year = $("#birth_year").val();
	var birth_month = $("#birth_month").val();
	var birth_day = $("#birth_day").val();
	if (birth_year < 1920 || birth_year > 2006){
		$('#birthNok').html('년도가 잘못 되었습니다.');
        $('#birthNok').css("color","red");
	}else if(birth_month < 1 || birth_month > 12){
		$('#birthNok').html('1월~12월 중 입력해주세요.');
        $('#birthNok').css("color","red");
	}else if(birth_day < 1 || birth_day > 31){
		$('#birthNok').html('날짜를 확인해주세요.');
        $('#birthNok').css("color","red");
	}else{
		$('#birthNok').html('');
	}
});

//이용약관 체크박스 체크 후 가입하기 버튼 활성화
$(".sumbit button").prop("disabled", true);
$("#customCheck").on('click',function(){
    var chk = $('input:checkbox[id="customCheck"]').is(":checked");
    if(chk==true){
        $(".sumbit button").removeProp('disabled');
    }else{
        $(".sumbit button").prop("disabled", true);
    }
});

//-------------ajax------------------	
//이메일 비밀번호 찾기시 아이디(회원) 확인 
$('#id_user').focusout(function() {
	$.ajax({
		url: "../userControl/idCheck.jsp",
		data: {
			id_user: $('#id_user').val()
				},
				success: function(idSameCheck) {
					if(idSameCheck == 0){
					$('#pwNok').html('회원이십니다.')
					$('#pwNok').css("color","green");
					}else if(idSameCheck == 1){
					$('#pwNok').html('회원이 아니십니다.')
					$('#pwNok').css("color","red");
					}
				}//success
			})//ajax
		})//id_user에서 focusout될때
	
//아이디검사, 중복된 아이디면 '주소버튼' 비활성화
$('#id_user').focusout(function() {
	$.ajax({
		url: "../userControl/idCheck.jsp",
		data: {
			id_user: $('#id_user').val()
				},
				success: function(idSameCheck) {
					if(idSameCheck == 0){
					$('#idNok').html('이미 사용중 혹은 탈퇴한 아이디 입니다.')
					$('#idNok').css("color","red");
					$('#duplicateCheck').prop("disabled",true);//버튼 비활성화
					}else if(idSameCheck == 1){
					$('#idNok').html('사용가능한 아이디 입니다.')
					$('#idNok').css("color","green");
					$('#duplicateCheck').prop("disabled",false);//버튼 활성화
					}
				}//success
			})//ajax
		})//id_user에서 focusout될때
		
//로그인 아이디 및 비번 검사 
$('#pw_user').keyup(function() {
	$.ajax({
		url: "../userControl/idPwCheck.jsp",
		data: {
			id_user: $('#id_user').val(),
			pw_user: $('#pw_user').val()
				},
				success: function(idpwck) {
					if(idpwck == 1){
					$('#idpwCk').html('')
					}else if(idpwck == 0){
					$('#idpwCk').html('아이디와 비번을 다시 확인해 주세요.')
					$('#idpwCk').css("color","red");
					}
				}//success
			})//ajax
		})//pw_user에서 focusout될때