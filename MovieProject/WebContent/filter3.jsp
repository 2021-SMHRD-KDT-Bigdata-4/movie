<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("UTF-8"); %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<!DOCTYPE>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Document</title>
    <link href="css/reset.css" rel="stylesheet" type="text/css" />
<link href="css/filter.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="js/jquery.1.12.4.js"></script>
<script type="text/javascript"
   src="plugins/bxslider/js/jquery.bxslider.js"></script>
</head>
<body>

<script>

function submitbtn(){

	 location.href="<c:url value='/filter3.go'/>";

}






</script>

    
    
    
	<div class="wrapper">
<c:forEach var="vo" items="${list}">
	<input type="checkbox" value="${vo.movie_seq}">
        <div class="card" >
            <img src="${vo.movie_picture}">
            <div class="descriptions">
                <h1>${vo.movie_title}</h1>
                <p>${vo.movie_summary}</p>
                <button>
                    <i class="fab fa-youtube"></i>상세보기</button>
            </div>
        </div>
        </c:forEach>
        <button type="submit">파이썬으로보내기</button>
      
    </div>
    <form>
    <button class= "submitbutton" type="button" onclick="submitbtn()">제출</button>
    </form>
    
    
</body>
</html>