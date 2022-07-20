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
		//글자를 클릭하면 빨간색으로
		$(".aa").click(function(){
			$(this).css("color","red");
			alert($(this).index());
		});
	});
</script>
</head>
<body>
<div class="aa">짜장면1</div>
<div class="aa">짜장면2</div>
<div class="aa">짜장면3</div>
<div class="aa">짜장면4</div>
<div class="aa">짜장면5</div>
<div class="aa">짜장면6</div>
<div class="aa">짜장면7</div>
</body>
</html>