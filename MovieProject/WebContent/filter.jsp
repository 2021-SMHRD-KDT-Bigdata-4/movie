<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");
%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE>
<html lang="en">
<head>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>Document</title>
<link href="css/reset.css" rel="stylesheet" type="text/css" />
<link href="css/MovieList.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="js/jquery.1.12.4.js"></script>
<script type="text/javascript"
	src="plugins/bxslider/js/jquery.bxslider.js"></script>


<script>
	$("#start").on('click', itemClick);
	function itemClick(event) {
		var targetId = event.currentTarget.id;
		alert(data);
		data = {
			movie_title : #{movie_title}
				
		}
	}
		/* if ($('#' + targetId).hasClass('active')) {
			$.ajax({
				type : 'DELETE',
				contentType : 'application/json',
				url : '/delete/delete_items',
				data : JSON.stringify(data),
				dataType : 'text',
				success : function(response) {
					console.log(response)
				},
				error : function(xtr, status, error) {
					alert(xtr + ":" + status + ":" + error);
				}
			});
		} else {
			$.ajax({
				type : 'POST',
				contentType : 'application/json',
				url : '/post/add_items',
				data : JSON.stringify(data),
				dataType : 'text',
				success : function(response) {
					console.log(response)
				},
				error : function(xtr, status, error) {
					alert(xtr + ":" + status + ":" + error);
				}
			});
		} */
	/* 	$('#' + targetId).toggleClass('active');
	} */
	
</script>

</head>
<body>
	 <form method="post" >
    <div class="overlay"></div>
	<div class="wrapper">
	<c:forEach var="vo" items="${list}">
        <div class="card">
            <img src="${vo.movie_picture}">
            <div class="descriptions">
                <h1>${vo.movie_title}</h1>
                <p>${vo.movie_summary}</p>
                <button>
                    <i class="fab fa-youtube"></i>상세보기</button>
            </div>
        </div>
        </c:forEach>
      
    </div>
    </form>

</body>
</html>