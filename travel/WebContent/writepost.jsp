<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="java.sql.*"%> 
<html>
<head>

<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
<title>게시글 작성</title>
</head>
<body>
	<form action="wirtepostProcess.jsp" method="post">
		<input type="text" name="posttitle" placeholder="제목" required/>
		<input type="text" name="postcontents" placeholder="내용" required/>
		
		<input type="submit" value="글 작성"/>
	</form>
</body>
</html>