<%@page import="bean.UserDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%><%
String login_id_user = request.getParameter("id_user");
String login_pw_user = request.getParameter("pw_user");
UserDAO dao = new UserDAO();
int idpwck = dao.loginCheck(login_id_user, login_pw_user);
%>
<%=idpwck%>