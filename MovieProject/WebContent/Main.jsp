<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
	

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="css/reset.css" rel="stylesheet" type="text/css" />
<link href="css/style.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="js/jquery.1.12.4.js"></script>
<script type="text/javascript"
   src="plugins/bxslider/js/jquery.bxslider.js"></script>

<script>
   $(document).ready(function() {
      $('.slider').bxSlider({
         controls : false,
         pager : false,
         auto : true
      });
   });

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
    
  function searchBtn() {
	location.href="MovieList.jsp"
}

    
</script>

</head>
<nav>
   <div class="logo img">
   <a href="Main.jsp">
      <img src="https://static.wixstatic.com/media/398446_15977dfbbf5043b9b410dae9c455c5c4~mv2.png/v1/fill/w_264,h_61,al_c,q_85,usm_0.66_1.00_0.01/%EB%AC%B4%EC%A0%9C-21.webp" 
      alt="무제-21.png" 
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
	    			<input type="button" value="로그아웃" onclick="logoutFn()" class="btn btn-info btn-sm">
	    			<input type="button" value="회원수정" onclick="logoutFn()" class="btn btn-info btn-sm">
	  			</div>
			</div>			 
	   	</c:otherwise>  
	</c:choose> 
</div> 

<div class="dropdown">
   <button onclick="dropbtn()" class="dropbtn"></button>
   <div id="myDropdown" class="dropdown-content">
     <a href="#">로맨스</a>
     <a href="#">액션</a>
     <a href="#">호러</a>
     <a href="#">코미디</a>
     <a href="#">애니메이션</a>
     <a href="#">드라마</a>
     <a href="#">스릴러</a>
     <a href="#">SF</a>
     <a href="#">판타지</a>
     <a href="#">다큐멘터리</a>
     <a href="#">외국</a>    
   </div>
 </div>
</nav>


<body>
  <form method="post" action="#" >
 <div class="mainbutton">
 
  <input type="text" placeholder="영화이름을 검색해주세요">
    <button type="button"  onclick="searchBtn()" id="movie_title">검색</button>
 </div>
</form>

	<div class="maintext"><p>
	
	안녕안녕 반가워요<br> 근데 영화검색기능 <br>리스트 언제  구현 할수있을까요
	살려주세용 
	
	
	</p>
	
	
	</div>
   <div class="overlay"></div>
   <div class="slider">
   
	   <div class="background_01"></div>
	   <div class="background_02"></div>
	   <div class="background_03"></div>
	   <div class="background_04"></div>
	   <div class="background_05"></div>
	   <div class="background_06"></div>
		 
   </div>
   
    
   
    
</body>

</html>