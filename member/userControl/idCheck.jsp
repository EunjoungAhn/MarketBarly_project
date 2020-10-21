<%@page import="bean.UserDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%><%
String idCheck = request.getParameter("id_user");
    UserDAO dao = new UserDAO();
int idSameCheck = dao.idCheck(idCheck);
%><%= idSameCheck %>