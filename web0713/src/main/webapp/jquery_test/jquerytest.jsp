<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="http://code.jquery.com/jquery-latest.js"></script>
<script>
$(function(){
	$("#h1").mouseover(function(){
		$("#h1").css("color","red");
	});
	$("#h1").mouseout(function(){
		$("#h1").css("color","black");
	})
	
	$("#imgs").mouseover(function(){
		$("#imgs").attr("src","bg4.jpg")
	});
	$("#imgs").mouseout(function(){
		$("#imgs").attr("src","bg3.jpg")
	});
});
</script>
</head>
<body>
	<h1 id="h1">안녕하세요</h1>
	<img id="imgs" src="bg3.jpg">
</body>
</html>