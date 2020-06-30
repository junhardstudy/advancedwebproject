<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<link rel = "stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
<title> 여행가조</title>
</head>
<style>
	body{
	background-color : black;
	color : white;
	}
	nav {
  	width: 100%;
  	display: flex;
  	justify-content: center;
  	position: relative;
  	font-weight : bold;
  	float : center;
	}
	div{
	height: 100px;
	font-weight : bold;
	font-size:3;
	line-height: 2em;
	color : white;
	}
	ul, li {
  	margin: 0;
  	padding: 0;
  	list-style: none;
	color : white;
	}
	
	#sub-menu {
	background-color : black;
	width: 80%;
  	opacity: 0;
  	visibility: hidden;
  	transition: all 0.2s ease-in;
	line-height: 2em;
	font-size:3;
	color : white;
	font-weight : bold;
	margin:0;
	padding:0;
	list-style:none;
	left:0;
	top:0;
	}

	
	
	#main-menu > li {
	float: left;
  	position: relative;
	}
	#main-menu > li:hover #sub-menu {
 	opacity: 1;
  	visibility: visible;

	}
	
	
</style>
<body>
<nav class="navbar navbar-expand  navbar-dark fixed-top">
	<div class="main-menu">
		<ul id= main-menu>
			<li><a class="navbar-brand" href="./description.jsp"> <img src="https://www.flaticon.com/premium-icon/icons/svg/3010/3010476.svg"  width="75" height="75"> Home &nbsp; &nbsp; &nbsp;</a></li> 
			<li><a class="navbar-brand" href=".index.jsp"> <img src="https://image.flaticon.com/icons/svg/925/925568.svg"  width="75" height="75">여행가조 소개 &nbsp; &nbsp; &nbsp;</a></li>
			<li><a class = "navbar-brand" href="./contents_list.jsp"> <img src="https://image.flaticon.com/icons/svg/3069/3069220.svg"   width="75" height="75">여행지 보기 &nbsp; &nbsp; &nbsp;
			 	<ul  id="sub-menu">
        			<li><a class = "navbar-brand " href="#" aria-label="subemnu"><img src="https://image.flaticon.com/icons/svg/3069/3069220.svg"   width="35" height="30">예시1</a></li>
        			<li><a class = "navbar-brand "href="#" aria-label="subemnu"> &nbsp; &nbsp;<img src="https://image.flaticon.com/icons/svg/3069/3069220.svg"   width="35" height="30"> 333</a></li>
        			<li><a class = "navbar-brand "href="#" aria-label="subemnu"> &nbsp; &nbsp; 333</a></li>
     			
     			 </ul>
  		  	</li>
			<li><a class="navbar-brand" href="./writepost.jsp"> <img src="https://image.flaticon.com/icons/svg/752/752326.svg"  width="75" height="75">여행 기록 하기 &nbsp; &nbsp; &nbsp;</a></li>
		
		</ul>
	</div>
</nav>
</body>
</html>