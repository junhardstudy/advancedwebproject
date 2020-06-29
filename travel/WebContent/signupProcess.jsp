<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ page import="DBhandle.DBcon_send_rec"%>
<%@ page import="java.io.*"%>
<%@ page import="java.io.PrintWriter" %>
<% request.setCharacterEncoding("utf-8"); %>

<jsp:useBean id="user" class="DBhandle.UserInfo" scope="page"/>
<jsp:setProperty name="user" property="userid"/>
<jsp:setProperty name="user" property="userpw"/>
<jsp:setProperty name="user" property="usernickname"/>

<!DOCTYPE html>
<html>
<head>

</head>

<title>로그인 화면</title>
<body>
	<%
	
		if((user.getuserid() == null) ||(user.getuserpw() == null) || (user.getusernickname() == null)){
			PrintWriter script = response.getWriter();
			script.println("<script>");
			script.println("alert('입력이 안 된 사항이 있습니다.')");
			script.println("history.back()");
			script.println("</script>");
		//front 에서도 막게 추가해야함
		}
		else{
			DBcon_send_rec DBhandle = new DBcon_send_rec();
			int result = DBhandle.signup(user);
			
			if(result == -1){
				PrintWriter script = response.getWriter();
				script.println("<script>");
				script.println("alert('이미 존재하는 아이디 입니다.')");
				script.println("history.back()");
				script.println("</script>");
			}
			else{
				PrintWriter script = response.getWriter();
				script.println("<script>");
				script.println("location.href = 'index.jsp'");
				script.println("</script>");

			}
		}
		
	%>
</body>
</html>