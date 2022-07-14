<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%@page import="board.boarddao" %>
<%
	boarddao bdao=new boarddao();
	bdao.update_ok(request, response);
%>
</body>
</html>