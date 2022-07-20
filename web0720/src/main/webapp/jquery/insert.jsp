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
		//동일한 이름을 가진 요소들 중에서 특정 요소로 접근하기 => eq(index)
		//$(".aa").eq(3).css("color","red"); // document.getElementsByClassName("aa")[3].style.color="red";
		$("#btn").click(function(){
			// index 3번을 0번을 앞에 넣기
			$(".aa").eq(3).insertBefore($(".aa").eq(0)); 
		});
		$("#btn2").click(function(){
			$(".aa").eq(3).insertAfter($(".aa").eq(0));
		});
	});
</script>
</head>
<body>
<input type="button" id="btn" value="insertBefore">
<input type="button" id="btn2" value="insertAfter">
<hr>
<div class="aa">짜장면1</div>
<div class="aa">짜장면2</div>
<div class="aa">짜장면3</div>
<div class="aa">짜장면4</div>
<div class="aa">짜장면5</div>
<div class="aa">짜장면6</div>
<div class="aa">짜장면7</div>
</body>
</html>