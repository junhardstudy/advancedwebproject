<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
</head>
<style>
</style>
<body>
	<nav class="navbar navbar-expand-lg navbar-light bg-light">
		<a class="navbar-brand" href="#"> Home</a>
		<button class="navbar-toggler" type="button" data-toggle="collapse"
			data-target="#navbarText" aria-controls="navbarText"
			aria-expanded="false" aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>
		<div class="collapse navbar-collapse" id="navbarText">
			<ul class="navbar-nav mr-auto">
				<li class="nav-item active"><a class="nav-link" href="#">
				 <img src="https://www.flaticon.com/premium-icon/icons/svg/3010/3010476.svg"  width="60" height="60">Home
						<span class="sr-only">(current)</span>
				</a></li>
				<li class="nav-item"><a class="nav-link" href="#">
				<img src="https://image.flaticon.com/icons/svg/925/925568.svg"  width="60" height="60">
				여행가조 소개 </a>
				</li>
				<li class="nav-item dropdown"><a
					class="nav-link dropdown-toggle" href="#"
					id="navbarDropdownMenuLink" role="button" data-toggle="dropdown"
					aria-haspopup="true" aria-expanded="false">
					<img src="https://image.flaticon.com/icons/svg/3069/3069220.svg"   width="60" height="60">
					여행지 보기</a>
					<div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
						<a class="dropdown-item" href="#">
							<img src="https://www.flaticon.com/premium-icon/icons/svg/2276/2276829.svg"   width="50" height="50">국내</a>
						<a class="dropdown-item" href="#">
							<img src="https://image.flaticon.com/icons/svg/3112/3112963.svg"   width="50" height="50">해외</a>
						 <a class="dropdown-item" href="#">
							<img src="https://image.flaticon.com/icons/svg/827/827055.svg"   width="50" height="50">테마</a>
					</div></li>
			</ul>
			<span class="navbar-text"> 
			<%
 				String userid = null;
 				if (session.getAttribute("userid") != null) {
 					userid = (String) session.getAttribute("userid");
 				}
 				if (userid == null) {
 			%> <a href="./login.jsp">로그인</a> <a href="./signup.jsp">회원 가입</a> <%
 				} else {
 			%> <%=userid %>님 반갑습니다. <a href="./signoutProcess.jsp">로그아웃</a>
				<%
					}
				%> 
			</span>
		</div>
	</nav>
</body>
</html>
