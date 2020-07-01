<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>게시판_앨범형</title>

</head>
<style>
	.nav_var{
		display : flex;
		color : white;	
		justify-content : flex-start;
	}
	a{
		 text-decoration: none;
		 color : white;
	}
	.title{
		background: linear-gradient(to right,#EE57B4 , #5CD0EE);
  		-webkit-background-clip: text;
  		-webkit-text-fill-color: transparent;
	}
	.menu ul{
		display : flex;
		padding-left : 150px;
		
	}
	.menu li{
		list-style : none;
		padding : 8px 40px;
	}
	.login{
		padding-top : 24px;
		padding-left : 100px;
	}
	.logo h1{
		color : ff6347;
	}
	.menu{
		display : flex;
	}
	body{
		background-color : black;
	}

	h1{
		padding-left : 90px;
		color: white;
	}
	.photo ul{
		display : flex;
		padding-left: 90px;
	}
	.photo li{
		list-style : none;
		padding : 10px;
		
	}
	.photo img{
		width : 250px;
	}
	.caption{
		padding : 0;
	}
</style>
<body>
	<nav class = "nav_var">
		<div class = "logo">
			<h1>여행가조</h1>
		</div>
		<div class = "menu">
			<ul>
				<li>
					<a href="./description.jsp">Home</a>
				</li>
				<li><a href=".index.jsp">Menu</a></li>
				<li><a href="./write.jsp">Record</a></li>
			</ul>
		</div>
		<div class = "login">
			<a href ="./login.jsp">login</a>
		</div>
	</nav>
	<div>
		<h1 class = "title">Travel photography</h1>
	</div>
	<div class = "photo">
		<ul>
			<li>
				<a href = "">
					<img src = "c.png" >
					<p class = "caption">cation...</p>
				</a>
			</li>
			<li>
				<a href = "">
					<img src = "c.png" >
					<p class = "caption">cation...</p>
				</a>
			</li>
			<li>
				<a href = "">
					<img src = "c.png" >
					<p class = "caption">cation...</p>
				</a>
			</li>
		</ul>
		<ul>
			<li>
				<a href = "">
					<img src = "c.png" >
					<p class = "caption">cation...</p>
				</a>
			</li>
			<li>
				<a href = "">
					<img src = "c.png" >
					<p class = "caption">cation...</p>
				</a>
			</li>
			<li>
				<a href = "">
					<img src = "c.png" >
					<p class = "caption">cation...</p>
				</a>
			</li>
		</ul>
	
	</div>

</body>
</html>