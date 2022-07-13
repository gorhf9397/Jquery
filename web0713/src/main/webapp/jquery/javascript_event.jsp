<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script>
	window.onload=function() { // 문서를 읽을때 실행
		document.querySelector("#aa").onclick=function() {
			alert("호호");
		}
		document.querySelector("#bb").onclick=check;
		
		document.querySelector("#cc").onclick=function() {
			alert("꾸웨에에에에에에엑!!")
		}
	}
	function check() {
		alert("몰라요");
	}
</script>
</head>
<body>
	<div id="aa">클릭</div> <div id="bb">클릭</div>
	<div id="cc">click</div>
</body>
</html>