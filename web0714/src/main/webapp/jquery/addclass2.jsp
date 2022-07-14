<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="http://code.jquery.com/jquery-latest.js"></script>
<style>
	.ss {
		color:red;
		font-size:30px;
		border:1px solid blue;
		width:200px;
		height:30px;
	}
</style>
<script>
	$(function(){
		$("#aa").click(function(){
			$("#aa").addClass("ss");
		});
		$("#btn1").click(function(){
			$("#aa").removeClass("ss");
		});
	});
</script>
</head>
<body>
	<input type="button" id="btn1" value="removeClass">
	<div id="aa" onclick="change()"> hihihihihi </div>
</body>
</html>