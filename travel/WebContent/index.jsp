<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="java.sql.*"%> 
<html>
<head>

<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
<title>여행가조</title>
</head>
<body>
	<%@ include file="description.jsp"%>
	<%@ include file="menu_bar.jsp"%>
	<%@ include file="contents_list.jsp"%>
	<a href="postslistview.jsp">게시판</a>
	
	<%
		String userid = null;
		if(session.getAttribute("userid")!=null){
			userid = (String)session.getAttribute("userid");
		}	
		if(userid == null){
	%>
	<a href="./login.jsp">로그인</a>
	<a href="./signup.jsp">회원 가입</a>
	<%
		}
		else{
	%>
	<a href="./writepost.jsp">게시글 작성</a>
	<a href="./signoutProcess.jsp">로그아웃</a>
	<%
		}
	%>
</body>
</html>