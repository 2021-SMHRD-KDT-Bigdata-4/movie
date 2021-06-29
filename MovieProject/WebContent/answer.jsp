<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");
%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script>

function submit() {
	alert("제출되었습니다. 감사합니다.")
	history.back();
}

</script>
<style></style>
</head>
<body>
	<h1>설문조사</h1>
	<br>
	<fieldset name="interest">
		<legend>관심장르(1개이상)</legend>
		<input type="checkbox" name="interest" value="1" />액션 
		<input type="checkbox" name="interest" value="2" />공포 
		<input type="checkbox" name="interest" value="3" />로맨스
	    <input type="checkbox" name="interest" value="4" />판타지
	    <input type="checkbox" name="interest" value="5" />애니메이션
	</fieldset>
	<br>
	<fieldset name="score">
		<legend>추천시스템</legend>
		좋아하는  영화가 추천 되었나요?1 <input type="range" min="1" max="5" /> 5<br>
		좋아하는  장르가 추천 되었나요? 1 <input type="range" min="1" max="5" /> 5<br>
		
	</fieldset>
	<br> 기타 의견 사항
	<br>
	<textarea cols="100" rows="5" placeholder="기타 사항을 적어주세요">기타사항을 적어주세요.</textarea>
	<br>
	<input type="button" onclick="submit()" value="확인" />
	<input type="reset" value="취소" />
</body>


</html>