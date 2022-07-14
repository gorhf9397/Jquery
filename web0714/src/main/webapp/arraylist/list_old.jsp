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
<%@page import="arraylist.StudentDao_old" %>
<%@page import="java.util.ArrayList" %>
<%@page import="arraylist.StudentDto" %>
<%
	StudentDao_old sdao=new StudentDao_old();
	ArrayList<StudentDto> list=sdao.getStudent();
	
	//StudentDto sdto=list.get(0);
	//out.print(sdto.getName());
	
	//out.print(list.get(1).getName());
	
	//request영역으로 list를 저장
	request.setAttribute("list", list);
%>
<c:forEach items="${list }" var="sdto">
	${sdto.id} : ${sdto.name} : ${sdto.age } : ${sdto.phone }<p>
</c:forEach>
</body>
</html>