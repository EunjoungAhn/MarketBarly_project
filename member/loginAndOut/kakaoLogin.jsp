<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
             <%
	//카카오 토큰저장
    String kakao_token = request.getParameter("kakao_token");
    session.setAttribute("kakao_sessionToken", kakao_token);

   	//System.out.println("카카오로 로그인한 id 세션에 적용: "+ kakao_id + " forward 성공!");
   	System.out.println("카카오로 로그인시 세션에 적용: "+ kakao_token + " <forward 성공!>");
   	response.sendRedirect("../../index.jsp");
    %>
<%-- <jsp:forward page="../../index.jsp"></jsp:forward> --%>