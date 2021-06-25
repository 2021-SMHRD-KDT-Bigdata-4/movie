<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

   

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
	   function updateFn() {
    	   var Data=$("#srm").serialize();
    	   $.ajax({
    	      url : "update.go",
    	      type : "post",
    	      data : Data,
	
		success : function(data) {
    		alert("수정완료")
    		location.href="Main.jsp"; 
				},
		error : function() {
					alert("error");
				}
			});
		}
    
    
		function delBtn() {
			var Data=$("#member_id").serialize();
		if (confirm("정말로 삭제 하시겠습니까?") == true) {
				$.ajax({
					url : "delete.go",
					type : "get",
					data : Data,
					success : function(data) {
	    	    		alert("삭제완료")
	    	    		location.href="Main.jsp"; 
					},
					error : function() {
						alert("error");
					}
				});
		} else {
			return false;
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
      <h2>마이페이지</h2>
      <div class="idForm">
        <input type="hidden" class="id" placeholder="${sessionScope.MemberVO.member_id}" name="member_id" id="member_id" value="${sessionScope.MemberVO.member_id}">
      </div>
      <div class="passForm">
        <input type="password" class="pw" placeholder="${sessionScope.MemberVO.member_password}" name="member_password" id="member_password" value="${sessionScope.MemberVO.member_password}">
      </div>
      <div class="nameForm">
        <input type="text" class="name" placeholder="${sessionScope.MemberVO.member_name}" name="member_name" id="member_name" value="${sessionScope.MemberVO.member_name}">
      </div>
      <div class="ageForm">
        <input type="text" class="age" placeholder="${sessionScope.MemberVO.member_age}" name="member_age" id="member_age" value="${sessionScope.MemberVO.member_age}">
        </div>
      <div class="genderForm">
        	<input type="text" class="gender" placeholder="${sessionScope.MemberVO.member_gender}" name="member_gender" id="member_gender" value="${sessionScope.MemberVO.member_gender}">        	
      </div>
      <div class="phoneForm">
        <input type="text" class="phone" placeholder="${sessionScope.MemberVO.member_phone}" name="member_phone" id="member_phone" value="${sessionScope.MemberVO.member_phone}">
      </div>
      <div class="genreForm">
        <input type="text" class="genre" placeholder="${sessionScope.MemberVO.member_genre}" name="member_genre" id="member_genre" value="${sessionScope.MemberVO.member_genre}">
      </div>
      <button type="button" class="btn" onclick="updateFn()">
      	회원수정
      </button>
      <button type="button" class="btn" onclick="delBtn(member_id)">
      	회원탈퇴
      </button>     
      <div class="bottomText">
          	회원가입
      </div>
    </form>
      
</body>

</html>