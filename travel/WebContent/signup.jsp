<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>

<html>
<head></head>
<title>회원가입</title>
<body>
	<a href="./index.jsp">메인으로</a>
	
	<form action="./signupProcess.jsp" method="post">
		<h2>아이디 : </h2><input type="text" name="userid" required>
		<h2>비밀번호 : </h2><input type="text" name="userpw" required>
		<h2>닉네임 : </h2><input type="text" name="usernickname" required>
		<input type="submit" value="회원 가입 하기">
	</form>
</body>
</html>