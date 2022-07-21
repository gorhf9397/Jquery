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
			//클릭된 요소를 앞 요소 앞에 이동
			var n=$(this).index();
			if(n != 0){
				// $(this).insertBefore($(".aa").eq(n-1)); // 클릭된 요소를 앞 요소 앞에 이동
				// 클릭된 요소 앞의 요소를 클릭된 요소 뒤로 이동
				$(".aa").eq(n-1).insertAfter($(this));
				
				var len=$(".in").length;
				for(i=0;i<len;i++) {
					$(".in").eq(i).text(i+1);
				}
			}
		});
	});
</script>
</head>
<body>
<!-- 클릭하면 바로 위에 있는 것과 바꾸기 -->
<div class="aa"><span class="in">1</span> 짜장면1</div>
<div class="aa"><span class="in">2</span> 짜장면2</div>
<div class="aa"><span class="in">3</span> 짜장면3</div>
<div class="aa"><span class="in">4</span> 짜장면4</div>
<div class="aa"><span class="in">5</span> 짜장면5</div>
<div class="aa"><span class="in">6</span> 짜장면6</div>
<div class="aa"><span class="in">7</span> 짜장면7</div>
<div class="aa"><span class="in">8</span> 짜장면8</div>
<div class="aa"><span class="in">9</span> 짜장면9</div>
<div class="aa"><span class="in">10</span> 짜장면10</div>
</body>
</html>