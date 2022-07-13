<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- el 표현식의 연산 -->
${"hihihihihi"}<p>
<%
	request.setAttribute("kor",90);
	request.setAttribute("eng",80);
%>

<!-- 표현식으로 출력 -->
국어 : ${kor} <p>
영어 : ${eng} <p>

<!-- 표현식에서 산술연산 -->
국어+영어 : ${kor+eng}<p>
국어-영어 : ${kor-eng}<p>

<!-- 표현식에서 비교연산 -->
국어 > 영어 : ${kor>eng} <p>
국어 == 영어 : ${kor == eng }<p>
국어 < 영어 : ${kor<eng}<p>
국어 > 영어 : ${kor gt eng}<p>
국어 == 영어 : ${kor eq eng}<p>
국어 < 영어 : ${kor lt eng}<p>
국어 != 영어 : ${kor ne eng}<p>

<!-- 논리연산자 -->
${true && true}<p>
${treu and false}<p>
${true || false}<p>
${true or false}<p>

<%
	request.setAttribute("num","");
%>

<!-- null 과 빈값 -->
<!-- empty 로는 null 인지 아닌지 구분할수없다 -->
empty num : ${empty num}<p>
empty imsi : ${empty imsi}<p>
<!-- empty를 구분하려면 == 으로 구분 -->
${num == null}<p>
${imsi == null}<p>

<!-- 상황연산 -->
${kor>eng ? "국어가 크다":"영어가 크다"}
<!-- 앞값이크면 앞문구 뒷값이크면 뒷문구 -->