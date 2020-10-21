<%@page import="Mail.MailUtil"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:useBean id="vo" class="bean.UserVO"></jsp:useBean>
<jsp:setProperty property="*" name="vo"/>
<%! public int getRandom(){
	int random = 0;
	random = (int)Math.floor((Math.random()*(99999-10000+1)))+10000;
	return random;
} %>

<% 
int temporaryPw = getRandom();
String temPw = Integer.toString(temporaryPw);

String email_user = request.getParameter("email_user");

String title = "Market Barly에서 이메일을 발송하였습니다.";

String content = "";
content += "<div align='center' style='border:1px solid black; font-family:verdana'>";
content += "<h3 style='color: blue;'>이메일 인증번호 입니다. >> "+temPw+"</h3>";
content += "<div style='font-size: 130%'>";
content += "회원가입 페이지로 돌아가 인증을 완료해 주세요.<strong>"; 

MailUtil.sendMail(email_user, title, content);
System.out.println("이메일 인증 코드 입니다."+temPw+"코드 메일 발송이 성공하였습니다.");
%><%= temPw %>