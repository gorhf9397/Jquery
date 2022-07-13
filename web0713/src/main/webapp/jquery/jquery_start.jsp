<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="http://code.jquery.com/jquery-latest.js"></script>
<script>
	//$(요소),이벤트(function(){});
	// jquery는 모두 익명함수로 처리
	// jstl el 함수에는 {} // jquery $ 에는 () 작성
	$(function() {  //$(document).ready(function(){
		$("#aa").click(function(){
			alert("하하하");
		});
	});
</script>
</head>
<body>
	<div id="aa">클릭</div>


</body>
</html>