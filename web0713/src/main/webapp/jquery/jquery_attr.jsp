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
		//태그의 속성을 읽어오거나 바꿀때는 attr(attribute)를 사용한ㄷㅏ..
		// 태그의 속성을 읽어오기
		var s1=$("input[type=text]").attr("value");
		//alert(s1);
		// 태그의 속성을 바꾸기
		$("#aa").attr("type","radio");
		
		$("a").attr("href","http://www.naver.com");
	});
</script>
</head>
<body>
<input type="text"><p>
<input type="checkbox" id="aa">
<a href="">클릭</a>
</body>
</html>