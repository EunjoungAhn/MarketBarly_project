<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%if (session.getAttribute("sessionId") != null) {
		session.invalidate();
		response.sendRedirect("../../index.jsp");
		System.out.print("로그아웃 성공!");
	}else{ %>
		<script> alert("로그아웃 실패"); history.go(-1); </script>
	<% } %>