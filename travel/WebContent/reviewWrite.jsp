<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="java.sql.*"%> 
<html>
<head>

<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
<title>리뷰 작성</title>
</head>
<body>
	<%
		String userid = request.getParameter("userid");
		String postid = request.getParameter("postid");
	%>
	<h1>리뷰 작성하기</h1>
	<form action="reviewWriteProcess.jsp" method="post">
		<h2>내용 : </h2><input type="text" name="reviewcontents" placeholder="내용" required/>
		<input type="text" name="reviewscore" placeholder="점수 숫자로" required/>
		<input type="hidden" name="userid" value="<%= userid%>"/>
		<input type="hidden" name="postid" value="<%= postid%>"/>		
		<input type="submit" value="리뷰 작성"/>
	</form>
</body>
</html>