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
	<link href="css/filter3.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="js/jquery.1.12.4.js"></script>
<script type="text/javascript"
   src="plugins/bxslider/js/jquery.bxslider.js"></script>
   
   
   <script>
   
   function detailBtn(movie_seq){
	  	location.href="<c:url value='/detail.go'/>?movie_seq="+movie_seq; 
	  }
   </script>
   
</head>
<body>

	<div class="overlay"></div>
    
     <div class="text-box" style="left: 30%; width: 65%; top:5%;">
		<div class="text-wrap">
			<div class="heart"></div>
			<h2>Final Filtering</h2>
		</div>
	</div>
    <form action="http://127.0.0.1:5000/filter2" method="POST">
    
    
         <div class="wrapper" style="margin-bottom: 30px;">
   <c:forEach var="vo" items="${list}">

    

        <div class="card" style="width: 170px;height: 220px;margin-bottom: 90px;" >
            <img  src="${vo.movie_picture}">
            <button type="button"  onclick="detailBtn(${vo.movie_seq})" >
                    <i class="snip1535"></i>영화보러가기</button>
        </div>
        </c:forEach>
    </div>
           
     
   </form>
    
</body>
</html>