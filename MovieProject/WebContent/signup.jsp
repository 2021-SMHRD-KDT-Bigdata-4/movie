<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="css/reset.css" rel="stylesheet" type="text/css" />
<link href="css/signupstyle.css" rel="stylesheet" type="text/css" />
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
    function signupFn(){
    	var signData= $("#srm").serialize();
  	   $.ajax({
  	      url: "signup.go",
  	      type:"post",
  	      data : signData,
  	      success:function(data){
	    		alert("회원가입완료")
	    		location.href="Main.jsp"; 
  	      },
  	     error:function(){alert("error");}	      
  	   });	   	
     }

    
    $(function(){
    	//아이디 중복체크
    	$(".msg2").hide();
      	$(".msg1").hide();
    	   $('#member_id').blur(function(){
    	        $.ajax({
    	         url:"check.go",
    		     type:"post", 		     
    		     data:{ "member_id":$('#member_id').val()
    		    },
    		     success:function(data){	
    		            if(parseInt(data)==1){
    		               $(".msg2").show();
    		               $(".msg1").hide();
    		           	}else{
    		           		$(".msg1").show();
    		           		$(".msg2").hide();
    		            }
    		         },
    		         error:function(){alert("error");}	
    		    });
    	     });
    	});
    	

     $(function(){
    	//비밀번호 확인
    	$(".pw1").hide();
    	$(".pw2").hide();
    		$("#member_password_check").keyup(function(){
    		   var member_password = $("#member_password").val() ;
    		   var member_password_check = $("#member_password_check").val();
    		   if(member_password != "" || member_password_check != ""){
    			   if(member_password==member_password_check){
    				    $(".pw1").show();
    			    	$(".pw2").hide();
    			   }else{
    				    $(".pw1").hide();
    			    	$(".pw2").show();
    			   }    			  
    		   }    		    	
    		});  	   
    	}); 

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
   <div id="myDropdown" 
   class="dropdown-content">
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
   
   
    <form id="srm" name="srm"  method="post" class="signForm">
      <h2>회원가입</h2>
      <div class="idForm">

        <input type="text" class="id" placeholder="아이디" name="member_id" id="member_id">
        <span class="msg1">사용가능합니다.</span>
        <span class="msg2">중복된 아이디 입니다.</span>

      </div>
      <div class="passForm">
        <input type="password" class="pw" placeholder="비밀번호" name="member_password" id="member_password">
      </div>
      <div class="passForm">
        <input type="password" class="pw" placeholder="비밀번호확인" name="member_password_check" id="member_password_check">
      	<span class="pw1">비밀번호가 일치합니다.</span>
        <span class="pw2">비밀번호가 일치하지 않습니다.</span>
      </div>
      <div class="nameForm">
        <input type="text" class="name" placeholder="이름" name="member_name">
      </div>
      <div class="ageForm">
        <input type="text" class="age" placeholder="나이" name="member_age">
        </div>
      <div class="genderForm">
        <input type="text" class="gender" placeholder="성별" name="member_gender">
      </div>
      <div class="phoneForm">
        <input type="text" class="phone" placeholder="전화번호" name="member_phone">
      </div>
      <div class="genreForm">
        <input type="text" class="genre" placeholder="선호장르" name="member_genre">
      </div>
      <button type="button" class="btn" onclick="signupFn()">
      	회원등록
      </button>
      <div class="bottomText">
          	회원가입
      </div>
    </form>
   
   
</body>

</html>