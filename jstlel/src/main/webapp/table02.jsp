<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>  
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<c:set var="row" value="${param.r }" />
	<c:set var="col" value="${param.c }" />
	
	<c:if test="${empty row }">
		<c:set var="row" value="3" />
	</c:if>
	<c:if test="${empty col }">
		<c:set var="col" value="3" />
	</c:if>
	
	<table border="1" cellspacing="0" cellpadding="10">
		<c:forEach begin="0" end="${row - 1 }" step="1" var="i">
			<tr>
				<c:forEach begin="0" end="${col - 1 }" step="1" var="j">
					<td>Cell(${i }, ${j })</td>
				</c:forEach>
			</tr>
		</c:forEach>
	</table>
</body>
</html>