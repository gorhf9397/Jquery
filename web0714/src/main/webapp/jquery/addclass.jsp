<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script>
	function change() {
		const ha=document.querySelector("#aa");
	/*	document.querySelector("#aa").style.color="red";
			document.querySelector("#aa").style.fontSize="30px";
				document.querySelector("#aa").style.border="1px solid blue";
					document.querySelector("#aa").style.width="200px"
						document.querySelector("#aa").style.height="30px";	*/
		ha.style.color="red";
			ha.style.fontSize="30px";
				ha.style.border="1px solid blue";
					ha.style.width="200px"
						ha.style.height="30px";
	}
</script>
</head>
<body><!-- addclass.jsp -->
	<!-- id="aa"인 요소의 글자색, 크기, 외곽선, 가로 세로를 적용 -->
	<!-- 안녕하세요 클릭되면 스타일 변경 -->
	<div id="aa" onclick="change()"> 안녕하세요 </div>
</body>
</html>