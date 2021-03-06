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
<link href="css/MovieList.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="js/jquery.1.12.4.js"></script>
<script type="text/javascript"
   src="plugins/bxslider/js/jquery.bxslider.js"></script>
 
<script>



   function dropbtn() {
      document.getElementById("myDropdown").classList.toggle("show");
    }
    window.onclick = function(event) {
      if (!event.target.matches('.dropbtn')) {
        var dropdowns = document.getElementsByClassName("dropdown-content");
        var i;
        for (i = 0; i < dropdowns.length; i++) {
          var openDropdown = dropdowns[i];
          if (openDropdown.classList.contains('show')) {
            openDropdown.classList.remove('show');
          }
        }
      }
    }
    function dropbtn1() {
        document.getElementById("myDropdown1").classList.toggle("show");
      }
      window.onclick = function(event) {
        if (!event.target.matches('.dropbtn1')) {
          var dropdowns = document.getElementsByClassName("dropdown-content1");
          var i;
          for (i = 0; i < dropdowns.length; i++) {
            var openDropdown = dropdowns[i];
            if (openDropdown.classList.contains('show')) {
              openDropdown.classList.remove('show');
            }
          }
        }
      }
    function logoutFn(){
 	   $.ajax({
 	      url: "logout.go",
 	      type:"get",
 	      success:function(){ 
 	         location.href="Main.jsp"
 	      },
 	      error:function(){alert("error");}	      
 	   });	   
 	}
    

  function detailBtn(movie_seq){
  	location.href="<c:url value='/detail.go'/>?movie_seq="+movie_seq; 
  }
    
</script>

 
 
  </head>
  
  <nav>
   <div class="logo img">
   <a href="Main.jsp">
      <img src="https://static.wixstatic.com/media/398446_15977dfbbf5043b9b410dae9c455c5c4~mv2.png/v1/fill/w_264,h_61,al_c,q_85,usm_0.66_1.00_0.01/%EB%AC%B4%EC%A0%9C-21.webp" 
      alt="??????-21.png" 
      style="width:280px;height:65px;object-fit:cover;object-position:50% 50%">
      </a>
</div>

 <div class="loginform">	
	<c:choose>
	   <c:when test="${sessionScope.MemberVO==null}">
	   		<a href="login.jsp">login</a>
	   </c:when>
	   <c:otherwise>
	   		<div class="dropdown">
	  			<button  onclick="dropbtn1()" class="dropbtn1">${sessionScope.MemberVO.member_name} </button>
	  			<div id="myDropdown1" class="dropdown-content">   
	    			<input type="button" value="????????????" onclick="logoutFn()" class="btn btn-info btn-sm">
	    			<input type="button" value="????????????" onclick="logoutFn()" class="btn btn-info btn-sm">
	  			</div>
			</div>			 
	   	</c:otherwise>  
	</c:choose> 
</div> 

<div class="dropdown">
   <button onclick="dropbtn()" class="dropbtn"></button>
   <div id="myDropdown" class="dropdown-content">
     <a href="<c:url value='/genre.go'/>?movie_genre=????????? ">?????????</a>
     <a href="<c:url value='/genre.go'/>?movie_genre=?????? " >??????</a>
     <a href="<c:url value='/genre.go'/>?movie_genre=??????">??????</a>
     <a href="<c:url value='/genre.go'/>?movie_genre=?????????">?????????</a>
     <a href="<c:url value='/genre.go'/>?movie_genre=???????????????">???????????????</a>
     <a href="<c:url value='/genre.go'/>?movie_genre=?????????">?????????</a>
     <a href="<c:url value='/genre.go'/>?movie_genre=?????????">?????????</a>
     <a href="<c:url value='/genre.go'/>?movie_genre=SF">SF</a>
     <a href="<c:url value='/genre.go'/>?movie_genre=?????????">?????????</a>
     <a href="<c:url value='/genre.go'/>?movie_genre=???????????????">???????????????</a>
     <a href="<c:url value='/genre.go'/>?movie_genre=??????">??????</a>  
   </div>
 </div>
</nav>
  
  <body>
  
     <form method="post" action="search.go" name="formname"> 
  
 <div class="mainbutton">
 
  <input class="textarea" type="text" placeholder="??????????????? ??????????????????  " id="movie_title" name="movie_title">
    <input class="submit" type="submit" value="??????">
 </div>
</form>
    
  	
  
    <div class="overlay"></div>
	<div class="wrapper">
	<c:forEach var="vo" items="${list}">
        <div class="card">
            <img src="${vo.movie_picture}">
            <div class="descriptions">
                <h1>${vo.movie_title}</h1>
                <p>${vo.movie_summary}</p>
                <button type="button"  onclick="detailBtn(${vo.movie_seq})" >
                    <i class="fab fa-youtube"></i>????????????</button>
            </div>
        </div>
        </c:forEach>
  
      
    </div>
    
 <%--                  <div class = "paging1" id="paging">
<!-- 1~10?????? ?????? ???????????? ????????? -->
<c:url var="action" value="/memList.do"/>
<c:if test="${param.prev}">
    <a href="${action}?page=${param.beginPage-1}">prev</a>
</c:if>
<c:forEach begin="${param.beginPage}" end="${param.endPage}" step="1" var="index">
    <c:choose>
        <c:when test="${param.page==index}">
            ${index}
        </c:when>
        <c:otherwise>
            <a href="${action}?page=${index}">${index}</a>
        </c:otherwise>
    </c:choose>
</c:forEach>
<c:if test="${param.next}">
    <a href="${action}?page=${param.endPage+1}">next</a>
</c:if>
</div>
   
 --%>




  </body>
</html>