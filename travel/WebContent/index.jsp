<%@ page contentType="text/html; charset=utf-8"%>
<html>
<head>
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js" integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI" crossorigin="anonymous"></script>
<title>여행가조</title>
</head>
<body>
	<%@ include file="menu_bar.jsp" %>
	<%@ include file="contents_list.jsp" %>
	<a href="postslistview.jsp">게시판</a>
	

	<%
		
	if (session.getAttribute("userid") != null) {
		userid = (String) session.getAttribute("userid");
	}
	if (userid == null) {
	%>
	<a href="./login.jsp">로그인</a>
	<a href="./signup.jsp">회원 가입</a>
	<%
		} else {
	%>
	<a href="./writepost.jsp">게시글 작성</a>
	<a href="./signoutProcess.jsp">로그아웃</a>
	<%
		}
	%>
	
</body>
</html>