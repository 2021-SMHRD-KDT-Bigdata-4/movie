<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="css/reset.css" rel="stylesheet" type="text/css" />
<link href="css/loginstyle.css" rel="stylesheet" type="text/css" />
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
   <a onclick="">login</a>
</div>


<div class="dropdown">
   <button onclick="dropbtn()" class="dropbtn"></button>
   <div id="myDropdown" class="dropdown-content">
     <a href="#">로맨스</a>
     <a href="#">액션</a>
     <a href="#">호러</a>
   </div>
 </div>
</nav>


<body>
   <div class="overlay"></div>
   <div class="slider">
	   <div class="background_01"></div>
	   <div class="background_02"></div>
	   <div class="background_03"></div>
   </div>
    <form action="index.html" method="post" class="loginForm">
      <h2>Login</h2>
      <div class="idForm">
        <input type="text" class="id" placeholder="ID">
      </div>
      <div class="passForm">
        <input type="password" class="pw" placeholder="PW">
      </div>
      <button type="button" class="btn" onclick="button()">
        LOG IN
      </button>
      <script>
      	let button = () => {
        	alert('login Button !')
        }
      </script>
      <div class="bottomText">
        아이디가 없으신가요? <a href="#">회원가입</a>
      </div>
    </form>
   
   
</body>

</html>