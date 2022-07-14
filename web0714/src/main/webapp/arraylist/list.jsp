<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%@page import="arraylist.StudentDao" %>
<%@page import="java.util.ArrayList" %>
<%@page import="arraylist.StudentDto" %>
<%
	StudentDao sdao=new StudentDao();
	sdao.getStudent(request); // getStudent 호출하면서 ArrayList를 request
%>
<c:forEach items="${list }" var="sdto">
	${sdto.id} : ${sdto.name} : ${sdto.age } : ${sdto.phone }<p>
</c:forEach>
</body>
</html>