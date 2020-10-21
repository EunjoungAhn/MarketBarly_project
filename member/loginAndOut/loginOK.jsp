<%@page import="bean.UserDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String id_user = request.getParameter("id_user");
	String pw_user = request.getParameter("pw_user");

	UserDAO dao = new UserDAO();
	boolean result = dao.login(id_user, pw_user);
	
	if(result){
		session.setAttribute("sessionId", id_user);
		response.sendRedirect("../../index.jsp");
	}else{ %>
	<!-- alert 디자인  -->
<!-- 	<!DOCTYPE script PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
	<head>
	 버튼을 위한 css link 
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
	</head>
	<body>
	<div class="alert alert-dismissible alert-warning">
  <button type="button" class="close" data-dismiss="alert">&times;</button>
  <h4 class="alert-heading">Warning!</h4>
  <p class="mb-0">Best check yo self, you're not looking too good. Nulla vitae elit libero, a pharetra augue. Praesent commodo cursus magna, <a href="#" class="alert-link">vel scelerisque nisl consectetur et</a>.</p>
</div>
</body> -->
		<script>
		alert("아이디와 비번을 다시 확인해 주세요."); history.go(-1);
		</script>
	<% } %>

