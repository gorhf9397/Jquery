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
	bdao.update(request);
%>
<form method="post" action="update_ok.jsp">
<input type="hidden" name="id" value="${bdto.id }">
	<table width="500" border="0">
		<tr>
			<td>제목</td>
			<td><input type="text" name="title" value="${bdto.title }"></td>
		</tr>
		<tr>
			<td>작성자</td>
			<td><input type="text" name="name" value="${bdto.name }"></td>
		</tr>
		<tr>
			<td>내용</td>
			<td><textarea cols="42" rows="8" type="text" name="content">${bdto.content}</textarea></td>
		</tr>
		<tr>
        	<td> 비밀번호 </td>
        	<td><input type="password" name="pwd" size="4"> </td>
      	</tr>
		<tr>
			<td><input type="submit" value="수정"></td>
		</tr>
	</table>
</form>
</body>
</html>