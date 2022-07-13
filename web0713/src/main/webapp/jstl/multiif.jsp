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
<!-- else가 없기때문에 교집합처리는 && 로 두개에 조건으로 처리해준다 -->
<!-- 국어점수를 가지고 성적을 출력(A,B,C,D,E,F) -->
	<c:set var="kor" value="89"/>
	
	<c:if test="${kor>=90 }">
		성적은 A<p>
	</c:if>
	<c:if test="${kor>=80 && kor<90 }">
		성적은 B<p>
	</c:if>
	<c:if test="${kor>=70 && kor<80}">
		성적은 C<p>
	</c:if>
	<c:if test="${kor>=60 && kor<70}">
		성적은 D<p>
	</c:if>
	<c:if test="${kor>=50 && kor<60}">
		성적은 E<p>
	</c:if>
	<c:if test="${kor<50}">
		성적은 F<p>
	</c:if>
</body>
</html>