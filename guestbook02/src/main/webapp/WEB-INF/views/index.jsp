<%@page import="com.douzone.guestbook.vo.GuestbookVo"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
	List<GuestbookVo> list = (List<GuestbookVo>)request.getAttribute("list");
%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>방명록</title>
</head>
<body>
	<h1>방명록 예제</h1>
	<form action="<%=request.getContextPath() %>/gb" method="post">
		<input type="hidden" name="a" value="add">
		<table border=1 width=500>
			<tr>
				<td>이름</td><td><input type="text" name="name"></td>
				<td>비밀번호</td><td><input type="password" name="password"></td>
			</tr>
			<tr>
				<td colspan=4><textarea name="message" cols=60 rows=5></textarea></td>
			</tr>
			<tr>
				<td colspan=4 align=right><input type="submit" VALUE="등록"></td>
			</tr>
		</table>
	</form>
	
	<%
		int count = list.size();
		for(GuestbookVo vo : list){
	%>
		<br>
		<table width=510 border=1>
			<tr>
				<td>[<%=count-- %>]</td>
				<td><%=vo.getName() %></td>
				<td><%=vo.getRegDate() %></td>
				<td><a href="<%=request.getContextPath() %>/gb?a=deleteform&no=<%=vo.getNo() %>">삭제</a></td>
			</tr>
			<tr>
				<td colspan=4><%=vo.getMessage().replaceAll("\n", "<br/>") %></td>
			</tr>
		</table>
	<%
		}
	%>
</body>
</html>
