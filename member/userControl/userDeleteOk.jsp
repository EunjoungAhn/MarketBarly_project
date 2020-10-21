<%@page import="bean.UserDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:useBean id="vo" class="bean.UserVO"></jsp:useBean>
<jsp:setProperty property="*" name="vo"/>
<%
	String id_user = (String)session.getAttribute("sessionId");
	String pw_user = request.getParameter("pw_user");
	UserDAO dao = new UserDAO();
	boolean result = dao.delete(id_user, pw_user);
	response.sendRedirect("../../index.jsp");
	session.invalidate();
%>