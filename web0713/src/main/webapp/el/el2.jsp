<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	// 내장객체 영역의 값을 쉽게 출력할수 있게 사용하는 표현식
	pageContext.setAttribute("name","hong");
	request.setAttribute("name", "superman");
	session.setAttribute("name", "wonder");
	application.setAttribute("name", "bbororo");
%>
<%=pageContext.getAttribute("name") %><p>
<%=request.getAttribute("name") %><p>
<%=session.getAttribute("name") %><p>
<%=application.getAttribute("name") %><p>
<hr>
<!-- el표현식으로 처리 -->
${pageScope.name} <p>
${requestScope.name}<p>
${sessionScope.name}<p>
${applicationScope.name}
<hr>
<!-- 일반적인 작업시에는 변수명만 처리 -->
${name}
<!-- 같은 이름이 존재 pageContext > request > session > application 순으로 실행 -->
</body>
</html>