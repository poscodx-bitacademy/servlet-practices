<%@page import="com.poscodx.guestbook.dao.GuestbookDao"%>
<%@page import="com.poscodx.guestbook.vo.GuestbookVo"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");

	String name = request.getParameter("name");
	String password = request.getParameter("password");
	String message = request.getParameter("contents");
	
	GuestbookVo vo = new GuestbookVo();
	vo.setName(name);
	vo.setPassword(password);
	vo.setContents(message);
	
	new GuestbookDao().insert(vo);
	
	response.sendRedirect(request.getContextPath());
%>
