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
		$(".aa").click(function(){
			$(this).insertBefore($(".aa").eq(0));
		});
	});
</script>
</head>
<body>
<!-- 메뉴를 클릭하면 제일 위로 올리기 -->
<div class="aa">짜장면1</div>
<div class="aa">짜장면2</div>
<div class="aa">짜장면3</div>
<div class="aa">짜장면4</div>
<div class="aa">짜장면5</div>
<div class="aa">짜장면6</div>
<div class="aa">짜장면7</div>
</body>
</html>