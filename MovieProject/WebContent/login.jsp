<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="css/reset.css" rel="stylesheet" type="text/css" />
<link href="css/loginstyle.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="js/jquery.1.12.4.js"></script>
<script type="text/javascript" src="plugins/bxslider/js/jquery.bxslider.js"></script>

   

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
    function loginFn(){
    	var member_id=$("#member_id").val();
    	var member_password=$("#member_password").val();
    	$.ajax({
    		url : "login.go",
    	    data : {"member_id":member_id,"member_password":member_password},
    	    success : function(data){
    	    	if(data=="NO"){
    	    		alert("회원인증에 실패했습니다.");
    	    	}else{
    	    		alert("환영합니다.")
    	    		location.href="Main.jsp"; // 메인화면으로
    	    	}	 
    	    },	    
    	    error : function(){alert("error");}	   		
    	});	
    }
    function logoutFn(){
    	   $.ajax({
    	      url: "logout.go",
    	      type:"get",
    	      success:function(){ 
    	         location.href="login.jsp"
    	      },
    	     error:function(){alert("error");}	      
    	   });	   
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
   <div class="overlay"></div>
   <div class="slider">
	   <div class="background_01"></div>
	   <div class="background_02"></div>
	   <div class="background_03"></div>
   </div>
   
    <form method="post" class="loginForm">
      <h2>Login</h2>
      <div class="idForm">
        <input type="text" class="id" placeholder="ID" id="member_id" name="member_id">
      </div>
      <div class="passForm">
        <input type="password" class="pw" placeholder="PW" id="member_password" name="member_password">
      </div>
      <button type="button" class="btn" onclick="loginFn()">
        LOG IN
      </button>
      
      <div class="bottomText">
		아이디가 없으신가요?        
        <a type="button" href = "signup.jsp">회원가입</a>
      </div>
    </form>
</body>
</html>