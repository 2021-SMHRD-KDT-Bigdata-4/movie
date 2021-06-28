<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("UTF-8"); %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<!DOCTYPE>
<html lang="UTF-8">
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


    
    
    <form action="http://127.0.0.1:5000/filter2" method="POST">
    
    
         <div class="wrapper" style="margin-bottom: 30px;">
   <c:forEach var="vo" items="${list}">

    

        <div class="card" style="width: 170;; height: 220px; margin-bottom: 50px;" >
            <img  src="${vo.movie_picture}">
            <input class="checkbox"type="checkbox" value="${vo.movie_seq}" name="movie_name">
        </div>
        </c:forEach>
    </div>
          
           <button type="submit" class="recosubmit">보내기</button>
     
   </form>
    
</body>
</html>