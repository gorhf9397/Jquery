<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%@page import="java.sql.*" %>
<%
Class.forName("com.mysql.jdbc.Driver");
String db="jdbc:mysql://localhost:3306/first";
Connection conn=DriverManager.getConnection(db , "root", "1234");

String id=request.getParameter("id");

String sql="update board1 set readnum=readnum+1 where id=?";

PreparedStatement pstmt=conn.prepareStatement(sql);
pstmt.setString(1,id);
pstmt.executeUpdate();

//readum증가시키기
 response.sendRedirect("content.jsp?id="+id);
%>
</body>
</html>