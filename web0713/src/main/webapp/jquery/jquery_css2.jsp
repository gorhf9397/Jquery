<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="http://code.jquery.com/jquery-latest.js"></script>
<script>
	//jquery의 메소드를 여러개 사용할 경우
	//$(요소).메소드명();
	$(function(){
		// 요소의 색, 크기, 배경색
		$("#aa").css("color","red");
		$("#aa").css("font-size","30px");
		$("#aa").css("background","pink");
		
		//연속으로 처리
		$("#bb").css("color","blue").css("font-size","20px").css("background","yellow");
	});
</script>
</head>
<body>
	<div id="aa">ㅎㅇㅎㅇㅎㅇㅎㅇㅎㅇ</div>
	<div id="bb">ㅎㅇㅎㅇㅎㅇㅎㅇㅎㅇ</div>
</body>
</html>