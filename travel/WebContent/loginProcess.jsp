<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ page import="DBhandle.DBcon_send_rec"%>
<%@ page import="java.io.*"%>
<%@ page import="java.io.PrintWriter" %>
<% request.setCharacterEncoding("utf-8"); %>

<jsp:useBean id="user" class="DBhandle.UserInfo" scope="page"/>
<jsp:setProperty name="user" property="userid"/>
<jsp:setProperty name="user" property="userpw"/>

<!DOCTYPE html>
<html>
<head>

</head>

<title>로그인 화면</title>

<body>
	<%
		DBcon_send_rec DBhandle = new DBcon_send_rec();
		int result = DBhandle.login(user.getuserid(), user.getuserpw());
		
		if(result == 1){
			PrintWriter script = response.getWriter();
			script.println("<script>");
			script.println("alert('로그인 성공!')");
			script.println("location.href = 'index.jsp'");
			script.println("</script>");
			
		}
		else if(result == 0){
			PrintWriter script = response.getWriter();
			script.println("<script>");
			script.println("alert('비밀번호가 틀립니다.')");
			script.println("history.back()");
			script.println("</script>");
		}
		else if(result == -1){
			PrintWriter script = response.getWriter();
			script.println("<script>");
			script.println("alert('존재하지 않는 아이디 입니다.')");
			script.println("history.back()");
			script.println("</script>");
		}
		else{
			PrintWriter script = response.getWriter();
			script.println("<script>");
			script.println("alert('DB오류가 발생했습니다.')");
			script.println("history.back()");
			script.println("</script>");
		}
		
		
	%>

</body>
</html>