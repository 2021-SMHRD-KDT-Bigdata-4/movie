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
<link href="css/Detail.css" rel="stylesheet" type="text/css" />
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
    function writeFn(movie_seq) {
    	   var formData= $("#frm").serialize();
    	   $.ajax({
    	      url : "review.go",
    	      type: "post",
    	      data: formData,
    	      success: function() {
    	    	  location.href="<c:url value='/detail.go'/>?movie_seq="+movie_seq; 
    	    	},
    	      error: function() { alert("error");   }
    	   
    	   });   
    	}
    function writeFn1() {
    	 if(confirm ("리뷰 작성은 로그인이 필요합니다.\n로그하시겠습니까?")==true){
    		 location.href="login.jsp"
    	  
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
     <a href="#">외국</a>    
   </div>
 </div>
</nav>
  
  <body>
  
  
    <div class="wrap">
       
       <div class="summarybox">
       
       
       <div class="picture"> 
        <img src="${vo.movie_picture}">
       </div>
       
       <div class="box">
          <p style="font-size: 20px;">${vo.movie_title}</p>
          <br>
          
          <p style="font-size: 15px;">${vo.movie_genre}</p>
          <br>
          <hr>
          <br>

          <p style="font-size: 14px;">${vo.movie_summary} </p>
          <hr>
          <p style="font-size: 15px;">평점: ${vo.movie_rate}</p>
          
       </div>       
       </div>
    		 
    </div>
    
    <div class="iframe">
    	<iframe width="900px" height="300px" src="https://www.youtube.com/embed/d-m4rYkGhwg" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
    	 	
</div>
<div class="reviewcontents" style="overflow-y:scroll ">
    	 <table class="blueone">
    <thead>
      <tr>
      	<th>No</th>
        <th>리뷰내용</th>
        <th>작성자</th>
        <th>작성시간</th>
      </tr>
    </thead>
    <tbody>
      
      <c:forEach var="vo" items="${list}">
      <tr>
      	<td>${vo.review_seq}</td>
        <td>${vo.review_contents}</td>
        <td>${vo.review_id}</td>
        <td>${vo.review_date}</td>
         <td  align="right">
         
      <input type="button" value="수정" onclick="updateFn()" class="btn btn-success btn-sm">     
      <input type="button" value="삭제" onclick="delFn()" class="btn btn-success btn-sm">     
      </td>
      </tr>       
      </c:forEach>
      
    </tbody>
  </table>
    	</div>
    	
   
    	
    	
 	
    	
	 
    <form id="frm" name="frm"  method="post">
	<c:if test="${sessionScope.MemberVO==null}">
       <div class="review">
    <input style="width:900px; height: 100px" placeholder="리뷰를작성해주세요"id="review_contents" name="review_contents">
    
    <button type="button" class="btn" onclick="writeFn1()">리뷰쓰기</button>
    </div>
    </c:if>
    <c:if test="${sessionScope.MemberVO!=null}">
       <div class="review">
    <input style="width:900px; height: 100px" placeholder="리뷰를작성해주세요"id="review_contents" name="review_contents">
    <input type="hidden" class="class" name="review_movie" id="review_movie" value="${vo.movie_title}">
    <input type="hidden" class="class" name="movie_seq" id="movie_seq" value="${vo.movie_seq}">
    <input type="hidden" class="class" name="member_seq" id="member_seq" value="${sessionScope.MemberVO.member_seq}">
    <input type="hidden" class="class" name="review_id" id="review_id" value="${sessionScope.MemberVO.member_id}">
    <button type="button" class="btn" onclick="writeFn(${vo.movie_seq})">리뷰쓰기</button>
    </div>
   </c:if>
    </form>
   
  
  
  


  </body>
</html>