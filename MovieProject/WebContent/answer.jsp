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
<style>
	html,body{
	width: 100%;
	height: 100%;
	margin: 0;
	background-color: rgba(0, 0, 0, 0.1);
	
	}
	.interest{
	width:fit-content;
	margin-left: 25%;
	
	
	}
	.box{
	padding-top:50px;
	}

	
	
</style>
</head>
<body>
	<form class="box">
	<div class="overlay"></div>
	<div class="interest">
	<h1>설문조사</h1>
	<br>
	<fieldset>
		<legend>관심장르(1개이상)</legend>
		<input type="checkbox" name="interest" value="1" />액션 
		<input type="checkbox" name="interest" value="2" />공포 
		<input type="checkbox" name="interest" value="3" />로맨스
	    <input type="checkbox" name="interest" value="4" />판타지
	    <input type="checkbox" name="interest" value="5" />애니메이션
	</fieldset>
	<br>
	<fieldset>
		<legend  class="interest">추천시스템</legend>
		좋아하는  영화가 추천 되었나요? 1 <input type="range" min="1" max="10" /> 10<br>
		좋아하는  장르가 추천 되었나요? 1 <input type="range" min="1" max="10" /> 10<br>
		만족도는 어떠신가요? 1 <input type="range" min="1" max="10" /> 10<br>
		
		
	</fieldset>
	<br> 기타 의견 사항
	<br>
	<textarea cols="100" rows="5" placeholder="기타 사항을 적어주세요"></textarea>
	<br>
	<input type="button" onclick="submit()" value="확인" />
	<input type="reset" value="취소" />
	</div>
	</form>
	
</body>


</html>