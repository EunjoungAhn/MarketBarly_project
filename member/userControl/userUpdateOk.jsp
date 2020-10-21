<%@page import="bean.UserDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:useBean id="vo" class="bean.UserVO"></jsp:useBean>
<jsp:setProperty property="*" name="vo"/>
<%
	UserDAO dao = new UserDAO();
	boolean result = dao.update(vo);
	response.sendRedirect("../../index.jsp");
%>