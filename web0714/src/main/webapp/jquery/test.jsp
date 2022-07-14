<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script>
	function move() {
		document.querySelector("#aa").innerText=document.querySelector("#content").value;
	}
</script>
<style>
	div {
		width:400px;
		height:400px;
		border:1px solid red;
	}
	li {
		display:inline-block;
	}
	#aa {
		width:400px;
		height:400px;
		border:1px solid red;
	}
	
</style>
</head>
<body>
	<ul>
	<li>
		<textarea cols="40" rows="6" id="content"></textarea>
	</li>
	<li>
		<input type="button" onclick="move()" value="이동">
	</li>
	<li><div id="aa"></div></li>
	</ul>
</body>
</html>