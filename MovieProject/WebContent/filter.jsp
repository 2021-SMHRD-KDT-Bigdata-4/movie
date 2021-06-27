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
<link href="css/filter.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="js/jquery.1.12.4.js"></script>
<script type="text/javascript"
   src="plugins/bxslider/js/jquery.bxslider.js"></script>
</head>
<body>

<script>

function submitbtn(){

    location.href="<c:url value='/filter.go'/>";

}
function fi_btn(){

    location.href="<c:url value='/filter2.go'/>";

}

function _submit(f)
{
    //같이 보낼 값 정리
    if (typeof(f.elements['chk[]'].length) == 'undefined') //단일
    {
        if (f.elements['chk[]'].checked==false)
        {
            f.elements['field_a[]'].disabled=true;
            f.elements['field_b[]'].disabled=true;
        }
    } else { //다중
        for (i=0; i<f.elements['chk[]'].length; i++)
        {
            if (f.elements['chk[]'][i].checked==false)
            {
                f.elements['field_a[]'][i].disabled=true;
                f.elements['field_b[]'][i].disabled=true;
            }
        }
    }
    return true;
}

</script>

    
    
    
   <%-- <div class="wrapper">
   <c:forEach var="vo" items="${list}">
   <input type="checkbox" value="${vo.movie_seq}">
        <div class="card" >
            <img src="${vo.movie_picture}">
            <div class="descriptions">
                <h1>${vo.movie_title}</h1>
                <p>${vo.movie_summary}</p>
                <button>
                    <i class="fab fa-youtube"></i>상세보기</button>
            </div>
        </div>
        </c:forEach>
        
      <button type="submit">파이썬으로보내기</button>
    </div> --%>
    <form>
    <button class= "submitbutton" type="button" onclick="submitbtn()">제출</button>
    </form>
    
    
    <form action="http://127.0.0.1:5000" method="GET">
		   <div class="wrapper">
		   
		   <div class="card" >
            <img src="https://movie-phinf.pstatic.net/20140721_186/1405911310756Tt2X1_JPEG/movie_image.jpg?type=m203_290_2">
            <div class="descriptions">
                <h1>명량</h1>
                <p>111</p>
                <button>
                    <i class="fab fa-youtube"></i>상세보기</button>
            </div>
        </div>
        
   <c:forEach var="vo" items="${list}">
   <!-- <form id="form1" name="form1" method="post" action="" onsubmit="_submit(this);"> -->
    <input type="checkbox" value="0" name="명량">
<!--    </form> -->
   <%-- <input type="checkbox" value="${vo.movie_seq}" onclick="if(this.checked){this.form.submit()}"> --%>
   <!-- <input type="checkbox" name="match" value="matchwithpairs" checked> -->
        <div class="card" >
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
    		<!-- <input type="submit" value="전송"> -->
    		 <button type="submit" class="recosubmit">보내기</button>
    		<!-- <button type="submit" class = "submittest">파이썬으로보내기</button> -->
    <!-- <input type="submit" name="Submit" id="button" value="Submit" /> -->
		<!-- <button type="submit" class = "submittest" onclick="fi_btn">파이썬으로보내기</button> -->
	</form>
    
</body>
</html>