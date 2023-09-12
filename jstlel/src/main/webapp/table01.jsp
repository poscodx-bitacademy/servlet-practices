<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>  
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
	String row = request.getParameter("r");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<table border="1" cellspacing="0" cellpadding="10">
		<tr>
			<td>Cell(0, 0)</td>
			<td>Cell(0, 1)</td>
			<td>Cell(0, 2)</td>
		</tr>
		<tr>
			<td>Cell(1, 0)</td>
			<td>Cell(1, 1)</td>
			<td>Cell(1, 2)</td>
		</tr>
		<tr>
			<td>Cell(2, 0)</td>
			<td>Cell(2, 1)</td>
			<td>Cell(2, 2)</td>
		</tr>
	</table>
</body>
</html>