<%@page import="com.douzone.guestbook.dao.GuestbookDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");

	String sno = request.getParameter("no");
	Long no = Long.parseLong(sno);
	String password = request.getParameter("password");
	
	new GuestbookDao().deleteByNoAndPassword(no, password);
	
	response.sendRedirect(request.getContextPath());
%>