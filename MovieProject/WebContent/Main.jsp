<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
</script>

</head>
<nav id="topMenu">
	<ul>
		<li class="topMenuLi"><a class="menuLink"
			href="#">드롭박스메뉴1</a>
			<ul class="submenu">
				<li><a
					href="#"
					class="submenuLink longLink">메뉴1</a></li>
				<li><a
					href="#"
					class="submenuLink longLink">메뉴2</a></li>
				<li><a
					href="#"
					class="submenuLink longLink">메뉴3</a></li>
			</ul></li>
		<li>|</li>
		<li class="topMenuLi"><a class="menuLink"
			href="#">드롭박스메뉴2</a></li>
		<li>|</li>
		<li class="topMenuLi"><a class="menuLink"
			href="#">드롭박스메뉴3</a>
			<ul class="submenu">
				<li><a
					href="#"
					class="submenuLink">메뉴1</a></li>
				<li><a href="#"
					class="submenuLink">메뉴2</a></li>
				<li><a href="#"
					class="submenuLink">메뉴3</a></li>
			</ul></li>
		<li>|</li>
		<li class="topMenuLi"><a class="menuLink"
			href="#">드롭박스메뉴4</a></li>
		<li>|</li>
		<li class="topMenuLi"><a class="menuLink"
			href="#">드롭박스메뉴</a></li>
	</ul>
</nav>






<body>
	<div class="overlay"></div>
	<div class="slider">
		<div class="background_01"></div>
		<div class="background_02"></div>
		<div class="background_03"></div>
	</div>
</body>
</html>